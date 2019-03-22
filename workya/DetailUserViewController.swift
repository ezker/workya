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
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    var users : [ User ] = [
        User( name: "Carlos", lastName: "Bravo Jimenez", picture : "", city : "Guadalajara, Jalisco", schedule: "09:00 a 18:00",  score: 4.5,
              comments: ["Lorem ipsum dolor sit amet, consectetur adipi",
                         "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"],
              services: ["Fontanería"],
              portfolio: ["","",""]  )
        //User( name: "", lastName: "", picture : "", city : "", schedule: "",  score: 4.5, comments: ["",""], services: [""], portfolio: ["","",""]  )
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        let user = users[0]
        nameLabel.text = user.name + " " + user.lastName
        cityLabel.text = user.city
        scoreLabel.text = "⭐ " + String( user.score )
        // Do any additional setup after loading the view.
    }
    



}
