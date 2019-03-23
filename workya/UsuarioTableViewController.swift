//
//  UsuarioTableViewController.swift
//  workya
//
//  Created by Hackathon19 on 3/22/19.
//  Copyright © 2019 swiftbus. All rights reserved.
//

import UIKit

class UsuarioTableViewController: UITableViewController {
    
    var users : [ User ] = [
        User( name: "Carlos", lastName: "Bravo Jimenez", picture : "", city : "Guadalajara, Jalisco", schedule: "09:00 a 18:00",  score: 4.5,
              comments: ["Lorem ipsum dolor sit amet, consectetur adipi",
                         "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"],
              services: ["Fontanería"],
              portfolio: ["","",""]  ),
        User( name: "Nombre", lastName: "Apellidos", picture : "", city : "", schedule: "",  score: 4.5, comments: ["",""], services: [""], portfolio: ["","",""]  )
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let user = users[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! UserTableViewCell
        //cell.pictureImageView = user.picture
        //cell.nameLabel.text = String(indexPath.row)
        //cell.textLabel?.text = String(indexPath.row)//user.name + " " + user.lastName
        cell.nameLabel.text = user.name
        cell.servicesLabel.text = user.services.joined(separator: ", ")
        
        return cell
        
    }

}
