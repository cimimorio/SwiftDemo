//
//  MyTableViewCell.swift
//  SwiftNetDemo
//
//  Created by apple on 16/7/10.
//  Copyright © 2016年 yuxiao. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

	@IBOutlet weak var detailLabel: UILabel!
	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var imgView: UIImageView!
	
	var model:AppModel!;
	
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

	func setM(tempModel:AppModel?) -> Void {
		self.detailLabel.text = tempModel!.name;
		
		if (tempModel!.imageStr != nil) {
			print(tempModel!.imageStr);
			self.imgView!.sd_setImageWithURL(NSURL.init(string: tempModel!.imageStr));
		}
		
	}
	
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
