//
//  DefineViewController.swift
//  Emoji Dictionary
//
//  Created by Emily Hall on 22/03/2019.
//  Copyright © 2019 Emily Hall. All rights reserved.

import UIKit

class DefineViewController: UIViewController {

    var emoji = ""
    
    var emojiDic = ["🍕","🍔","🍟","🌭","🍗","🌯","🍝","🥨","🧀","🍆","🍌","🥦","🌮","🍦","🍰","🧁","🍿","☕️","🥜","🍪"]
    var Define = ["This is a tasty slice of Domino's, YAY","Mmmm Grill'D burger","Dis is macca's chips","The dog of the hot variety","KKKKFFFFFCCCC","Purritos are better than Burritos", "Italiano Pastaiano","PRETZEL","Mmmmcheeesemmmm","DICK","PENIS","That thing Free hates","Taco Tuesday, taco taco Tuesday!", "I scweam for ice cweam","Cake pls","Cupcake double pls","Movie crunch","Pls let me buy a coffee machine","nuts aka balls","Cooooooooookie"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var placeholder = 0
        emojiDefine.text = emoji
        while placeholder < Define.count {
            if emoji == emojiDic[placeholder] {
                Definition.text = Define[placeholder]
            }
            placeholder += 1
        }
    }

    @IBOutlet weak var emojiDefine: UILabel!
    
    @IBOutlet weak var Definition: UILabel!
    
    @IBAction func BackButton(_ sender: Any) {
        
    }
    
    
}
