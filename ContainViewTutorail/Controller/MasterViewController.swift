//
//  MasterViewController.swift
//  ContainViewTutorail
//
//  Created by Wewillapp03 on 9/10/2559 BE.
//  Copyright © 2559 Wewillapp03. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {
    @IBOutlet weak var segmentControl: UISegmentedControl!
    private var summaryView : SummaryViewController!
    private var sessionsView : SessionsViewController!

    @IBOutlet weak var viewContainer: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        summaryView = SummaryViewController(nibName: "SummaryViewController", bundle: nil)
        sessionsView = SessionsViewController(nibName: "SessionsViewController", bundle: nil)
        addViewContollerAsChildren(summaryView)
        addViewContollerAsChildren(sessionsView)
        
        setupView()
        updateView()
        // Do any additional setup after loading the view.
    }
    
    func setupView(){
        setupSegmentedControll()
    }
    
    func setupSegmentedControll(){
        segmentControl.removeAllSegments()
        segmentControl.insertSegmentWithTitle("Summary", atIndex: 0, animated: false)
        segmentControl.insertSegmentWithTitle("Sessions", atIndex: 1, animated: false)
        segmentControl.addTarget(self, action: #selector(self.selectionDidChange(_:)), forControlEvents: .ValueChanged)
        
        //select first segment
        segmentControl.selectedSegmentIndex = 0
    }
    
    func selectionDidChange(sender: UISegmentedControl){
        updateView()
    }
    
    func updateView(){
        summaryView.view.hidden = !(segmentControl.selectedSegmentIndex == 0)
        sessionsView.view.hidden = !(segmentControl.selectedSegmentIndex == 1)
    }
    
    private func addViewContollerAsChildren(viewController:UIViewController){
        addChildViewController(viewController)
        
        // Add Child View as Subview
        viewContainer.addSubview(viewController.view)
        
        //Configure Child View
        viewController.view.frame = viewContainer.bounds
        viewController.view.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        
        //Notify
        viewController.didMoveToParentViewController(self)
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
