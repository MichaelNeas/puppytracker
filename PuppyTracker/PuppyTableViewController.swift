//
//  PuppyTableViewController.swift
//  PuppyTracker
//
//  Created by Michael Neas on 9/26/19.
//  Copyright © 2019 Michael Neas. All rights reserved.
//

import UIKit

class PuppyTableViewController: UITableViewController {

    var puppies = [Puppy]()
    let cellIdentifier = "PuppyTableViewCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        loadSamplePups()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return puppies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? PuppyTableViewCell else {
            fatalError("The dequeued cell is not an instance of PuppyTableViewCell.")
        }
        let pup = puppies[indexPath.row]
        cell.nameLabel.text = pup.name
        cell.pupperImageView.image = pup.photo
        cell.pupperRatingControl.rating = pup.rating
        return cell
    }
    
    private func loadSamplePups() {
        let pupImage1 = UIImage(named: "pup1")
        let pupImage2 = UIImage(named: "pup2")
        let pupImage3 = UIImage(named: "pup3")
        
        guard let pup1 = Puppy(name: "Remi", photo: pupImage1, rating: 4) else {
            fatalError("Unable to instantiate pup1")
        }
        
        guard let pup2 = Puppy(name: "Otis", photo: pupImage2, rating: 5) else {
            fatalError("Unable to instantiate pup2")
        }
        
        guard let pup3 = Puppy(name: "Remi?", photo: pupImage3, rating: 3) else {
            fatalError("Unable to instantiate pup3")
        }
        
        puppies += [pup1, pup2, pup3]
    }
    
    //MARK: Actions
    @IBAction func unwindToMealList(sender: UIStoryboardSegue) {
        if let sourceViewController = sender.source as? PuppyViewController,
            let puppy = sourceViewController.puppy {
            let newIndexPath = IndexPath(row: puppies.count, section: 0)
            puppies.append(puppy)
            // This animates the addition of a new row to the table view for the cell that contains information about the new meal.
            // The .automatic animation option uses the best animation based on the table’s current state,
            // and the insertion point’s location. 
            tableView.insertRows(at: [newIndexPath], with: .automatic)
        }
    }
    
}
