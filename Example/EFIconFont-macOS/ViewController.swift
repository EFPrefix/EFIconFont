//
//  ViewController.swift
//  EFIconFont-macOS
//
//  Created by EyreFree on 2021/6/29.
//

import Cocoa
import SnapKit
import EFIconFont

class ViewController: NSViewController {

    let imageView = NSImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imageView.wantsLayer = true
        imageView.layer?.backgroundColor = NSColor.gray.withAlphaComponent(0.08).cgColor
        imageView.layer?.borderColor = NSColor.black.cgColor
        imageView.layer?.borderWidth = 1
        imageView.layer?.cornerRadius = 5
        imageView.imageAlignment = .alignCenter
        imageView.imageScaling = .scaleNone
        imageView.image = EFIconFont.antChain.二维码.image(size: 24)
        view.addSubview(imageView)
        imageView.snp.makeConstraints {
            (make) in
            make.top.equalTo(10)
            make.trailing.equalTo(-10)
            make.leading.equalTo(10)
            make.bottom.equalTo(-10)
        }
    }

    override func viewDidAppear() {
        super.viewDidAppear()

        view.window?.title = "EFIconFont"
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

