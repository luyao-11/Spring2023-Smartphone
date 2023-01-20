//
//  ViewController.swift
//  Hello World
//
//  Created by Luyao Wang on 1/18/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelExample: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pressMe(_ sender: UIButton) {
        print("Press Action")
        labelExample.text = "Hello World"
     
    
    }
}

