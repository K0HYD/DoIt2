//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Dale Puckett on 9/25/16.
//  Copyright © 2016 k0hyd. All rights reserved
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var taskNameTextField: UITextField!
    
// var tasks = Task()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addTapped(_ sender: AnyObject) {
        // Create a Task from the outlet information
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let task = Task(context: context)
        
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        print (task.name)
        print (task.important)
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        // Pop Back
        navigationController!.popViewController(animated: true)
        
    }
    
    
    
}
