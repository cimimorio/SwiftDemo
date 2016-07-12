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
		baseScorllView = UIScrollView.init();
		baseScorllView?.contentSize = CGSizeMake(UIScreen.mainScreen().bounds.width, 1000);
		self.view.addSubview(baseScorllView!);
		
		baseScorllView!.snp_makeConstraints { make in
			make.edges.equalTo(self.view);
		}
		
		//add imageView
		icon = UIImageView.init();
		baseScorllView?.addSubview(icon!);
		icon?.sd_setImageWithURL(NSURL.init(string: (model?.imageStr)!));
		icon?.layer.cornerRadius = 10.0;
		icon.snp_makeConstraints { make in
			make.top.equalTo(baseScorllView!).offset(10);
			make.left.equalTo(baseScorllView!).offset(10);
			make.width.equalTo(100.0);
			make.height.equalTo(100.0);
		}
		//add nameLabel
		name = UILabel.init();
		baseScorllView?.addSubview(name!);
		name.text = model?.name;
		name.snp_makeConstraints { make in
			make.left.equalTo(icon.snp_right).offset(10);
			make.top.equalTo(baseScorllView!).offset(10);
		}
		//addDetaiLabel
		detail = UILabel.init();
		detail.numberOfLines = 0;
		detail.text = model.descriptionStr;
		baseScorllView?.addSubview(detail);
		detail.snp_makeConstraints { make in
			make.left.equalTo(baseScorllView!).offset(10);
			make.width.equalTo(UIScreen.mainScreen().bounds.width - 20);
			make.top.equalTo(icon.snp_bottom).offset(10);
		}
		
		//add downloadLabel
		downloadsLabel = UILabel.init();
		baseScorllView?.addSubview(downloadsLabel);
		downloadsLabel.text = model.downloads;
		downloadsLabel.snp_makeConstraints { make in
			make.top.equalTo(name.snp_bottom).offset(10);
			make.left.equalTo(icon.snp_right).offset(10);
			make.right.equalTo(baseScorllView!).offset(10);
			make.height.equalTo(30);
		}
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
