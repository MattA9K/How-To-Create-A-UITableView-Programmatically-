//
//  ViewController.swift
//  ProgrammaticUITableView
//
//  Created by Matt Andrzejczuk on 3/8/17.
//  Copyright © 2017 Matt Andrzejczuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableViewMain : UITableView!
    let tvitems: [String] = ["We msdjngtkj sdrgkjhskdjh", "Heart", "Swift"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = .systemBlue
        self.initializeTableView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func initializeTableView() {
        let rect = CGRect(x: 8, y: 60, width: 300, height: 400)
        self.tableViewMain = UITableView(frame: rect)
        self.tableViewMain.register(UITableViewCell.self, forCellReuseIdentifier: "cellThing");
        self.tableViewMain.delegate = self
        self.tableViewMain.dataSource = self
        self.view.addSubview(tableViewMain)
        self.tableViewMain.reloadData()
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell : UITableViewCell = self.tableViewMain.dequeueReusableCell(withIdentifier: "cellThing") as! UITableViewCell
        cell.textLabel!.text = tvitems[indexPath.row];
        return cell
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tvitems.count;
    }
}
