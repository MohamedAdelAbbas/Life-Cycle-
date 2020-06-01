//
//  OneViewController.swift
//  Life Cycle and Passing Data
//
//  Created by Mohamed Adel on 6/1/20.
//  Copyright © 2020 Mohamed Adel. All rights reserved.
//

import UIKit

class OneViewController: UIViewController {

    @IBOutlet weak var oneLabel: UILabel!
    @IBOutlet weak var oneTextField: UITextField!
    @IBOutlet weak var oneBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        oneBtn.setTitle("WELCOME", for: .normal)
        oneBtn.backgroundColor = UIColor.blue
        
        
    }
    


    @IBAction func oneBtnPressed(_ sender: Any) {
        
    }
    

}
