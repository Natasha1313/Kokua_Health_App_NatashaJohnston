//
//  RemindersViewController.swift
//  KokuaApp1
//
//  Created by Natasha Johnston on 2017-06-23.
//  Copyright © 2017 Natasha Johnston. All rights reserved.
//

import UIKit

//global view 
//allows it to be accessible by all view controllers

var list = ["be awesome!","you can do this!","you are amazing!"]

class RemindersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var myTableView: UITableView!

    //functions found when command held down and click on UITableViewDataSource
    //command f = find search for number of rows
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    
    {
        //gives number of rows to how many items there are in the row
        return (list.count)
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    
    {
        //populate the table view by defining a cell, reuseIdentifier: "cell" is the name we gave the cell
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        return(cell)
    }
    
    // this is the delete function 
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            list.remove(at: indexPath.row)
            myTableView.reloadData()
        
        }
    
    }
    
    override func viewDidAppear(_ animated: Bool) {
        myTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

       print("Reminders Page has Loaded")
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
