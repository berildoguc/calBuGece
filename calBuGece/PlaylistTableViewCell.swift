//
//  PlaylistTableViewCell.swift
//  calBuGece
//
//  Created by Beril Doğuç on 26.05.2020.
//  Copyright © 2020 Beril Doğuç. All rights reserved.
//

import UIKit
import M13Checkbox

class PlaylistTableViewCell: UITableViewCell {

    @IBOutlet weak var borderView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var playing: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        borderView.layer.masksToBounds = true
        borderView.layer.cornerRadius = 18
        borderView.layer.borderWidth = 2
        borderView.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
