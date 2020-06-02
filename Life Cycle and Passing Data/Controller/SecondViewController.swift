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
    weak var pizzaDelegate: PizzaDelegate? // Step 3D
    weak var backgroundDelegate: BackgroundDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        instancePropertyLabel.text = instancePropertyLabeltext
        segueLabel.text = segueLabeltext
    }
    

    @IBAction func fristBtnPressed(_ sender: UIButton) {
        //Passing data using delegates
        pizzaDelegate?.onPizzaReady(type: "Margerita") //Step 4D
        /////////////////////////////////////////////////////////////////////////////////////////////////////
        self.view.backgroundColor = .yellow
         backgroundDelegate?.setBackground(color: .yellow)
    }
    
    @IBAction func secondBtnPressed(_ sender: UIButton) {
        self.view.backgroundColor = .cyan
         backgroundDelegate?.setBackground(color: .cyan)
    }
    
}


protocol BackgroundDelegate: class {
    func setBackground(color: UIColor)
}
