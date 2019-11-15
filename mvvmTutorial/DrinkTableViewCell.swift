//
//  DrinkTableViewCell.swift
//  mvvmTutorial
//
//  Created by Aung Ko Ko on 10/11/2019.
//  Copyright © 2019 Phone Zaw Myint. All rights reserved.
//

import UIKit
import SDWebImage

class DrinkTableViewCell: UITableViewCell {
    @IBOutlet weak var ivBeer: UIImageView!
    @IBOutlet weak var lblId: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblUSD: UILabel!
    
    var mdata : DrinkVO?{
        
        didSet{
            ivBeer.sd_setImage(with: URL(string: mdata!.image_url))
            lblId.text = "# \(mdata!.id)"
            lblName.text = mdata?.name
            lblDescription.text = mdata?.description
            lblUSD.text = "Start at \(mdata!.target_fg) USD"
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
