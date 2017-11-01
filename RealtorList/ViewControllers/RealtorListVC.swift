//
//  RealtorListVC.swift
//  RealtorList
//
//  Created by Daniel Springer on 11/1/17.
//  Copyright © 2017 Daniel Springer. All rights reserved.
//

import UIKit

class RealtorListVC: UIViewController, UITableViewDataSource, BindableType {

    @IBOutlet weak var tableView: UITableView!
    
    
    var viewModel: RealtorListVM!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
    }
    
    func bindViewModel() {
        viewModel.didUpdate = { [weak self] in
            self?.tableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.realtorList.count
    }
    
}
