//
//  FavoriteCitiesViewController.swift
//  module-2
//
//  Created by Дмитрий Гапоненко on 16.08.2021.
//

import UIKit

class FavoriteCitiesViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    
    let friends = ["Swift", "PHP", "Java"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension FavoriteCitiesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FavoriteCityTableViewCell.identifier) as! FavoriteCityTableViewCell
        cell.setData(imageName: "swift-logo", title: friends[indexPath.row])
        
        return cell
    }    
}
