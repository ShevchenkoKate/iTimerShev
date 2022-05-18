//
//  TableViewCell.swift
//  iTimerShevchenko
//
//  Created by Student on 23.03.2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var table: UITableViewCell!
    @IBOutlet weak var timer: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
