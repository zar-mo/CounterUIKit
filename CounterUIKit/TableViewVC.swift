//
//  TableViewVC.swift
//  CounterUIKit
//
//  Created by Abouzar Moradian on 8/29/24.
//

import UIKit

class TableViewVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let rainbow: [UIColor] = [.red, .yellow, .green, .orange, .blue, .purple, .magenta]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rainbow.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        cell.backgroundColor = rainbow[indexPath.item]
        
        var content = cell.defaultContentConfiguration()
        content.text = rainbow[indexPath.item].accessibilityName.capitalized
        cell.contentConfiguration = content
        return cell
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
}
