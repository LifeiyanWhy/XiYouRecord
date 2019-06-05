//
//  XYRHomeTopView.swift
//  XiYouRecord
//
//  Created by 李飞艳 on 2019/6/5.
//  Copyright © 2019年 李飞艳. All rights reserved.
//

import UIKit

class HomeTopView: UIView {
    
    var titleArray: Array<String>?
    var selectButton: UIButton?
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func load(withTitleArray titleArray: Array<String>) -> Void {
        let width = self.frame.width / CGFloat(titleArray.count)
        
        for (index , obj) in titleArray.enumerated() {
            let button = UIButton.init(frame: CGRect(x: width * CGFloat(index), y: 0, width: width, height: self.frame.height))
            self.addSubview(button)
            button.setTitle(obj, for: UIControl.State.normal)
            if index == 1 {
                //默认定位到热门页
                self.selectButton = button
                button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
                button.setTitleColor(UIColor(hexString: "#f68c60"), for: UIControl.State.normal)
            } else {
                button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
                button.setTitleColor(UIColor.black, for: UIControl.State.normal)
            }
            button.addTarget(self, action: #selector(clickButton(_:)), for: UIControl.Event.touchUpInside)
        }
    }
    
    @objc func clickButton(_ button: UIButton) -> Void {
        self.selectButton?.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        self.selectButton?.setTitleColor(UIColor.black, for: UIControl.State.normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setTitleColor(UIColor(hexString: "#f68c60"), for: UIControl.State.normal)
        self.selectButton = button
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
