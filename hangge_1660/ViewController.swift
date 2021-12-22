//
//  ViewController.swift
//  hangge_1660
//
//  Created by hangge on 2017/7/10.
//  Copyright © 2017年 hangge.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ScratchCardDelegate {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //创建刮刮卡组件
        let scratchCard = ScratchCard(frame: CGRect(x:20, y:70, width:241, height:106),
                                       couponImage: UIImage(named: "coupon.png")!,
                                       maskImage: UIImage(named: "mask.png")!)
        //设置代理
        scratchCard.delegate = self
        self.view.addSubview(scratchCard)
    }
    
    //滑动开始
    func scratchBegan(point: CGPoint) {
        print("开始刮奖：\(point)")
    }
    
    //滑动过程
    func scratchMoved(progress: Float) {
        print("当前进度：\(progress)")
        
        //显示百分比
        let percent = String(format: "%.1f", progress * 100)
        label.text = "刮开了：\(percent)%"
    }
    
    //滑动结束
    func scratchEnded(point: CGPoint) {
        print("停止刮奖：\(point)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

