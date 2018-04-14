//
//  ViewController.swift
//  class_6_demo_notification
//
//  Created by YU CHONKAO on 2018/1/4.
//  Copyright © 2018年 YU CHONKAO. All rights reserved.
//

import UIKit
import UserNotifications
import CoreLocation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showNotification(_ sender: Any) {
        let notificationContent = UNMutableNotificationContent()
         ////===================================
        notificationContent.title = "測試本地通知"
        notificationContent.subtitle = "測試本地通知副標題"
        notificationContent.body = "測試本地通知 內容"
        notificationContent.badge = 1
        notificationContent.sound = UNNotificationSound.default()
        
        ////測試ㄥ//////
        //第二次測試 ＡＤＤ2
        // 設置通知的圖片
        
        
        // ＥＬＩ修改 222222222222222
        
        
        ////===================================
        
        
        
        
        
        
        
        
        
//        let imageURL: URL = Bundle.main.url(forResource: "demo",
//                                            withExtension: "png")!
//        let attachment = try! UNNotificationAttachment(identifier: "image",
//                                                       url: imageURL, options: nil)
//        notificationContent.attachments = [attachment]
        
        notificationContent.userInfo = ["direct-link": "https://www.google.com",
                                        "direct-path": "page-view"]
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 3,
                                                        repeats: false)
        
        let request = UNNotificationRequest(identifier: "notification", content: notificationContent,
                                            trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: {error in
            print("建立通知")
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

// test
// test
// test

