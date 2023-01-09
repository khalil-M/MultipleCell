//
//  CellController.swift
//  MultipleCell
//
//  Created by Khalil Mhelheli on 2/1/2023.
//

import Foundation
import UIKit

import UIKit

protocol CellController {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
}

extension CellController {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {}
    
}

