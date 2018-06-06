//
//  ViewController.swift
//  HelloWC
//
//  Created by Flower on 2018/5/2.
//  Copyright © 2018年 Flower. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //var nameList = ["AAA", "BBB", "CCC", "DDD", "EEE"]
    var nameList = ["barrafina", "bourkestreetbakery", "cafedeadend", "cafeloisl", "cafelore"]
    var images = ["barrafina", "bourkestreetbakery", "cafedeadend", "cafeloisl", "cafelore"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = nameList[indexPath.row]
        //cell.imageView?.image = UIImage(named:images[indexPath.row])
        cell.imageView?.image = UIImage(named:images[indexPath.row])
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
/*
    override var prefersStatusBarHidden: Bool {
        return true
    }
*/
}

