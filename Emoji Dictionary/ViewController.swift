//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Emily Hall on 22/03/2019.
//  Copyright © 2019 Emily Hall. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var EmojiTableView: UITableView!
    
    var emojiDic = ["🍕","🍔","🍟","🌭","🍗","🌯","🍝","🥨","🧀","🍆","🍌","🥦","🌮","🍦","🍰","🧁","🍿","☕️","🥜","🍪"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        EmojiTableView.dataSource = self
        EmojiTableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojiDic.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojiDic[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojiDic[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefineViewController
        defVC.emoji = sender as! String
    }

}

