//
//  AppDelegate.swift
//  sample-app-macos-swift
//
//  Created by Akvelon on 9/6/17.
//  Copyright © 2017 Microsoft. All rights reserved.
//

import Cocoa
import MobileCenter
import MobileCenterAnalytics
import MobileCenterCrashes
import MobileCenterPush

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



  func applicationDidFinishLaunching(_ aNotification: Notification) {
    // Insert code here to initialize your application
    MSMobileCenter.start("<APP SECRET HERE>", withServices: [
      MSAnalytics.self,
      MSCrashes.self,
      MSPush.self,
    ])
  }

  func applicationWillTerminate(_ aNotification: Notification) {
    // Insert code here to tear down your application
  }


}

