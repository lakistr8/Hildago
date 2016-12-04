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
    
    var changeHildagoBox : HildagoBoxDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.chatTableView.backgroundColor = UIColor.clear
        
    }
}


extension HildagoController : HildagoBoxDelegate {
    
    func hildagoBocIntiatedChagne(_ hildagoBox : HildagoBox ) {
        
    }
    
}


extension HildagoController : ContactsControllerDelegate {
    
    func contact(controller : ContactsController, didSelect contact: String ) {
        
    }
    
}
