//
//  ContactsController.swift
//  Hildago
//
//  Created by iosakademija on 12/4/16.
//  Copyright © 2016 iosakademija. All rights reserved.
//

import UIKit

protocol ContactsControllerDelegate : class {
    
    func contact(controller : ContactsController, didSelect contact: String )
}


class ContactsController: UITableViewController {
    
    weak var delegate : ContactsControllerDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension ContactsController {
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactsCell", for: indexPath) as! ContactsCell
        
        
        return cell
    }
    
}
