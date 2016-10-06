//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Dale Puckett on 9/25/16.
//  Copyright © 2016 k0hyd. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    @IBOutlet weak var taskLabel: UILabel!
    
    var task : Task? = nil
    var previousVC = TasksViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print (task)
        print(task?.important)
        
        if (task!.important) {
            taskLabel.text = "❗️\(task!.name)"
        } else {
            taskLabel.text = task!.name
        }

        taskLabel.text = task!.name
    }
    @IBAction func completeTapped(_ sender: AnyObject) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        context.delete(task!)
        navigationController!.popViewController(animated: true)
    }
    

}
