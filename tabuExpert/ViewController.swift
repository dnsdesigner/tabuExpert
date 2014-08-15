//
//  ViewController.swift
//  tabuExpert
//
//  Created by Dennis de Oliveira on 14/08/14.
//  Copyright (c) 2014 Dennis de Oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var numUm: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        numUm.selected = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickBotaoUm(sender: AnyObject) {
        
        if(numUm.selected==true){
            numUm.selected = false
            
        } else {
            numUm.selected = true
        }
        
        println("Clique num 1")
    }

}

