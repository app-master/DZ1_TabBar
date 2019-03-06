//
//  FirstJobViewController.swift
//  DZ1_TabBar
//
//  Created by user on 05/03/2019.
//  Copyright © 2019 Sergey Koshlakov. All rights reserved.
//

import UIKit

class FirstJobViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    @IBAction func actionSetColor(_ sender: UIButton) {
        
      let color = self.randomColor()
        
        tabBarController?.viewControllers?.forEach({ (vc) in
            DispatchQueue.main.async {
                vc.view.backgroundColor = color
            }
        })
    }

    func randomColor() -> UIColor {
        
        let red = CGFloat(arc4random()) / CGFloat(UInt32.max)
        let green = CGFloat(arc4random()) / CGFloat(UInt32.max)
        let blue = CGFloat(arc4random()) / CGFloat(UInt32.max)
        
        return UIColor.init(red: red, green: green, blue: blue, alpha: 1)
        
    }
    
}
