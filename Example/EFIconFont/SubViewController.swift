//
//  SubViewController.swift
//  EFIconFont
//
//  Created by EyreFree on 03/19/2019.
//  Copyright (c) 2019 EyreFree. All rights reserved.
//

import UIKit
import EFIconFont

class SubViewController: BaseViewController, UITableViewDataSource, UITableViewDelegate {
    
    let tableView: UITableView = UITableView()
    let name: String
    let iconfont: IconFont
    let icons: [(key: String, value: EFIconFontProtocol)]
    
    init(name: String, iconfont: IconFont) {
        self.name = name
        self.iconfont = iconfont
        self.icons = Array(iconfont.dictionary).sorted(by: { (left, right) -> Bool in
            return left.key < right.key
        })
        super.init(nibName: nil, bundle: nil)
        navigationItem.title = iconfont.enum
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        setupControls()
    }
    
    func setupControls() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(
            image: EFIconFontFontAwesomeSolid.th.image(size: CGSize(width: 24, height: 24)),
            style: UIBarButtonItem.Style.plain,
            target: self,
            action: #selector(rightBarButtonClicked)
        )
        
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
            y: CGFloat.statusAndNavigationHeight,
            width: CGFloat.screenWidth,
            height: CGFloat.screenHeight - CGFloat.statusAndNavigationHeight
        )
        self.view.addSubview(tableView)
    }
    
    @objc func rightBarButtonClicked() {
        let galleryViewController: GalleryViewController = GalleryViewController(name: name, iconfont: iconfont)
        self.navigationController?.pushViewController(galleryViewController, animated: true)
    }
    
    // MARK:- UITableView
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return icons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reuseIdentifier: String = "subTitle"
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) ?? UITableViewCell(
            style: UITableViewCell.CellStyle.value1, reuseIdentifier: reuseIdentifier
        )
        cell.detailTextLabel?.font = icons[indexPath.row].value.font(size: 24)
        cell.textLabel?.text = ".\(icons[indexPath.row].key)"
        cell.detailTextLabel?.text = icons[indexPath.row].value.unicode
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let item = icons[indexPath.row]
        let detailViewController: DetailViewController = DetailViewController(title: "\(iconfont.enum).\(item.key)", icon: item.value)
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }
}
