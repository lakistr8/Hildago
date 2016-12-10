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
    var searchBar : UISearchController?
    var searchString: String?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.backgroundView = UIImageView(image: #imageLiteral(resourceName: "bcg1"))
        setupSearchBar()
    }
}

// MARK: - Table view data source

extension ContactsController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1    
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



extension ContactsController {
    
    func setupSearchBar() {
        
        searchBar = {
            let sc = UISearchController(searchResultsController: nil)
            
            sc.dimsBackgroundDuringPresentation = false
            sc.hidesNavigationBarDuringPresentation = false
            
            sc.searchBar.searchBarStyle == UISearchBarStyle.minimal
            self.navigationItem.titleView = sc.searchBar
            sc.searchBar.sizeToFit()
            
            return sc
        }()
        
        
    }
    
    
}





