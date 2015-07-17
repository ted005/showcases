//
//  ViewController.swift
//  ClearStyle
//
//  Created by Robbie on 15/7/17.
//  Copyright (c) 2015年 Ted Wei. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var todoItmes = [TodoItem]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if todoItmes.count > 0 {
            return
        }
        
        todoItmes.append(TodoItem(text: "feed the cat"))
        todoItmes.append(TodoItem(text: "buy eggs"))
        todoItmes.append(TodoItem(text: "watch WWDC videos"))
        todoItmes.append(TodoItem(text: "rule the Web"))
        todoItmes.append(TodoItem(text: "buy a new iPhone"))
        todoItmes.append(TodoItem(text: "darn holes in socks"))
        todoItmes.append(TodoItem(text: "write this tutorial"))
        todoItmes.append(TodoItem(text: "master Swift"))
        todoItmes.append(TodoItem(text: "learn to draw"))
        todoItmes.append(TodoItem(text: "get more exercise"))
        todoItmes.append(TodoItem(text: "catch up with Mom"))
        todoItmes.append(TodoItem(text: "get a hair cut"))
        
        tableView.dataSource = self
        tableView.delegate = self
        //mark
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        tableView.separatorStyle = .None
        tableView.rowHeight = 50.0
        tableView.backgroundColor = UIColor.blackColor()
    }

    //MARK: datasource
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoItmes.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
                    as! UITableViewCell
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        cell.textLabel?.text = todoItmes[indexPath.row].text
        return cell
    }


}

