//
//  FirsrViewController.swift
//  Life Cycle and Passing Data
//
//  Created by Mohamed Adel on 6/1/20.
//  Copyright © 2020 Mohamed Adel. All rights reserved.
//

import UIKit

class FirsrViewController: UIViewController {

    static let notificationName = Notification.Name("Mohamed Adel")
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(onNotification(notification:)), name: FirsrViewController.notificationName, object: nil)
    }
    
    @objc func onNotification(notification: Notification) {
        print("My Name is: ", notification.userInfo?["myName"] as? String ?? "Not Exsist")
    }
//    /*Removing the removing the notificaiton observer*/
//    override func viewWillDisappear(_ animated: Bool) {
//        NotificationCenter.default.removeObserver(self, name: FirsrViewController.notificationName, object: nil)
//    }
//
//    deinit {
//    }

    @IBAction func InstancePropertyBtnPressed(_ sender: UIButton) {
        presentSecondViewController()
    }
    //1. Pass data using instance properties Forward
       func presentSecondViewController() {
           let storyboard = UIStoryboard(name: "PassData", bundle: nil)
           let viewController = storyboard.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        viewController.instancePropertyLabeltext = "Mohamed Adel"
        viewController.backgroundDelegate = self
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
//        //Passing data using delegates Backword
//         if let vc = segue.destination as? SecondViewController {
//                   vc.pizzaDelegate = self // Step 5D
//                   vc.backgroundDelegate = self
//        }
        //Passing data using Closure Backword
        if let vc = segue.destination as? SecondViewController {
            // implemetation of body function
            vc.countString = { text in
                // self.replacingDelegates(type: text)
                return text.count
            }
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

protocol BackgroundDelegate: class {
    func setBackground(color: UIColor)
}
