//
//  FeedVM.swift
//  MultipleCell
//
//  Created by Khalil Mhelheli on 3/1/2023.
//

import Foundation
import UIKit

class FeedVM {
    
    var completion: (([CellController]) -> Void)?
    
    func getData(self: UIViewController) {
        var cells: [CellController] = []
        let bannerCellController = BannerCellController(model: dummyBanner1, delegate: self as! FeedVc)
        cells.append(bannerCellController)
        completion?(cells)
    }
}
