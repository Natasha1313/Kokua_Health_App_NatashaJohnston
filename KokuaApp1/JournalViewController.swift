//
//  JournalViewController.swift
//  KokuaApp1
//
//  Created by Natasha Johnston on 2017-06-23.
//  Copyright © 2017 Natasha Johnston. All rights reserved.
//

import UIKit

class JournalViewController: UIViewController {
    
    
    @IBOutlet weak var input: UITextField!
    
    @IBOutlet weak var output: UILabel!
    
    @IBAction func action(_ sender: Any) {
        //outputs what you put in the input box
        output.text = input.text
                                        //can store any object here
        UserDefaults.standard.setValue(input.text, forKey: "myJournal")
        
        //so can write multiple inputs without deleting past
        input.text = ""
        
    }
    
  //add Day 2
    @IBOutlet weak var input1: UITextField!
    
    @IBOutlet weak var output1: UILabel!
    
    @IBAction func add1(_ sender: Any) {
    
        //outputs what you put in the input box
        output1.text = input1.text
        //can store any object here
        UserDefaults.standard.setValue(input1.text, forKey: "Day2")
        
        //so can write multiple inputs without deleting past
        input1.text = ""
    
    
    }
    
    /*day 3
    
    @IBOutlet weak var input3: UITextField!
    
    @IBOutlet weak var output3: UILabel!
    
    @IBAction func add2(_ sender: Any) {
    
        //outputs what you put in the input box
        output3.text = input3.text
        
        //can store any object here
        UserDefaults.standard.setValue(input3.text, forKey: "Day3")
        
        //so can write multiple inputs without deleting past
        input3.text = ""
    
    }
    */

    override func viewDidLoad() {
        super.viewDidLoad()

        print("Journal Page has loaded")
    }
    //for touch to exsit key board
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // return function to esit key board
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        textField.resignFirstResponder();
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //make sure all the elements have load and save it when it read loads
    //this is where the save is stored and viewed when app is reloaded. 
    override func viewDidAppear(_ animated: Bool)
    {
        //check if user default is empty
        if let  x = UserDefaults.standard.object(forKey: "myJournal") as? String
        {
            output.text = x
        }
        
        if let  y = UserDefaults.standard.object(forKey: "Day2") as? String
        {
            output.text = y
            
        }
        /*if let  z = UserDefaults.standard.object(forKey: "Day3") as? String
        {
            output.text = z
            
        }*/
    }
    
 

}
