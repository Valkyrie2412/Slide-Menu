//
//  GreenViewController.swift
//  Slide Menu
//
//  Created by Hiếu Nguyễn on 8/7/18.
//  Copyright © 2018 Hiếu Nguyễn. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var blueView: UIView!
    
    var isViewMove: Bool = false
    
    
    @IBAction func buttonAction(_ sender: UIBarButtonItem) {
        
        if !isViewMove {
            isViewMove = true
            UIView.animate(withDuration: 0.3, animations: {
                self.blueView.frame.origin.y += 50
            }, completion: nil)
        } else {
            isViewMove = false
            UIView.animate(withDuration: 0.3, animations: {
                self.blueView.frame.origin.y -= 50
            }, completion: nil)
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
