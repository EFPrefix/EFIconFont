//
//  DetailViewController.swift
//  EFIconFont_Example
//
//  Created by EyreFree on 2019/3/24.
//  Copyright © 2019年 CocoaPods. All rights reserved.
//

import UIKit
import EFIconFont

class DetailViewController: BaseViewController {
    
    let icon: EFIconFontProtocol
    let imageView: UIImageView = UIImageView()
    let textView: UITextView = UITextView()
    
    init(title: String, icon: EFIconFontProtocol) {
        self.icon = icon
        super.init(nibName: nil, bundle: nil)
        navigationItem.title = title
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: UIBarButtonItem.SystemItem.action,
            target: self,
            action: #selector(shareToSystem)
        )
        setupControls()
    }
    
    func setupControls() {
        imageView.frame = CGRect(
            x: 8,
            y: CGFloat.statusAndNavigationHeight + 8,
            width: CGFloat.screenWidth - 16,
            height: CGFloat.screenWidth - 16
        )
        imageView.image = icon.image(size: imageView.frame.size, foregroundColor: UIColor.black)
        imageView.contentMode = .scaleAspectFit
        self.view.addSubview(imageView)

        textView.layer.cornerRadius = 8
        textView.backgroundColor = UIColor(white: 0.888, alpha: 1)
        textView.frame = CGRect(
            x: 8,
            y: imageView.frame.maxY + 8,
            width: CGFloat.screenWidth - 16,
            height: CGFloat.screenHeight - imageView.frame.maxY - 16 - CGFloat.bottomSafeAreaHeight
        )
        textView.isEditable = false
        textView.font = UIFont.systemFont(ofSize: 18)
        self.view.addSubview(textView)

        var infoString: String = ""
        let info: [(key: String, value: String)] = [
            ("", navigationItem.title ?? "Unknown"),
            ("Unicode", "\(String(format:"0x%02X", icon.unicode.unicodeScalars.first?.value ?? 0))"),
            ("FontName", icon.name),
            ("FontFilePath", icon.path)
        ]

        for item in info {
            if item.key.isEmpty != false {
                infoString += item.value + "\n"
            } else {
                infoString += "\n" + item.key + ": " + item.value
            }
        }
        textView.text = infoString
    }

    @objc func shareToSystem() {
        guard let imageToShare = imageView.image else { return }
        let controller: UIViewController = self
        var items: [Any] = [imageToShare]
        if let info = textView.text {
            items.append(info)
        }
        let shareVC = UIActivityViewController(activityItems: items, applicationActivities: nil)
        shareVC.popoverPresentationController?.sourceView = controller.view
        shareVC.popoverPresentationController?.sourceRect = CGRect(
            x: controller.view.bounds.size.width / 2.0,
            y: controller.view.bounds.size.height / 2.0,
            width: 1.0, height: 1.0
        )
        controller.present(shareVC, animated: true) { [weak self] in
            guard let _ = self else { return }
        }
    }
}
