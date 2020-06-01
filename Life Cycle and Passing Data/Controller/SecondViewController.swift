//
//  SecondViewController.swift
//  Life Cycle and Passing Data
//
//  Created by Mohamed Adel on 6/1/20.
//  Copyright © 2020 Mohamed Adel. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var instancePropertyLabel: UILabel!
    @IBOutlet weak var segueLabel: UILabel!
    
    var instancePropertyLabeltext: String?
    var segueLabeltext: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        instancePropertyLabel.text = instancePropertyLabeltext
        segueLabel.text = segueLabeltext
    }
    

    @IBAction func fristBtnPressed(_ sender: UIButton) {
    }
    
    @IBAction func secondBtnPressed(_ sender: UIButton) {
    }
    
}
