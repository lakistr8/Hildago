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
    
    var changeHildagoBox : HildagoBox? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.chatTableView.backgroundColor = UIColor.clear
        
    }
}


extension HildagoController : HildagoBoxDelegate {
    
    func hildagoBocIntiatedChagne(_ hildagoBox : HildagoBox ) {
        
        changeHildagoBox = hildagoBox
        
        let storyboard = UIStoryboard(name: "Hildago", bundle: nil)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "ContactsController") as? ContactsController else {
            fatalError("Falied create instance of ContactsController \(storyboard)")
        }
        
        vc.delegate = self
        show(vc, sender: self)
    }
    
}


extension HildagoController : ContactsControllerDelegate {
    
    func contact(controller : ContactsController, didSelect contact: String ) {
        
        guard let changeBox = changeHildagoBox else { return }
        
//        if changeBox === co
        
        _ = navigationController?.popViewController(animated: true)
        
    }
    
}
