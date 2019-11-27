//
//  XYRHomeViewController.swift
//  XiYouRecord
//
//  Created by 李飞艳 on 2019/6/5.
//  Copyright © 2019年 李飞艳. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //test
        self.view.backgroundColor = UIColor.white
        self.navigationController?.navigationBar.isHidden = true
        let topView = HomeTopView.init(frame: CGRect(x: (ScreenWidth - 150)/2.0, y: 20, width: 150, height: 44))
        self.view.addSubview(topView)
        topView.load(withTitleArray: ["关注","热门"])
        
        let sepView: UIView = UIView.init(frame: CGRect(x: 0, y: 64, width: ScreenWidth, height: 0.2))
        self.view.addSubview(sepView)
        sepView.backgroundColor = UIColor.lightGray
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
