//
//  SearchViewController.swift
//  EFIconFont_Example
//
//  Created by EyreFree on 2019/9/5.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import EFIconFont

class SearchViewController: BaseViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {

    let tableView: UITableView = UITableView()
    let searchInput: UITextField = UITextField()

    let iconfonts: [(name: String, font: IconFont)]
    var results: [(`enum`: String, key: String, value: EFIconFontProtocol)] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    lazy var sourcs: [(`enum`: String, key: String, value: EFIconFontProtocol)] = {
        var source: [(String, String, EFIconFontProtocol)] = []
        for iconfont in iconfonts {
            for item in iconfont.font.dictionary {
                source.append((iconfont.font.enum, item.key, item.value))
            }
        }
        return source
    }()
    var isActive: Bool {
        return searchInput.text?.isEmpty == false
    }

    init(iconfonts: [(name: String, font: IconFont)]) {
        self.iconfonts = iconfonts
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Search"
        self.view.backgroundColor = UIColor.white

        setupControls()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        UIApplication.shared.keyWindow?.endEditing(true)
    }

    func setupControls() {
        let searchView: UIView = UIView()
        searchView.backgroundColor = UIColor.lightGray
        searchView.frame = CGRect(x: 0, y: CGFloat.statusAndNavigationHeight, width: CGFloat.screenWidth, height: 54)
        self.view.addSubview(searchView)

        let margin: CGFloat = 8
        searchInput.frame = CGRect(x: margin, y: margin, width: CGFloat.screenWidth - 2 * margin, height: searchView.frame.height - 2 * margin)
        searchInput.delegate = self
        searchInput.returnKeyType = .done
        searchInput.layer.cornerRadius = 8
        searchInput.backgroundColor = UIColor.white
        searchInput.placeholder = (iconfonts.count == 1) ? "Search in \(iconfonts.first?.name ?? "Unknown")" : "Search in all iconfonts"
        searchInput.addTarget(self, action: #selector(searchInputEditingChanged), for: UIControl.Event.editingChanged)
        searchView.addSubview(searchInput)

        let leftViewSize: CGFloat = searchInput.frame.height / 3 * 2
        let leftView: UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: searchInput.frame.height, height: leftViewSize))
        leftView.image = EFIconFont.antDesign.search.image(size: leftView.frame.size, foregroundColor: UIColor.gray, backgroundColor: nil)
        searchInput.leftView = leftView
        searchInput.leftViewMode = .always

        if #available(iOS 11.0, *) {
            tableView.contentInsetAdjustmentBehavior = .never
        }
        tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: CGFloat.bottomSafeAreaHeight, right: 0)
        tableView.contentOffset = CGPoint(x: 0, y: 0)
        tableView.estimatedRowHeight = 0
        tableView.estimatedSectionHeaderHeight = 0
        tableView.estimatedSectionFooterHeight = 0
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = CGRect(
            x: 0,
            y: searchView.frame.maxY,
            width: CGFloat.screenWidth,
            height: CGFloat.screenHeight - searchView.frame.maxY
        )
        self.view.addSubview(tableView)
    }

    // MARK:- UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == searchInput {
            textField.resignFirstResponder()
            return false
        }
        return true
    }

    @objc func searchInputEditingChanged() {
        guard let keyWord = searchInput.text?.lowercased(), keyWord.isEmpty == false else {
            tableView.reloadData()
            return
        }

        var results: [(String, String, EFIconFontProtocol)] = []
        for value in sourcs {
            if value.key.lowercased().contains(keyWord) {
                results.append(value)
            }
        }
        self.results = results
    }

    // MARK:- UITableView
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return isActive ? results.count : sourcs.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = isActive ? results : sourcs
        let reuseIdentifier: String = "subTitle"
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) ?? UITableViewCell(
            style: UITableViewCell.CellStyle.value1, reuseIdentifier: reuseIdentifier
        )
        cell.detailTextLabel?.font = data[indexPath.row].value.font(size: 24)
        cell.detailTextLabel?.text = data[indexPath.row].value.unicode

        var text: String = "\(data[indexPath.row].enum).\(data[indexPath.row].key)"
        if text.count > 35 {
            text = String(text.prefix(32))
            text += "..."
        }
        cell.textLabel?.text = text

        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        let data = isActive ? results : sourcs
        let item = data[indexPath.row]
        let detailViewController: DetailViewController = DetailViewController(title: "\(item.enum).\(item.key)", icon: item.value)
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }
}
