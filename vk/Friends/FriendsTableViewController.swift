//
//  FriendsListViewController.swift
//  vk
//
//  Created by Mikhail Rumyantsev on 18.10.2021.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    var friends = [
        User(name: "Tom", avatar: UIImage(named: "1"), image: UIImage(named: "1")),
        User(name: "Alex", avatar: UIImage(named: "2"), image: UIImage(named: "2")),
        User(name: "Robert", avatar: UIImage(named: "3"), image: UIImage(named: "3")),
        User(name: "John", avatar: UIImage(named: "4"), image: UIImage(named: "4")),
        User(name: "Tim", avatar: UIImage(named: "5"), image: UIImage(named: "5")),
        User(name: "Mark", avatar: UIImage(named: "6"), image: UIImage(named: "6")),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "friendTableViewCell", for: indexPath) as? FriendTableViewCell else { return UITableViewCell() }
        
        let friend = friends[indexPath.row]
        
        cell.nameLabel.text = friend.name
        cell.avatarImageView.image = friend.image
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "viewFriend" else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let destination = segue.destination as? FriendCollectionViewController else { return }
        
        destination.friend = friends[indexPath.row]
    }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
