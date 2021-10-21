//
//  GroupsListViewCell.swift
//  vk
//
//  Created by Mikhail Rumyantsev on 18.10.2021.
//

import UIKit

class GroupTableViewCell: UITableViewCell {
    @IBOutlet weak var groupNameLabel: UILabel!
    
    @IBOutlet weak var avatarImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
