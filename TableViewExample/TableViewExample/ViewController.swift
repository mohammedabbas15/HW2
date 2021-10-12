//
//  ViewController.swift
//  TableViewExample
//
//  Created by Field Employee on 10/12/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // These strings in the array will fill in the table view cells
    let months: [String] = ["Jan", "Feb", "Mar", "Apr", "May", "Jun",
                            "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    // Cells that scroll out of view can be reused
    let cellReuseID: String = "Empty"
    
    @IBOutlet var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "TableviewCell")
        tableView.dataSource = self
    }
    
    // Number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.months.count
    }
    
    // Create a cell for each row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // create a new cell if needed or reuse an old one
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableviewCell", for: indexPath)
            // set the text from the data model
            cell.textLabel?.text = self.months[indexPath.row]
            
            return cell
        }
}

