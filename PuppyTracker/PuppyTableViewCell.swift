//
//  PuppyTableViewCell.swift
//  PuppyTracker
//
//  Created by Michael Neas on 9/26/19.
//  Copyright © 2019 Michael Neas. All rights reserved.
//

import UIKit

class PuppyTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var pupperImageView: UIImageView!
    @IBOutlet weak var pupperRatingControl: RatingControl!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
