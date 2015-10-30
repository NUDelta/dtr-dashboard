//
//  ViewController.swift
//  DTR Dashboard
//
//  Created by Kevin Chen on 10/30/15.
//  Copyright © 2015 aspin. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController {

    @IBOutlet weak var meetingLogWebView: WebView!
    @IBOutlet weak var sprintPlannerWebView: WebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let meetingUrl = NSURL(string: "https://docs.google.com/document/d/1zopoTy5FuUGUclBilW1lwqT7rkfjH4T8w9Y_4V2SNT4/edit#")
        let meetingRequest = NSURLRequest(URL: meetingUrl!)
        self.meetingLogWebView.mainFrame.loadRequest(meetingRequest)
        self.meetingLogWebView.mainFrame.frameView.documentView.scaleUnitSquareToSize(NSMakeSize(0.8, 0.8))
        
        let sprintUrl = NSURL(string: "https://docs.google.com/spreadsheets/d/1f9RO4l3C5kaHBNfLnmGmxb3l0U2ZKaCrdf9LuLCWqGI/edit#gid=1251554321")
        let sprintRequest = NSURLRequest(URL: sprintUrl!)
        self.sprintPlannerWebView.mainFrame.loadRequest(sprintRequest)
        self.sprintPlannerWebView.mainFrame.frameView.documentView.scaleUnitSquareToSize(NSMakeSize(0.8, 0.8))

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

