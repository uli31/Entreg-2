//
//  HomeViewController.swift
//  GOW
//
//  Created by Alberti Ulises on 08/03/24.
//

import UIKit

class HomeViewController: UITableViewController {
    
    
    @IBOutlet var menuTableView: UITableView!
    
    let menuOptions : [MenuOption] = [
            MenuOption(
                title:"menu.option.videogames",
                image:"gamecontroller.fill",
                segue:"gamesSegue")
            , MenuOption(
                title:"menu.option.weapons",
                image:"shield.fill",
                segue:"weaponsSegue")
        ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuOptions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MenuOptionCell
        //cell.menuLabel.text = NSLocalizedString(menuOptions[indexPath.row].title, comment: "")
        cell.menuLabel.text = menuOptions[indexPath.row].title.localized
        //cell.menuLabel.text = menuOptions[indexPath.row].title.localized(withComment: "comment")
        
        cell.menuImage.image = UIImage(systemName: menuOptions[indexPath.row].image)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: menuOptions[indexPath.row].segue, sender: self)
    }
    
}
