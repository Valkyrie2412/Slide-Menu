//
//  ViewController.swift
//  Slide Menu
//
//  Created by Hiếu Nguyễn on 8/7/18.
//  Copyright © 2018 Hiếu Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var sideView: UIView!
    
    var isSideViewOpen: Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sideView.isHidden = true
        isSideViewOpen = false
        
    }
    
    @IBAction func buttonMenu(_ sender: UIBarButtonItem) {
        
        if !isSideViewOpen {
            sideView.isHidden = false
            isSideViewOpen = true
            sideView.frame = CGRect(x: 2, y: 64, width: 0, height: 537)
            UIView.animate(withDuration: 1, animations: {
                self.sideView.frame.size.width += 201
            }, completion: nil)
            UIView.commitAnimations()
            
        } else {
            sideView.isHidden = true
            isSideViewOpen = false
            sideView.frame = CGRect(x: 2, y: 64, width: 201, height: 537)
            UIView.animate(withDuration: 1, animations: {
                self.sideView.frame.size.width -= 201
            }, completion: nil)
            UIView.commitAnimations()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

