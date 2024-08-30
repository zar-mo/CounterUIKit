//
//  PostTableVC.swift
//  CounterUIKit
//
//  Created by Abouzar Moradian on 8/29/24.
//

import UIKit

class PostTableVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
   
    let posts = [
        (title: "Beautiful Sunset", image: UIImage(named: "sunset.jpg"), caption: "A beautiful sunset at the beach."),
        (title: "City Skyline", image: UIImage(named: "city.jpg"), caption: "The city skyline looks amazing at night."),
        (title: "Mountain Trek", image: UIImage(named: "mountain.jpg"), caption: "Hiking the mountains is so refreshing.")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        tableView.dataSource = self
        tableView.delegate = self
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath) as? PostTableViewCell else {
            fatalError("The dequeued cell is not an instance of PostTableViewCell.")
        }

      
        let post = posts[indexPath.row]
        
      
        cell.titleLabel.text = post.title
        cell.postImageView.image = post.image
        cell.captionLabel.text = post.caption

        return cell
    }


    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
}

