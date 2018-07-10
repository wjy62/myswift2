//
//  myTableViewController.swift
//  myCode
//
//  Created by Flower on 2018/7/4.
//  Copyright © 2018年 KFlower. All rights reserved.
//

import UIKit

class myTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.cellLayoutMarginsFollowReadableWidth = true
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    var nameList = ["AA", "BB", "CC", "DD", "EE", "FF", "GG", "HH", "II", "JJ"]
    var typeList = ["T1", "T2", "T3", "T4", "T5", "T6", "T7", "T8", "T9", "T10"]
    var checkList = Array(repeating: false, count: 10)
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return nameList.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if checkList[indexPath.row]{
            let optionMenu = UIAlertController(title: "XXX-MenuTititle", message: "Check- out-MenuMessage", preferredStyle: .actionSheet)
            // this is for iPad..........
            if let popOverController = optionMenu.popoverPresentationController{
                if let cell = tableView.cellForRow(at: indexPath){
                    popOverController.sourceView = cell
                    popOverController.sourceRect = cell.bounds
                }
            }
            
            let myCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            
            optionMenu.addAction(myCancel)
            
            let unCheckIn = UIAlertAction(title: "Check-out", style: .default, handler: {(action:UIAlertAction) -> Void in
                
                let xCell = tableView.cellForRow(at: indexPath)
                xCell?.accessoryType = .none
                self.checkList[indexPath.row] = false
            })
            optionMenu.addAction(unCheckIn)
            
            self.present(optionMenu, animated: true, completion: nil)
        }
        else{
            let optionMenu = UIAlertController(title: "MenuTititle", message: "MenuMessage", preferredStyle: .actionSheet)
            // this is for iPad..........
            if let popOverController = optionMenu.popoverPresentationController{
                if let cell = tableView.cellForRow(at: indexPath){
                    popOverController.sourceView = cell
                    popOverController.sourceRect = cell.bounds
                }
            }
            
            let myCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            
            optionMenu.addAction(myCancel)
            
            let myCheckIn = UIAlertAction(title: "Check-In", style: .default, handler: {(action:UIAlertAction) -> Void in
                
                let xCell = tableView.cellForRow(at: indexPath)
                xCell?.accessoryType = .checkmark
                self.checkList[indexPath.row] = true
            })
            optionMenu.addAction(myCheckIn)
            
            self.present(optionMenu, animated: true, completion: nil)
        }
    }

    ///*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! myTableViewCell

        // Configure the cell...
        
        cell.lbName.text = nameList[indexPath.row]
        cell.lbType.text = typeList[indexPath.row]
        cell.myImage.image = UIImage(named: "homei.png")
        
        
        if checkList[indexPath.row]{
            cell.accessoryType = .checkmark
        }
        else{
            cell.accessoryType = .none
        }
        
 
        return cell
    }
    //*/
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let delAction = UIContextualAction(style: .normal, title: "Delete") { (action, myView, completionHandler) in
            
            self.nameList.remove(at: indexPath.row)
            self.typeList.remove(at: indexPath.row)
            self.checkList.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
            
            completionHandler(true)
        }
        
        let swipeConfiguration = UISwipeActionsConfiguration(actions: [delAction])
        
        return swipeConfiguration
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
