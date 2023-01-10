//
//  TableViewCell.swift
//  OilApp
//
//  Created by Macbook Pro on 9.01.2023.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var companyImageView: UIImageView!
    @IBOutlet weak var companyName: UILabel!
    @IBOutlet weak var dizelPriceLabel: UILabel!
    @IBOutlet weak var katkiliPriceLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
