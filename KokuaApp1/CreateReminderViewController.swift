//
//  CreateReminderViewController.swift
//  KokuaApp1
//
//  Created by Natasha Johnston on 2017-06-23.
//  Copyright © 2017 Natasha Johnston. All rights reserved.
//

import UIKit

class CreateReminderViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var input: UITextField!
    
    @IBAction func addReminder(_ sender: Any)
    
    {
        if (input.text != "")
        {
            
        list.append(input.text!)
        input.text = ""
            
        }
        
    }
    
    
    override func viewDidLoad() {
    

        print("Create Reminder Page Loaded")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
