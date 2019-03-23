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
        User( name: "Carlos", lastName: "Bravo Jimenez", picture : "avatar02", city : "Guadalajara, Jalisco", schedule: "09:00 a 18:00",  score: 4.5,
              comments: ["Lorem ipsum dolor sit amet, consectetur adipi",
                         "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"],
              services: ["Fontanería","Servicios eléctricos"],
              portfolio: ["","",""],
              descripcion: "Soy un hombre emprendedor con sueños y metas en esta vida, amo mi trabajo y me gustaria tener mi propia tienda distribuidora de productos de fontanería."),
        
        User( name: "Fernanda", lastName: "Godínez Nuño", picture : "avatar03", city : "Zapopan, Jalisco", schedule: "",  score: 4.5, comments: ["",""], services: ["Fontanería"], portfolio: ["","",""],
              descripcion: ""),
        
        User( name: "Joaquin", lastName: "Perez Beltran", picture : "avatar01", city : "Guadalajara, Jalisco", schedule: "",  score: 4.5, comments: ["",""], services: ["Jardinero","Fontanería"], portfolio: ["","",""],
              descripcion: ""),
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
        cell.logoImage.image = UIImage(named: user.picture)
        cell.logoImage.adjustsImageSizeForAccessibilityContentSizeCategory = true
        cell.nameLabel.text = user.name + " " + user.lastName
        cell.servicesLabel.text = user.services.joined(separator: ", ")
        
        return cell
        
    }

}
