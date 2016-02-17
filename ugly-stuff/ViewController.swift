//
//  ViewController.swift
//  ugly-stuff
//
//  Created by Henrique Dev on 05/02/16.
//  Copyright © 2016 Henrique. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    let uglyThings = ["http://i.telegraph.co.uk/multimedia/archive/01565/blobfish_1565953c.jpg", "https://s-media-cache-ak0.pinimg.com/originals/f1/9a/51/f19a5199180cc1f5c82bb5367fca65b8.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return uglyThings.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("UglyCell") as? UglyCell {
            
            var img: UIImage!
            
            let url = NSURL(string: uglyThings[indexPath.row])!
            if let data = NSData(contentsOfURL: url) {
                img = UIImage(data: data)
                cell.configureCell(img, text: "Arhhhhhhhg")
            } else {
                let failImg = UIImage(named: "dog")
                cell.configureCell(failImg!, text: "The server failed on finding an image.")
            }
            
            return cell
        } else {
            return UglyCell()
        }
    }
}

