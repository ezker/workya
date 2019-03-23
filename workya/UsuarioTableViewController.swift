//
//  UsuarioTableViewController.swift
//  workya
//
//  Created by Hackathon19 on 3/22/19.
//  Copyright © 2019 swiftbus. All rights reserved.
//

import UIKit

class UsuarioTableViewController: UITableViewController {

    @IBOutlet weak var pictureImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var servicesLabel: UILabel!
    
    var users: [String] = []
    
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
        /*cell.pic = user.picture
        cell.nameLabel.text = user.name + user.lastName
        cell.servicesLabel.text = user.servicios*/
        
        return cell
        
    }

}
