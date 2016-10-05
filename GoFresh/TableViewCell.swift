//
//  TableViewCell.swift
//  GoFresh
//
//  Created by 田中舜一 on 2016/10/01.
//  Copyright © 2016年 田中舜一. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var StoreType: UIView!
    
    @IBOutlet weak var StoreName: UILabel!
    @IBOutlet weak var Store_length: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
