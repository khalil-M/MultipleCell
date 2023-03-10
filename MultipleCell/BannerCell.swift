//
//  BannerCell.swift
//  MultipleCell
//
//  Created by Khalil Mhelheli on 2/1/2023.
//

import UIKit

class BannerCell: UITableViewCell {
    
    static var cellIdentifier = "BannerCell"
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var monthLabel: UILabel!
    @IBOutlet weak var seeAllButton: UIButton!
    @IBOutlet weak var hideButton: UIButton!
   
    
    var indexPath: IndexPath?
    
    var didTaphide: ((IndexPath?) -> Void)?
    var didTapSeeAll: (() -> Void)?
    
    
    func configCell(item: BannerModel?, indexPath: IndexPath?) {
        guard let item else { return }
        self.indexPath = indexPath
        
        titleLabel.text = item.time
        subTitleLabel.text = item.description
        priceLabel.text = item.price
        monthLabel.text = "Monthly"
     
    }
    
    
    @IBAction func didTapAll(_ sender: UIButton) {
       didTapSeeAll?()
    }

    @IBAction func didTapHide(_ sender: Any) {
        guard let indexPath else { return }
        didTaphide?(indexPath)
    }
}
