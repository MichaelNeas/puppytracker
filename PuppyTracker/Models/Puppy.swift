//
//  Puppy.swift
//  PuppyTracker
//
//  Created by Michael Neas on 2/19/18.
//  Copyright © 2018 Michael Neas. All rights reserved.
//

import UIKit
import os.log

class Puppy: NSObject, NSCoding {
    //MARK: Properties
    /// Each constant corresponds to one of the three properties of Puppy.
    /// static indicates that these constants belong to the structure itself, not to instances of the structure
    struct PropertyKey {
        static let name = "name"
        static let photo = "photo"
        static let rating = "rating"
    }
    
    var name: String
    var photo: UIImage?
    var rating: Int
    

    //MARK: Archiving Paths
    /// static so there will only ever be one copy of these properties, no matter how many instances of the Puppy class you create. 
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("puppies")
    
    //MARK: Initialization
    init?(name: String, photo: UIImage?, rating: Int) {
        // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
        // The rating must be between 0 and 5 inclusively
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
    }
    
    // The encode(with:) method prepares the class’s information to be archived, and the initializer unarchives the data when the class is created.
    func encode(with coder: NSCoder) {
        coder.encode(name, forKey: PropertyKey.name)
        coder.encode(photo, forKey: PropertyKey.photo)
        coder.encode(rating, forKey: PropertyKey.rating)
    }
    /// `required` modifier means this initializer must be implemented on every subclass, if the subclass defines its own initializers
    /// `convenience` modifier means that this is a secondary initializer, and that it must call a designated initializer from the same class.
    /// `?` means failable and can return nil
    required convenience init?(coder: NSCoder) {
        guard let name = coder.decodeObject(forKey: PropertyKey.name) as? String else {
            os_log("Unable to decode the name for a Puppy object.", log: OSLog.default, type: .debug)
            return nil
        }
        let rating = coder.decodeInteger(forKey: PropertyKey.rating)
        let photo = coder.decodeObject(forKey: PropertyKey.photo) as? UIImage
        
        // convenience requires calling a designated init
        self.init(name: name, photo: photo, rating: rating)
    }
}
