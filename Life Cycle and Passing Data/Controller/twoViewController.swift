//
//  SecondViewController.swift
//  Life Cycle and Passing Data
//
//  Created by Mohamed Adel on 6/1/20.
//  Copyright © 2020 Mohamed Adel. All rights reserved.
//

import UIKit

class twoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func donePressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
       // dismiss(animated: true, completion: nil)
    }
    
}
