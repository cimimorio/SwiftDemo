//
//  DetailViewController.swift
//  SwiftNetDemo
//
//  Created by apple on 16/7/10.
//  Copyright © 2016年 yuxiao. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

	internal var model:AppModel!;
	
	var baseScorllView:UIScrollView?;
	var icon:UIImageView!;
	var name:UILabel!;
	var detail:UILabel!;
	var downloadsLabel:UILabel!;
	
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		configUI();
		
		
		
    }
	// MARK: -
	// MARK: 初始化UI
	func configUI(){
		//add a scrollview
		baseScorllView = UIScrollView.init(frame: UIScreen.mainScreen().bounds);
		baseScorllView?.contentSize = CGSizeMake(UIScreen.mainScreen().bounds.width, 1000);
		self.view.addSubview(baseScorllView!);
		
		
		//add imageView
		icon = UIImageView.init(frame: CGRectMake(10, 10, 100, 100));
		baseScorllView?.addSubview(icon!);
		icon?.sd_setImageWithURL(NSURL.init(string: (model?.imageStr)!));
		icon?.layer.cornerRadius = 10.0;
		
		//add nameLabel
		name = UILabel.init(frame: CGRectMake(CGRectGetMaxX((icon?.frame)!), 10, 100, 50));
		baseScorllView?.addSubview(name!);
		name.text = model?.name;
		
		//addDetaiLabel
		detail = UILabel.init(frame: CGRectMake((icon?.frame.origin.x)!, CGRectGetMaxY(icon.frame), UIScreen.mainScreen().bounds.width - 20, 200));
		detail.numberOfLines = 0;
		detail.text = model.descriptionStr;
		baseScorllView?.addSubview(detail);
		
		//add downloadLabel
		downloadsLabel = UILabel.init();
//		downloadsLabel.snp_makeConstraints { make in
//			make
//		}
		
	}
	// MARK: -
	// MARK: 加载数据
	
	// MARK: -
	// MARK: 事件
	
	// MARK: -
	// MARK: 数据请求
	
	// MARK: -
	// MARK: 代理
	
	// MARK: -
	// MARK: 业务逻辑
	
	// MARK: -
	// MARK: 通知注册和销毁
	
	
	
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
