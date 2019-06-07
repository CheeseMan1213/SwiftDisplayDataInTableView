//
//  ViewController.swift
//  DisplayDataInTableView
//
//  Created by James Hawley on 6/3/19.
//  Copyright © 2019 James Hawley. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var myTableView: UITableView!
    
    let ponieArray = ["Twilight Sparkle", "Fluttershy",
                       "Apple Jack", "Pinkie Pie", "Rarity", "Ranbow Dash"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myTableView.dataSource = self
        myTableView.delegate = self
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ponieArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: performSegue(withIdentifier: "MyCell", for: indexPath))
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        
        cell.textLabel!.text = ponieArray[indexPath.row]
        
        return cell
        
    }
}
