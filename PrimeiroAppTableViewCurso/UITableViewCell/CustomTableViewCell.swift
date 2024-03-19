//
//  CustomTableViewCell.swift
//  PrimeiroAppTableViewCurso
//
//  Created by Adelmo Artur de Aquino on 18/03/24.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    static let identifier: String = "CustomTableViewCell"
    
    @IBOutlet weak var carImageView: UIImageView!
    
    static func nib() -> UINib {
        return UINib( nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        carImageView.image = UIImage(named: "whale")
       
    }

    func setupCell (title: String){
        titleLabel.text = title
    }
    
}
