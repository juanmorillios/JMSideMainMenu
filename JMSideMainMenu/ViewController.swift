//
//  ViewController.swift
//  JMSideMainMenu
//
//  Created by Juan Morillo on 20/5/17.
//  Copyright © 2017 Juan Morillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  //IBOulets
  @IBOutlet var leftContraings: NSLayoutConstraint!
  
  @IBOutlet var leftMainMenu: UIView!
  //vars
  var mainMenuActive = false

  override func viewDidLoad() {
    super.viewDidLoad()
   
    //Properties of Views
    leftMainMenu.layer.shadowOpacity = 1
    leftMainMenu.layer.shadowRadius = 6

  }
  
  //Actions
  @IBAction func openMainMenu(_ sender: UIBarButtonItem) {
    if (mainMenuActive) {
    
      leftContraings.constant = -187
    
    } else {
    
      leftContraings.constant = 0
      UIView.animate(withDuration: 0.3, animations: {
      
        self.view.layoutIfNeeded()
      
      })
      
      mainMenuActive = !mainMenuActive
    
    }
    
  }

 }

