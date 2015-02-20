//
//  ViewController.swift
//  SimpleExample
//
//  Created by Kwame Bryan on 2015-02-19.
//  Copyright (c) 2015 3e Interactive. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {

    @IBOutlet var myLabelText: UILabel!
    
    @IBAction func myButton(sender: AnyObject) {
        myLabelText.text = "Hello Bitmaker Labs"
        let composeController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        composeController.setInitialText("Having a great time at @BitmakerLabs")
        presentViewController(composeController, animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

