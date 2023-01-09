//
//  AccountCell.swift
//  MultipleCell
//
//  Created by Khalil Mhelheli on 2/12/2022.
//

import UIKit

class AccountCell: UITableViewCell {
    
    static let cellIdentifier: String = "AccountCell"
    
    @IBOutlet weak var checkImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(title: String?, _ selected: Bool) {
        checkImage.isHidden = !selected
        titleLabel.textColor = selected ? .systemBlue : .systemGray
        titleLabel.text = title
    }
    
}

