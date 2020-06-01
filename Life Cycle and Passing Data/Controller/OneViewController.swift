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
    @IBOutlet weak var secondView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        oneTextField.delegate = self
//      sessionLabel.text = "Welcome to session one"
        oneBtn.setTitle("Next", for: .normal)
        oneBtn.backgroundColor = UIColor.red
        oneBtn.backgroundColor = UIColor.init(red: 25/255, green: 245/255, blue: 250/255, alpha: 1)
    }
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }


    @IBAction func oneBtnPressed(_ sender: Any) {
        self.view.backgroundColor = .red
        secondView.backgroundColor = .purple
       //   show(story: "Main", VC: SecondViewController.self)

        //  guard let SecondViewController = storyboard?.instantiateViewController(identifier: "SecondViewController")else{return}
        //        presentDetail(SecondViewController)
        //
                let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
                let vc = storyboard.instantiateViewController(identifier: "SecondViewController")
        //      vc.modalPresentationStyle = .fullScreen
        //      self.present(vc, animated: true, completion: nil)
          self.navigationController?.pushViewController(vc, animated: true)
        
        
    }
    

}
extension OneViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("Text in textfield", textField.text!)
        oneLabel.text = textField.text
        return true
    }
    
}
