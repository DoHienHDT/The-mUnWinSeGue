//
//  MasTerTableViewController.swift
//  ThêmSửaXoá
//
//  Created by dohien on 5/21/18.
//  Copyright © 2018 dohien. All rights reserved.
//

import UIKit

class MasTerTableViewController: UITableViewController {
    
var numbers = Array(1...10)
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return numbers.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = String(numbers[indexPath.row])
        return cell
    }


    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        guard let detailViewController = unwindSegue.source as? DeTailViewController else { return  }
        if let index = tableView.indexPathForSelectedRow {
        numbers[index.row] = detailViewController.number!
//            tableView.reloadRows(at: [index], with: .none)
        } else {
            numbers.append(detailViewController.number!)
        }
        tableView.reloadData()
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailViewController = segue.destination as? DeTailViewController {
            if let index = tableView.indexPathForSelectedRow{
                detailViewController.number = numbers[index.row]
            }
        }
        
    }
    

}
