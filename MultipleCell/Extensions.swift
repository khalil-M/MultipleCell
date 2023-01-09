//
//  Extensions.swift
//  MultipleCell
//
//  Created by Khalil Mhelheli on 2/12/2022.
//

import Foundation
import UIKit

extension UIView {
    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
    class func fromNib<T: UIView>() -> T! {
        return Bundle.main.loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as? T
    }
}
