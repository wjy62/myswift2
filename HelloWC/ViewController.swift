//
//  ViewController.swift
//  HelloWC
//
//  Created by Flower on 2018/5/2.
//  Copyright © 2018年 Flower. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showMessage2(sender:UIButton){
        
        var emoji = ["👾":"Monster", "👻":"Ghost", "🤓":"Smile"]
        //var emoji = ["👾":"Monster", "👻":"Ghost", "🤓":"Smile", "🤖":"BOT"]
        
        //let selectedButton = sender.titleLabel!.text
        if let SB = sender.titleLabel?.text
        {
            let alertController = UIAlertController(title:SB, message: emoji[SB], preferredStyle: UIAlertControllerStyle.alert)
        
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
        
        else{
            let alertController = UIAlertController(title:"SB", message: "emoji[SB]"			, preferredStyle: UIAlertControllerStyle.alert)
            
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
    }

    

}

