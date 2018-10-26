//
//  OrangeViewController.swift
//  Slide Menu
//
//  Created by Hiếu Nguyễn on 8/8/18.
//  Copyright © 2018 Hiếu Nguyễn. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {
    @IBOutlet weak var trailingC: NSLayoutConstraint!
    @IBOutlet weak var leadingC: NSLayoutConstraint!
    @IBOutlet weak var blueView: UIView!
    
    var isSlideMenuOpen: Bool = false
      
    
    @IBAction func buttonMenu(_ sender: UIBarButtonItem) {
        if !isSlideMenuOpen {
            isSlideMenuOpen = true
             leadingC.constant = (2 * self.view.bounds.width) / 3
            
        } else {
            isSlideMenuOpen = false
            leadingC.constant = 0
        }
        UIView.animate(withDuration: 1) {
            self.view.layoutIfNeeded()
        }
        UIView.commitAnimations()
    }
    
    @IBAction func btnMenu(_ sender: UIButton) {
        isSlideMenuOpen = false
        leadingC.constant = 0
        UIView.animate(withDuration: 1) {
            self.view.layoutIfNeeded()
        }
        UIView.commitAnimations()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
