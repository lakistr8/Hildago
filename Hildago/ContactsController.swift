//
//  ContactsController.swift
//  Hildago
//
//  Created by iosakademija on 12/4/16.
//  Copyright © 2016 iosakademija. All rights reserved.
//

import UIKit




class ContactsController: UITableViewController {
    
    var contacts = [Contact]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.backgroundView = UIImageView(image: #imageLiteral(resourceName: "bcg1"))
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
        return 2
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactsCell", for: indexPath) as! ContactsCell
        
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ContactsController" {
            let contactsViewController = segue.destination as! ContactsController
        }
    }
    
}
