//
//  FavoriteCityTableViewCell.swift
//  module-2
//
//  Created by Дмитрий Гапоненко on 16.08.2021.
//

import UIKit

class FavoriteCityTableViewCell: UITableViewCell {
    
    static let identifier = "FavoriteCityTableViewCell"
    
    @IBOutlet private var avatar: UIImageView!
    @IBOutlet private var nickname: UILabel!
    
    func setData(imageName: String?, title: String) {
        avatar.image = UIImage(named: "swift-logo")
        nickname.text = title
    }
}
