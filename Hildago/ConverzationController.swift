//
//  ConverzationController.swift
//  Hildago
//
//  Created by iosakademija on 12/7/16.
//  Copyright © 2016 iosakademija. All rights reserved.
//

import UIKit

class ConverzationController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ConverzationController" {
            let converzationViewController = segue.destination as! ConverzationController
        }
    }

}
