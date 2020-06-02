//
//  FirsrViewController.swift
//  Life Cycle and Passing Data
//
//  Created by Mohamed Adel on 6/1/20.
//  Copyright © 2020 Mohamed Adel. All rights reserved.
//

import UIKit

class FirsrViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func InstancePropertyBtnPressed(_ sender: UIButton) {
        presentSecondViewController()
    }
    //1. Pass data using instance properties Forward
       func presentSecondViewController() {
           let storyboard = UIStoryboard(name: "PassData", bundle: nil)
           let viewController = storyboard.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        viewController.instancePropertyLabeltext = "Mohamed Adel"
          
    self.navigationController?.pushViewController(viewController, animated: true)
       }

    @IBAction func segueBtnPressed(_ sender: UIButton) {
        //performSegue(withIdentifier: "SecondViewController", sender: nil)
    }
    //2. Pass data using segues
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Way 1 With Segue Identifier Forward
//        if segue.identifier == "SecondViewController" {
//            let SecondViewController = segue.destination as! SecondViewController
//            SecondViewController.segueLabeltext = "Segue label is set from Firstvc"
//        }
        // Way 2 Without Segue Identifier Forward
//        if let vc = segue.destination as? SecondViewController {
//            vc.segueLabeltext = "Segue label is set from vcFrist"
//        }
        //Passing data using delegates Backword
         if let vc = segue.destination as? SecondViewController {
                   vc.pizzaDelegate = self // Step 5D
                   vc.backgroundDelegate = self
        }
        
   }
}

extension FirsrViewController: PizzaDelegate, BackgroundDelegate {
     // Step 2D
    func onPizzaReady(type: String) {
        print("My type is \(type)")
    }
    func setBackground(color: UIColor) {
           self.view.backgroundColor = color
       }
}
   // step 1D
protocol PizzaDelegate: class {
    func onPizzaReady(type: String)
}
