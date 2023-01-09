//
//  FeedVc.swift
//  MultipleCell
//
//  Created by Khalil Mhelheli on 2/1/2023.
//

import UIKit

class FeedVc: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    var loadData: (() -> Void)?
    
    private var data: [CellController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.contentInset = .init(top: 25, left: 0, bottom: 25, right: 0)
        loadData?()
    }

}

extension FeedVc: UITableViewDelegate , UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let controller = data[indexPath.row]
        return controller.tableView(tableView, cellForRowAt: indexPath)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        data[indexPath.row].tableView(tableView, didSelectRowAt: indexPath)
    }
}


extension FeedVc: BannerCellControllerCellProtocol {
    func didTapHide(indexPath: IndexPath) {
        self.data.remove(at: indexPath.row)
        self.tableView.deleteRows(at: [indexPath], with: .automatic)
    }
    
    
}
