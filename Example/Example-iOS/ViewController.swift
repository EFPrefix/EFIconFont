//
//  ViewController.swift
//  EFIconFont
//
//  Created by EyreFree on 03/19/2019.
//  Copyright (c) 2019 EyreFree. All rights reserved.
//

import UIKit
import EFIconFont

struct IconFont {
    
    let `enum`: String
    let dictionary: [String : EFIconFontProtocol]
    
    init<T: EFIconFontCaseIterableProtocol>(_ iconFont: T.Type) {
        `enum` = "\(iconFont)"
        dictionary = iconFont.dictionary
    }
}

class ViewController: BaseViewController, UITableViewDataSource, UITableViewDelegate {
    
    let iconfonts: [(name: String, font: IconFont)] = [
        ("AntChain", IconFont(EFIconFont.antChain)),
        ("AntDesign", IconFont(EFIconFont.antDesign)),
        ("Dashicons", IconFont(EFIconFont.dashicons)),
        ("Devicons", IconFont(EFIconFont.devicons)),
        ("ElusiveIcons", IconFont(EFIconFont.elusiveIcons)),
        ("EVAIcon", IconFont(EFIconFont.evaIcon)),
        ("EvilIcons", IconFont(EFIconFont.evilIcons)),
        ("FontAwesomeBrands", IconFont(EFIconFont.fontAwesomeBrands)),
        ("FontAwesomeRegular", IconFont(EFIconFont.fontAwesomeRegular)),
        ("FontAwesomeSolid", IconFont(EFIconFont.fontAwesomeSolid)),
        ("FoundationIcons", IconFont(EFIconFont.foundationIcons)),
        ("GenericonsNeue", IconFont(EFIconFont.genericonsNeue)),
        ("HawconsFilled", IconFont(EFIconFont.hawconsFilled)),
        ("HawconsStroke", IconFont(EFIconFont.hawconsStroke)),
        ("IcoMoon", IconFont(EFIconFont.icoMoon)),
        ("Ionicons", IconFont(EFIconFont.ionicons)),
        ("LigatureSymbols", IconFont(EFIconFont.ligatureSymbols)),
        ("MapIcons", IconFont(EFIconFont.mapIcons)),
        ("MaterialIconsFilled", IconFont(EFIconFont.materialIconsFilled)),
        ("MaterialIconsOutlined", IconFont(EFIconFont.materialIconsOutlined)),
        ("MaterialIconsRounded", IconFont(EFIconFont.materialIconsRounded)),
        ("MaterialIconsSharp", IconFont(EFIconFont.materialIconsSharp)),
        ("Meteocons", IconFont(EFIconFont.meteocons)),
        ("MetrizeIcons", IconFont(EFIconFont.metrizeIcons)),
        ("Octicons", IconFont(EFIconFont.octicons)),
        ("OpenIconic", IconFont(EFIconFont.openIconic)),
        ("StrawberryIcon", IconFont(EFIconFont.strawberryIcon)),
        ("Stroke7", IconFont(EFIconFont.stroke7)),
        ("TaoBao", IconFont(EFIconFont.taoBao)),
        ("ThemifyIcons", IconFont(EFIconFont.themifyIcons)),
        ("Tmall", IconFont(EFIconFont.tmall)),
        ("Typicons", IconFont(EFIconFont.typicons)),
        ("VSCodeIcons", IconFont(EFIconFont.vsCodeIcons)),
        ("WeatherIcons", IconFont(EFIconFont.weatherIcons)),
        ("Zocial", IconFont(EFIconFont.zocial))
    ]
    
    let tableView: UITableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        navigationItem.title = "EFIconFont"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: UIBarButtonItem.SystemItem.search,
            target: self,
            action: #selector(gotoSearch)
        )
        
        setupControls()
    }
    
    func setupControls() {
        if #available(iOS 11.0, tvOS 11.0, *) {
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
    
    @objc func gotoSearch() {
        let searchViewController: SearchViewController = SearchViewController(iconfonts: iconfonts)
        self.navigationController?.pushViewController(searchViewController, animated: true)
    }
    
    // MARK:- UITableView
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return iconfonts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reuseIdentifier: String = "Title"
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) ?? UITableViewCell(
            style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseIdentifier
        )
        cell.textLabel?.text = iconfonts[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let item = iconfonts[indexPath.row]
        let subViewController: SubViewController = SubViewController(name: item.name, iconfont: item.font)
        self.navigationController?.pushViewController(subViewController, animated: true)
    }
}
