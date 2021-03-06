//
//  ViewController.swift
//  StoringData
//
//  Created by Sherlyn Lobo on 2018-12-12.
//  Copyright © 2018 Sherlyn Lobo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    
    @IBOutlet weak var output: UILabel!
    
    
    @IBAction func submit(_ sender: UIButton) {
        let greeting = "Welcome "
        let combo = greeting + input.text!
        output.text = combo
        UserDefaults.standard.set(combo, forKey: "myName")
        input.text = ""
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool)
    
    {
        if let x = UserDefaults.standard.object(forKey: "myName") as? String
        {
            output.text = x
            
        }
    }


}

