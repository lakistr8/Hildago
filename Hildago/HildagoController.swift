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


extension HildagoController : UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChatCell", for: indexPath) as? ChatCell
        
        return cell!
    }
    
}

