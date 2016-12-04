//
//  HildagoController.swift
//  Hildago
//
//  Created by iosakademija on 12/4/16.
//  Copyright © 2016 iosakademija. All rights reserved.
//

import UIKit

class HildagoController: UIViewController {
    
    @IBOutlet weak var chatTableView : UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.chatTableView.backgroundColor = UIColor.clear
        
    }
}
