//
//  AppDelegate.swift
//  EFIconFont-macOS
//
//  Created by EyreFree on 2021/6/29.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    


    func applicationDidFinishLaunching(_ aNotification: Notification) {

    }

    func applicationWillTerminate(_ aNotification: Notification) {
        
    }
    
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }

    @IBAction func showHelp(_ sender: Any) {
        if let url = URL(string: "https://github.com/EFPrefix/EFIconFont") {
            NSWorkspace.shared.open(url)
        }
    }


}

