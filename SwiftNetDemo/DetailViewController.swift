//
//  DetailViewController.swift
//  SwiftNetDemo
//
//  Created by apple on 16/7/10.
//  Copyright © 2016年 yuxiao. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

	public var model:AppModel?;
	
	var baseScorllView:UIScrollView?;
	var icon:UIImageView?;
	var name:UILabel!;
	
	
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		configUI();
		
		
		
    }

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
		
		
	}
	
	
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
