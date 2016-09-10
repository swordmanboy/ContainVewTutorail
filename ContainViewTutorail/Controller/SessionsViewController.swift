//
//  SessionsViewController.swift
//  ContainViewTutorail
//
//  Created by Wewillapp03 on 9/10/2559 BE.
//  Copyright © 2559 Wewillapp03. All rights reserved.
//

import UIKit

class SessionsViewController: UIViewController {
    
    @IBOutlet weak var btnClickMe: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        btnClickMe.layer.cornerRadius = 8
        self.btnClickMe.layer.shadowColor = UIColor.grayColor().CGColor
        self.btnClickMe.layer.shadowOffset = CGSizeMake(0, 1.0)
        self.btnClickMe.layer.shadowOpacity = 1.0
        self.btnClickMe.layer.shadowRadius  = 0.0
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onClickMe(sender: AnyObject) {
        showAlerView("Hello", message: "You touch me(Sessions View)! Why?", btnTitleOK: "OK")
    }
    
    private func showAlerView(tilte : String!, message : String!, btnTitleOK: String!){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        alert.addAction(UIAlertAction(title: btnTitleOK, style: .Default, handler: { action in
            //action
            
        }))
        self.presentViewController(alert, animated: true, completion: nil)
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
