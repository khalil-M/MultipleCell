//
//  AccountVC.swift
//  MultipleCell
//
//  Created by Khalil Mhelheli on 2/12/2022.
//

import Foundation
import UIKit

class AccountVC: BottomPopupViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    weak var delegate: AccountVCProtocol?
    
    // Language
    var selectedAccount: Account?
    var accounts: [Account] = []
    
    override func viewDidLoad()  {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorInset = .init(top: 0, left: 20, bottom: 0, right: 20)
        tableView.separatorColor = #colorLiteral(red: 0.8352941176, green: 0.8352941176, blue: 0.8352941176, alpha: 1)
        tableView.register(AccountCell.nib, forCellReuseIdentifier: AccountCell.cellIdentifier)
        accounts = Manager.shared.accounts
        
        setUpData()
    }
    
    override var popupHeight: CGFloat {
        return UIScreen.main.bounds.size.height * 0.4
    }
    
    override var popupPresentDuration: Double {
        return 0.25
    }
    
    override var popupDimmingViewAlpha: CGFloat {
        return 0.5
    }
    
    
    func setUpData() {
        guard let index = accounts.firstIndex(where: {$0.name == selectedAccount?.name}) else {
            return
        }
        
        let indexPath = IndexPath(row: index, section: 0)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
            self.tableView.scrollToRow(at: indexPath, at: .middle, animated: true)
        }
    }
    
    
    
    @IBAction func didTapClose(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

    
}

extension AccountVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: AccountCell.cellIdentifier, for: indexPath) as? AccountCell else { return UITableViewCell() }
//        cellViewModel.isSelected = self.viewModel.selectedAnswerIndex == indexPath.row
        
        cell.configureCell(title: accounts[indexPath.row].name, selectedAccount?.name == accounts[indexPath.row].name)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return accounts.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        Manager.shared.seletedAccout = accounts[indexPath.row]
      
        delegate?.didSelect(_account: accounts[indexPath.row])
        
        tableView.reloadData()
        
        dismiss(animated: true, completion: nil)

    }
}

