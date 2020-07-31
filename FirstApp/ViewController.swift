//
//  ViewController.swift
//  FirstApp
//
//  Created by Eldar on 23.07.2020.
//  Copyright © 2020 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var editTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loa∫ding the view.
        self.editTextField.delegate = self
        let hideTapGesture = UITapGestureRecognizer(target: self, action: #selector(actionHideKeyBoard(_:)))
        view.addGestureRecognizer(hideTapGesture)
    }
    
    
    @objc private func actionHideKeyBoard(_ gesture: UIGestureRecognizer) {
        view.endEditing(true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToMain" {
            print("Go to main")
            let controller = segue.destination as! MainPageViewController
            controller.text = editTextField.text
            
            let userDefaults = UserDefaults.standard
            userDefaults.set(editTextField.text, forKey: "RegInfo")
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.resignFirstResponder()
    }
}

