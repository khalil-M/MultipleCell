//
//  Manager.swift
//  MultipleCell
//
//  Created by Khalil Mhelheli on 2/12/2022.
//

import Foundation

class Manager {
    static let shared  = Manager()
    
    // Acounts
    /// This is list of account which every user will have , that means we will always use other ID when we call API
    var accounts = [Account]()
    var seletedAccout: Account? {
        didSet {
            ///Reload on every secreen which we have or to use or delegate?
            NotificationCenter.default.post(name: .accountSelected, object: nil)
        }
    }
    
    // Banner used in app
    var banners = [BannerModel]()
    
    private init() { }
    
    func onStar() {
        // Load on opening screen
        self.accounts = dummyAccounts
        
        // Load banners
        self.banners = [dummyBanner1, dummyBanner2, dummyBanner3]
        
        // Get from Database or something
        self.seletedAccout = self.accounts.first
    }
    
}


extension Notification.Name {
    static let accountSelected = Notification.Name("accountSelected")
}
