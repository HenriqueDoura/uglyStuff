//
//  UglyCell.swift
//  ugly-stuff
//
//  Created by Henrique Dev on 05/02/16.
//  Copyright © 2016 Henrique. All rights reserved.
//

import UIKit

class UglyCell: UITableViewCell {

    @IBOutlet weak var uglyImage: UIImageView!
    @IBOutlet weak var uglyText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        uglyImage.layer.cornerRadius = 5.0
        uglyImage.clipsToBounds = true
    }
    
    func configureCell(image:UIImage, text: String) {
        uglyImage.image = image
        uglyText.text = text
    }
    
}
