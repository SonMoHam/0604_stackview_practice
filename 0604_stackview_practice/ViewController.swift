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
            DispatchQueue.main.async { [weak self] in
                guard let self = self else { return }
                self.phoneNumberLabel.text = self.phoneNumberString
            }
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for btnItem in phoneNumberBtns {
            btnItem.addTarget(self, action: #selector(onNumberBtnClicked(sender:)), for: .touchUpInside)
        }
        
        phoneCallBtn.addTarget(self, action: #selector(onPhoneCallBtnClicked(_:)), for: .touchUpInside)
    }

    @objc fileprivate func onNumberBtnClicked(sender: UIButton){
        guard let inputString = sender.titleLabel?.text else { return }
        phoneNumberString.append(inputString)
    }

    @objc fileprivate func onPhoneCallBtnClicked(_ sender: UIButton) {
        phoneNumberString.removeAll()
    }
}

