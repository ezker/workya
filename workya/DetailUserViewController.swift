//
//  DetailUserViewController.swift
//  workya
//
//  Created by Reynaldo Martin del Campo on 3/22/19.
//  Copyright © 2019 swiftbus. All rights reserved.
//

import UIKit

class DetailUserViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var serviciosLabel: UILabel!
    @IBOutlet weak var horarioLabel: UILabel!
    @IBOutlet weak var descripcionTextArea: UITextView!
    @IBOutlet weak var comentarioTextArea: UITextView!
    
    
    var users : [ User ] = [
        User( name: "Carlos", lastName: "Bravo Jimenez", picture : "", city : "Guadalajara, Jalisco", schedule: "09:00 a 18:00",  score: 4.5,
              comments: ["-Me gustó la actitud de Carlos, es muy amable, si lo volveria a contratar. Si lo recomiendo",
                         "-Servicio inmediato y de calidad"],
              services: ["Fontanería","Servicios eléctricos"],
              portfolio: ["","",""],
              descripcion: "Soy un hombre emprendedor con sueños y metas en esta vida, amo mi trabajo y me gustaria tener mi propia tienda distribuidora de productos de fontanería.")
        //User( name: "", lastName: "", picture : "", city : "", schedule: "",  score: 4.5, comments: ["",""], services: [""], portfolio: ["","",""]  )
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        let user = users[0]
        nameLabel.text = user.name + " " + user.lastName
        cityLabel.text = user.city
        scoreLabel.text =  String( user.score ) + "/5 ⭐"
        descripcionTextArea.text = user.descripcion
        serviciosLabel.text = user.services.joined(separator: " - ")
        horarioLabel.text = user.schedule
        comentarioTextArea.text = user.comments.joined(separator: "\n\n")
        
        
    }
    



}
