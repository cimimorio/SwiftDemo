
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
	
	var applicationId:String = "";
	var categoryId:String = "";
	var categoryName:String = "";
	var currentPrice:String = "";
	var descriptionStr:String = "";
	var downloads:String = "";
	var expireDatetime:String = "";
	var favorites:String = "";
	var fileSize:String = "";
//	var iconUrl:String = "";
	var lastPrice:String = "";
	var priceTrend:String = "";
	var ratingOverall:String = "";
	var releaseDate:String = "";
	var releaseNotes:String = "";
	var shares:String = "";
	var slug:String = "";
	var starCurrent:String = "";
	var starOverall:String = "";
	var updateDate:String = "";
	var version:String = "";
	
	init(tempDic:NSDictionary) {
		super.init();
		name = tempDic.objectForKey("name") as!String;
		imageStr = tempDic.objectForKey("iconUrl") as!String;
		detailStr = tempDic.objectForKey("fileSize") as!String;
		applicationId = tempDic.objectForKey("applicationId") as!String;
		categoryId = tempDic.objectForKey("categoryId") as!String;
		categoryName = tempDic.objectForKey("categoryName") as!String;
		currentPrice = tempDic.objectForKey("currentPrice") as!String;
		descriptionStr = tempDic.objectForKey("description") as!String;
		downloads = tempDic.objectForKey("downloads") as!String;
		expireDatetime = tempDic.objectForKey("expireDatetime") as!String;
		favorites = tempDic.objectForKey("favorites") as!String;
		fileSize = tempDic.objectForKey("fileSize")	as!String;
		lastPrice = tempDic.objectForKey("lastPrice") as!String;
		priceTrend = tempDic.objectForKey("priceTrend") as!String;
		ratingOverall = tempDic.objectForKey("ratingOverall") as!String;
		releaseDate = tempDic.objectForKey("releaseDate") as!String;
		releaseNotes = tempDic.objectForKey("releaseNotes")	as!String;
		shares = tempDic.objectForKey("shares") as!String;
		slug = tempDic.objectForKey("slug") as!String;
		starCurrent = tempDic.objectForKey("starCurrent") as!String;
		updateDate = tempDic.objectForKey("updateDate") as!String;
		version = tempDic.objectForKey("version") as!String;
	}
}
