//
//  PuppyTableViewController.swift
//  PuppyTracker
//
//  Created by Michael Neas on 9/26/19.
//  Copyright © 2019 Michael Neas. All rights reserved.
//

import UIKit
import os.log

class PuppyTableViewController: UITableViewController {

    var puppies = [Puppy]()
    let cellIdentifier = "PuppyTableViewCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        // editButton comes for free and has editing behavior built into it
        navigationItem.leftBarButtonItem = editButtonItem
        
        if let savedPups = loadPups() {
            puppies += savedPups
        } else {
            loadSamplePups()
        }
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
    
    //  To perform any sort of editing on a table view, you need to implement one of its delegate methods, tableView(_:commit:forRowAt:). This delegate method manages changes to the table rows when it’s in editing mode.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            puppies.remove(at: indexPath.row)
            savePups()
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    
    // sets all cells to be editable
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
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
    
    private func savePups() {
        // try to archive the puppies, bool success return
        let isSuccessfulSave = NSKeyedArchiver.archiveRootObject(puppies, toFile: Puppy.ArchiveURL.path)
        if isSuccessfulSave {
            os_log("Puppies are save", log: OSLog.default, type: .debug)
        } else {
            os_log("Failed to save the puppies", log: OSLog.default, type: .error)
        }
    }
    
    private func loadPups() -> [Puppy]? {
        return NSKeyedUnarchiver.unarchiveObject(withFile: Puppy.ArchiveURL.path) as? [Puppy]
    }
    
    //MARK: Actions
    @IBAction func unwindToMealList(sender: UIStoryboardSegue) {
        if let sourceViewController = sender.source as? PuppyViewController,
            let puppy = sourceViewController.puppy {
            // existing vs new pups
            if let selectedIndexPath = tableView.indexPathForSelectedRow {
                puppies[selectedIndexPath.row] = puppy
                tableView.reloadRows(at: [selectedIndexPath], with: .none)
            } else {
                let newIndexPath = IndexPath(row: puppies.count, section: 0)
                puppies.append(puppy)
                // This animates the addition of a new row to the table view for the cell that contains information about the new meal.
                // The .automatic animation option uses the best animation based on the table’s current state,
                // and the insertion point’s location.
                tableView.insertRows(at: [newIndexPath], with: .automatic)
            }
            savePups()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        switch(segue.identifier ?? "") {
        case "AddItem":
            os_log("Adding new pupper.",  log: OSLog.default, type: .debug)
        case "ShowDetail":
            guard let pupDetailViewController = segue.destination as? PuppyViewController else {
                fatalError("Unexpected destinaltion: \(segue.destination)")
            }
            guard let selectedPupperCell = sender as? PuppyTableViewCell else {
                fatalError("Unexpected sender: \(String(describing: sender))")
            }
            guard let indexPath = tableView.indexPath(for: selectedPupperCell) else {
                fatalError("Selected cell is not displayed by the table")
            }
            let selectedPup = puppies[indexPath.row]
            pupDetailViewController.puppy = selectedPup
        default:
            fatalError("Unexpected segue identifier: \(String(describing: segue.identifier))")
        }
    }
}
