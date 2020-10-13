//
//  CheckTableViewCell.swift
//  Todo
//
//  Created by Jill Vina on 2020-10-12.
//

import UIKit

class CheckTableViewCell: UITableViewCell {

 
    @IBOutlet weak var checkbox: Checkbox!
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func checked(_ sender: Checkbox) {
        updateChecked()
    }
    
    func set(title: String, checked: Bool) {
        label.text = title
        checkbox.checked = checked
        print(checkbox.checked)
        updateChecked()
    }
    
    private func updateChecked() {
        let attributedString = NSMutableAttributedString(string: self.label.text!)
    
        if checkbox.checked {
            attributedString.addAttribute(.strikethroughStyle, value: 2, range: NSMakeRange(0, attributedString.length))
            print("hello")
        } else {
          
            attributedString.removeAttribute(.strikethroughStyle, range: NSMakeRange(0, attributedString.length))
        }
        
        label.attributedText = attributedString
    }
}
