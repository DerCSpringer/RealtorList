//
//  RealtorListVC.swift
//  RealtorList
//
//  Created by Daniel Springer on 11/1/17.
//  Copyright © 2017 Daniel Springer. All rights reserved.
//

import UIKit

class RealtorListVC: UIViewController, UITableViewDataSource, UITableViewDelegate, BindableType {

    @IBOutlet weak var tableView: UITableView!
    
    var viewModel: RealtorListVM!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func bindViewModel() {
        viewModel.didUpdate = { [weak self] in
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "realtorCell", for: indexPath) as! RealtorCell
        cell.configureWithRealtor(viewModel.realtorAtIndexPath(indexPath))
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.realtorCount()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel.touchedRowAt(indexPath: indexPath)
    }
    
}
