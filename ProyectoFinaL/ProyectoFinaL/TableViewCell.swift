//
//  TableViewCell.swift
//  ProyectoFinaL
//
//  Created by LUIS on 18/01/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    // imagen y nombre del productos
    @IBOutlet weak var ima: UIImageView!
    @IBOutlet weak var labe: UILabel!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
