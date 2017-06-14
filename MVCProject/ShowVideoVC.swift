//
//  ShowVideoVC.swift
//  MVCProject
//
//  Created by Stam otb on 4/30/17.
//  Copyright © 2017 Stam otb. All rights reserved.
//

import UIKit

class ShowVideoVC: UIViewController {

 
    @IBOutlet weak var w2View: UIWebView!
     var v: Video!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        w2View.loadHTMLString(v.videoURL, baseURL: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
