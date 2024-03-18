//
//  MenuOptionCell.swift
//  GOW
//
//  Created by Alberti Ulises on 08/03/24.
//

import UIKit

class MenuOptionCell: UITableViewCell {
    
    @IBOutlet weak var menuLabel: UILabel!
    
    @IBOutlet weak var menuImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let myFont = UIFont(name: "CGF Locust Resistance", size: 17)
        let bodyMetrics = UIFontMetrics(forTextStyle: .body)
        menuLabel.font = bodyMetrics.scaledFont(for: myFont!)
        menuLabel.adjustsFontForContentSizeCategory = true
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
