//
//  AlertViewController.swift
//  Life Cycle and Passing Data
//
//  Created by Mohamed Adel on 6/1/20.
//  Copyright © 2020 Mohamed Adel. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//    func showAlert() {
//        let alert = UIAlertController(title: "Session 2", message: "Welcome to session 2", preferredStyle: .alert)
//        self.present(alert, animated: true, completion: nil)
//    }
//
//    func showAlertWithActions() {
//        let alert = UIAlertController(title: "Session 2", message: "Are you sure you want to be an iOS engineer?", preferredStyle: .alert)
//        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
//        let deleteAction = UIAlertAction(title: "Delete", style: .destructive, handler: { _ in print("Delete")
//        })
//        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive, handler: { _ in print("cancel")
//        })
//        alert.addAction(okAction)
//        alert.addAction(deleteAction)
//        alert.addAction(cancelAction)
//        self.present(alert, animated: true, completion: nil)
//    }
//
//    func showAlertWithActionSheet() {
//        let alert = UIAlertController(title: "Session 2", message: "Are you sure you want to delete this?", preferredStyle: .actionSheet)
//        let deleteAction = UIAlertAction(title: "Delete", style: .destructive, handler: { _ in print("Delete")})
//        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in print("cancel")})
//        alert.addAction(cancelAction)
//        alert.addAction(deleteAction)
//        self.present(alert, animated: true, completion: nil)
//    }
//
    func showAlertWithTextField() {
        let alert = UIAlertController(title: "Name Field", message: "Please enter your name", preferredStyle: .alert)
        let doneAction = UIAlertAction(title: "Done", style: .default, handler: { _ in
            let username = alert.textFields?[0].text
            print("The username is... \(username ?? "--")")
        })
        alert.addAction(doneAction)
        alert.addTextField(configurationHandler: { textField in
            textField.placeholder = "Enter your name"
        })
        self.present(alert, animated: true, completion: nil)
    }

    @IBAction func presentAlertPressed(_ sender: Any) {
        showAlertWithTextField()
    }
}
