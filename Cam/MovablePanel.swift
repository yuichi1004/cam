//
//  MovablePanel.swift
//  Cam
//
//  Created by Yuichi Murata on 2019/02/10.
//  Copyright © 2019 Yuichi Murata. All rights reserved.
//

import Cocoa

class MoveablePanel: NSPanel {
    override init(contentRect: NSRect, styleMask style: NSWindow.StyleMask, backing backingStoreType: NSWindow.BackingStoreType, defer flag: Bool) {
        super.init(contentRect: contentRect, styleMask: [.nonactivatingPanel, .resizable], backing: .buffered, defer: true)
        
        self.aspectRatio = NSMakeSize(240.0,135.0)
        self.level = NSWindow.Level.mainMenu
        self.isMovableByWindowBackground = true
        self.collectionBehavior = [.canJoinAllSpaces, .fullScreenAuxiliary]
        self.isFloatingPanel = true
        self.orderFrontRegardless()
    }
}
