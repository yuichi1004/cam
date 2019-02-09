//
//  AppDelegate.swift
//  Cam
//
//  Created by Yuichi Murata on 2019/02/09.
//  Copyright © 2019 Yuichi Murata. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    let statusItem = NSStatusBar.system.statusItem(withLength:NSStatusItem.squareLength)
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        if let button = statusItem.button {
            button.image = NSImage(named: NSImage.Name("StatusBarButtonImage"))
        }
        let menu = NSMenu()
        menu.addItem(NSMenuItem(title: "Quit Cam", action: #selector(NSApplication.terminate(_:)), keyEquivalent:"Q"))
        statusItem.menu = menu
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

