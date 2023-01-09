//
//  MainFeedVM.swift
//  MultipleCell
//
//  Created by Khalil Mhelheli on 2/12/2022.
//

import Foundation
import UIKit
class MainFeedVM {
    
   
    
    func openAccount(_ self: UIViewController) {
        let storyboard = UIStoryboard(name: "Account", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "AccountVC") as! AccountVC
        vc.selectedAccount = Manager.shared.seletedAccout
        self.present(vc, animated: true)
    }
}

//class MainFeedVM {
//
//    weak var delegate: VCProtocol!
//
//    func openAccount(_ self: UIViewController) {
//        let storyboard = UIStoryboard(name: "Account", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: "AccountVC") as! AccountVC
//        vc.selectedAccount = Manager.shared.selectedAccount
//        vc.delegate = self as? MainFeedVC
//        self.present(vc, animated: true)
//    }
//
//}
