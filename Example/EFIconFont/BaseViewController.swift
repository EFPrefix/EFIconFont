//
//  BaseViewController.swift
//  EFIconFont_Example
//
//  Created by EyreFree on 2019/9/5.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        automaticallyAdjustsScrollViewInsets = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        removeBackBarButtonTitle()
    }
    
    func removeBackBarButtonTitle() {
        let returnButtonItem = UIBarButtonItem()
        returnButtonItem.title = ""
        self.navigationItem.backBarButtonItem = returnButtonItem
    }
}
