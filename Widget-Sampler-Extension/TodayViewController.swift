//
//  TodayViewController.swift
//  Widget-Sampler-Extension
//
//  Created by ShinokiRyosei on 2016/12/22.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit
import NotificationCenter


// MARK: - TodayViewController

class TodayViewController: UIViewController, NCWidgetProviding, UITextViewDelegate {
    
    
    @IBOutlet var textView: UITextView!
    
    
    // MARK: UIViewController
        
    override func viewDidLoad() {
        
        super.viewDidLoad()
        textView.delegate = self
    }
    
    
    // MARK: NSWidgetProviding

    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
    
    @IBAction func selectBtn(_ sender: UIButton) {
        
        textView.text = "しのき"
    }
    
}
