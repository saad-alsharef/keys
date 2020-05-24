//
//  ViewController.swift
//  save Keys
//
//  Created by MacBook Pro on 18/05/2020.
//  Copyright © 2020 taifdev. All rights reserved.
//

import UIKit
import Firebase
class ViewController: UIViewController {

    @IBOutlet weak var textFieldOutLet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }

    @objc func ss () {
        
    }
    @IBAction func sendBTN(_ sender: Any) {
        

        let keyString : String = textFieldOutLet.text!
        let keys = keyString.components(separatedBy: ",")
        
        let ref : DatabaseReference!
        ref = Database.database().reference()
        let postREF = ref.child("Keys")
        let newPostID = postREF.childByAutoId().key
        let newPostREF = postREF.child(newPostID!)
        newPostREF.setValue(keys)

  
    
}
}

