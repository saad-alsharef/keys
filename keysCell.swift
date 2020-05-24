//
//  keysCell.swift
//  save Keys
//
//  Created by MacBook Pro on 19/05/2020.
//  Copyright © 2020 taifdev. All rights reserved.
//

import UIKit

class keysCell: UITableViewCell {

    @IBOutlet weak var cellOutLet: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    var key : keysModell? {
        didSet {
            upDateKeyView ()
        }
    }
    
    @objc func upDateKeyView () {
        if let keyString = key?.keyIdString {
            cellOutLet.text = keyString
        }
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
