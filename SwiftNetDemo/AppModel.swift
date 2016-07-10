
//
//  AppModel.swift
//  SwiftNetDemo
//
//  Created by apple on 16/7/10.
//  Copyright © 2016年 yuxiao. All rights reserved.
//

import UIKit

class AppModel: NSObject {
	var name:String! = "";
	var imageStr:String! = "";
	var detailStr:String! = "";
	
	
	init(tempDic:NSDictionary) {
		super.init();
		name = tempDic.objectForKey("name") as!String;
		imageStr = tempDic.objectForKey("iconUrl") as!String;
		detailStr = tempDic.objectForKey("fileSize") as!String;
	}
}
