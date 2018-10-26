//
//  MainViewController.swift
//  Slide Menu
//
//  Created by Hiếu Nguyễn on 8/7/18.
//  Copyright © 2018 Hiếu Nguyễn. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var TrailingC: NSLayoutConstraint!
    @IBOutlet weak var LeadingC: NSLayoutConstraint!
    @IBOutlet weak var upView: UIView!
    
    var colorMenuIsOpen: Bool = false
    
    @IBAction func buttonMenu(_ sender: UIBarButtonItem) {
        
        if !colorMenuIsOpen {
            colorMenuIsOpen = true
            LeadingC.constant = 200
            
        } else {
            colorMenuIsOpen = false
            LeadingC.constant = 0
            //TrailingC.constant = 0
        }
        UIView.animate(withDuration: 1, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
        UIView.commitAnimations()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
