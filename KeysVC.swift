//
//  KeysVC.swift
//  save Keys
//
//  Created by MacBook Pro on 18/05/2020.
//  Copyright © 2020 taifdev. All rights reserved.
//

import UIKit
import FirebaseDatabase
class KeysVC: UIViewController {
    var keysArray = [keysModell]()
    @IBOutlet weak var tableViewOutLet: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOutLet.dataSource = self
      
        ObserveKeys()
        
    }
    
        
    @objc func ObserveKeys () {
        API.key.key_Ref.queryOrdered(byChild: "Keys").observeSingleEvent(of: .value) { (snapshot) in
            if let dic = snapshot.value as? [String : AnyObject] {
                print(dic)
                for child in dic {
                    print(child)
                    if   let id = child.value as? NSArray {
                        print("sss\(id)") // not print result
                       // keysArray.append(id) // can't append to NSArray

                    }
                    
                }
            }
        }
        
    }

}

extension KeysVC : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return keysArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! keysCell
        let cellInfo = keysArray[indexPath.row]
        cell.key = cellInfo
        
        return cell
        
    }
    
    
}
