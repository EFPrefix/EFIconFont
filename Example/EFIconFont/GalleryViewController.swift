//
//  GalleryViewController.swift
//  EFIconFont_Example
//
//  Created by EyreFree on 2019/3/24.
//  Copyright © 2019年 CocoaPods. All rights reserved.
//

import UIKit
import EFIconFont

class GalleryViewController: BaseViewController {
    
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
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: UIBarButtonItem.SystemItem.search,
            target: self,
            action: #selector(gotoSearch)
        )
        setupControls()
    }
    
    func setupControls() {
        let textView = UITextView()
        if #available(iOS 11.0, *) {
            textView.contentInsetAdjustmentBehavior = .never
        }
        textView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: CGFloat.bottomSafeAreaHeight, right: 0)
        textView.contentOffset = CGPoint(x: 0, y: 0)
        textView.isEditable = false
        let content: NSMutableAttributedString = NSMutableAttributedString()
        for item in icons {
            if let attributedString = item.value.attributedString(size: 24) {
                content.append(attributedString)
            }
        }
        textView.attributedText = content
        textView.frame = CGRect(
            x: 0,
            y: CGFloat.statusAndNavigationHeight,
            width: CGFloat.screenWidth,
            height: CGFloat.screenHeight - CGFloat.statusAndNavigationHeight
        )
        self.view.addSubview(textView)
    }
    
    @objc func gotoSearch() {
        let searchViewController: SearchViewController = SearchViewController(iconfonts: [(name, iconfont)])
        self.navigationController?.pushViewController(searchViewController, animated: true)
    }
}
