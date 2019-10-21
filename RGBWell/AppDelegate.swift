//
//  AppDelegate.swift
//  RGBWell
//
//  Created by Trang Mai on 10/21/19.
//  Copyright © 2019 Trang Mai. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var mainWindowController: MainWindowController?

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Create a window controller
        let mainWindowController = MainWindowController()
        
        // Put the window of the window controller on the screen
        mainWindowController.showWindow(self)
        
        // Set the property to point to the window controller
        self.mainWindowController = mainWindowController
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

