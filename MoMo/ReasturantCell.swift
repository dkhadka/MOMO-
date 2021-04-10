//
//  ReasturantCell.swift
//  MoMo
//
//  Created by mt_high on 4/10/21.
//

import UIKit

class ReasturantCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var sd: UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(rest:Restaurant?){
        if let x = rest{
            self.sd.text = x.name
        }
    }

}
