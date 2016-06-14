//
//  SettingsViewController.swift
//  TipMe
//
//  Created by Valerie Chen on 6/14/16.
//  Copyright © 2016 Valerie Chen. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultControl: UISegmentedControl!
    
    let defaults = NSUserDefaults.standardUserDefaults()
    defaults.setInteger(0, forKey: "default_tip_bar_index")
    defaults.synchronize()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func setDefault(sender: AnyObject) {
        defaults.setInteger(defaultControl.selectedSegmentIndex,
                            forKey: "default_tip_bar_index")
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
