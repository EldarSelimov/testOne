//
//  MainPageViewController.swift
//  FirstApp
//
//  Created by Eldar on 24.07.2020.
//  Copyright © 2020 test. All rights reserved.
//

import UIKit

class MainPageViewController: UIViewController {
    @IBOutlet weak var editLabel: UILabel!
    
    var text: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        editLabel.text =  text
        editLabel.textColor = UIColor.green
        self.setupLabelTap ()
        
    }
    
    
    
    @objc func labelTapped (_ sender: UITapGestureRecognizer) {
        print ("labelTapped")
        let alert = UIAlertController(title:"Закрыть", message: "Hi \(editLabel.text ?? "")", preferredStyle: .actionSheet)
        let action = UIAlertAction(title: "OK", style: .default) { (action) in
            print("Eldar")      }
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
      
    }
    
    func setupLabelTap () {
        
        let labelTap = UITapGestureRecognizer (target: self, action: #selector (self.labelTapped (_ :)))
        self.editLabel.isUserInteractionEnabled = true
        self.editLabel.addGestureRecognizer (labelTap)
       
        
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
}
    
