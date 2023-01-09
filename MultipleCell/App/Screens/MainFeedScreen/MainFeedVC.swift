//
//  MainFeedVC.swift
//  MultipleCell
//
//  Created by Khalil Mhelheli on 2/12/2022.
//

import UIKit

class MainFeedVC: UIViewController {
    
    var mainFeedVM = MainFeedVM()
    var feedVC: FeedVc!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BannerCellController.configure(tableView: feedVC.tableView)
//        CardType1CellController.configure(tableView: feedVC.tableView)
//        CardType2CellController.configure(tableView: feedVC.tableView)
//        CardWidgetCellCellController.configure(tableView: feedVC.tableView)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        feedVC = FeedVc()
        let feedVM = FeedVM()
        feedVC.loadData = { f}
        
        self.feedVC.loadData = { feedVM.getData(self: feedVC) }
        feedVM.completion = { [weak feedVC] data in
            feedVC?.set(data: data)
        }
        
    }
    

    

    @IBAction func didTapAccounts(_ sender: Any) {
        mainFeedVM.openAccount(self)
    }
}
