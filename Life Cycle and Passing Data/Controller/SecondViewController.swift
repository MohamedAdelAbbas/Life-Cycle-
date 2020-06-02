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
    
    //Passing data using closures
    var countString: ((String) -> Int)?
    
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
        //Passing data using closures
//        let result = countString?("Deliver pizza") ?? 0
//        print("completionHandler returns... ", result)
        //Passing data using notification center 
        NotificationCenter.default.post(name: Notification.Name("Mohamed Adel"), object: nil, userInfo: ["myName": "Mohamed Adel", "isImportant": true, "name": "Ahly"])
        
    }
    
    @IBAction func secondBtnPressed(_ sender: UIButton) {
        self.view.backgroundColor = .cyan
        backgroundDelegate?.setBackground(color: .cyan)
    }
    
}



