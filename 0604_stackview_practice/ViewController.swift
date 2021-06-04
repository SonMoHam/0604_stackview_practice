//
//  ViewController.swift
//  0604_stackview_practice
//
//  Created by 손대홍 on 2021/06/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    @IBOutlet var phoneNumberBtns: [CircleButton]!
    
    @IBOutlet weak var phoneCallBtn: CircleButton!
    
    var phoneNumberString = ""{
        didSet{
            self.phoneNumberLabel.text = phoneNumberString
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

