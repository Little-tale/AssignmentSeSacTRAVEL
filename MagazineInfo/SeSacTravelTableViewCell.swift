//
//  SeSacTravelTableViewCell.swift
//  MagazineInfo
//
//  Created by Jae hyung Kim on 1/8/24.
//

import UIKit

class SeSacTravelTableViewCell: UITableViewCell {
    @IBOutlet var infoImageView: UIImageView!
    @IBOutlet var infoMainLabel: UILabel!
    @IBOutlet var infoSubLabel: UILabel!
    @IBOutlet var infoDateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
