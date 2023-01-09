//
//  BannerCellController.swift
//  MultipleCell
//
//  Created by Khalil Mhelheli on 2/1/2023.
//

import Foundation
import UIKit

protocol BannerCellControllerCellProtocol: AnyObject {
    func didTapHide(indexPath: IndexPath)
}

class BannerCellController: CellController {
    
    private var model: BannerModel?
    weak private var delegate: BannerCellControllerCellProtocol?
    
    static func configure(tableView: UITableView) {
        tableView.register(BannerCell.nib, forCellReuseIdentifier: BannerCell.cellIdentifier)
    }
    
    init(model: BannerModel, delegate: BannerCellControllerCellProtocol?) {
        self.model = model
        self.delegate = delegate
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: BannerCell.cellIdentifier, for: indexPath) as! BannerCell
        cell.configCell(item: model, indexPath: indexPath)
        
        cell.didTaphide = { [weak self] _ in
            self?.delegate?.didTapHide(indexPath: indexPath)
        }
        
        return cell
    }
    
    
}
