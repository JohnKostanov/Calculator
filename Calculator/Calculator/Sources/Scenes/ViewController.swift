//
//  ViewController.swift
//  Calculator
//
//  Created by Джон Костанов on 18/4/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var buttons: [UIButton]!
    
    func addCornerRadius(buttons: [UIButton]) {
        for button in buttons {
            button.layer.cornerRadius = 35
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        addCornerRadius(buttons: buttons)
    }


}

