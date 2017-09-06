//
//  PageViewController.swift
//  Mobile Center Sample
//
//  Created by Akvelon on 9/6/17.
//  Copyright © 2017 Microsoft. All rights reserved.
//

import Cocoa

class PageViewController: NSPageController, NSPageControllerDelegate {
  
  var services: [String] = [
    "welcomeViewController",
    "buildViewController",
    "testViewController",
    "distributeViewController",
    "crashViewController",
    "analyticsViewController",
    "pushViewController",
    ]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    delegate = self
    arrangedObjects = services;
  }
  
  func pageController(_ pageController: NSPageController,
                      identifierFor object: Any) -> String {
    return object as! String
  }
  
  func pageController(_ pageController: NSPageController,
                      viewControllerForIdentifier identifier: String) -> NSViewController {
    return storyboard?.instantiateController(withIdentifier: identifier) as! NSViewController
  }
}

