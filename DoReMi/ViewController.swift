//
//  ViewController.swift
//  DoReMi
//
//  Created by Jason Schatz on 11/18/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource {

    // Use this string property as your reuse identifier, 
    // Storyboard has been set up for you using this String.
    let cellReuseIdentifier = "MyCellReuseIdentifier"
    
    // Choose some data to show in your table
    
    let model = [
      ["text": "Do", "detail": "Dodo bird"],
      ["text": "Re", "detail": "Renegades"],
      ["text": "Mi", "detail": "Micky Mouse"],
      ["text": "Fa", "detail": "Fallacies"]
    ]
    
    // Add the two essential table data source methods here
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return self.model.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCellWithIdentifier(self.cellReuseIdentifier)! as UITableViewCell
      let data = self.model[indexPath.row]
      cell.textLabel?.text = data["text"]
      cell.detailTextLabel?.text = data["detail"]
      return cell
    }

}

