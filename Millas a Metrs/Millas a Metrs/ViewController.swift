//
//  ViewController.swift
//  Millas a Metrs
//
//  Created by Javier Batres on 2/21/17.
//  Copyright © 2017 Javier Batres. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var input: UITextField!
    @IBOutlet var pt: UISegmentedControl!
    @IBOutlet var output: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        output.text = "ingresa la distancia a converir"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convert(_ sender: Any) {
        
        let original = Double(input.text!)
        var resultad = 0.0
        if pt.selectedSegmentIndex == 0 {
            resultad = original! / 1.6
        }else{
            resultad = original! * 1.6
        }
        output.text = "Resultad: \(resultad)"
    }

    

}

