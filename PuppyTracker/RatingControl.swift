//
//  RatingControl.swift
//  PuppyTracker
//
//  Created by Michael Neas on 2/19/18.
//  Copyright © 2018 Michael Neas. All rights reserved.
//

import UIKit

@IBDesignable class RatingControl: UIStackView {
    //MARK: Properties
    private var ratingButtons = [UIButton]()
    var rating = 0 {
        didSet {
            updateButtonSelectionStates()
        }
    }
    @IBInspectable var starSize: CGSize = CGSize(width: 44.0, height: 44.0) {
        didSet {
            setupButtons()
        }
    }
    @IBInspectable var starCount: Int = 5 {
        didSet {
            setupButtons()
        }
    }
    
    //MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK: Button Action
    @objc func ratingButtonTapped(button: UIButton) {
        guard let index = ratingButtons.firstIndex(of: button) else{
            fatalError("The button, \(button), is not in the ratings array: \(ratingButtons)")
        }
        let selectedRating = index+1
        if selectedRating == rating {
            rating = 0
        } else {
            rating = selectedRating
        }
    }
    
    //MARK: Private methods
    private func setupButtons(){
        // clear any existing buttons
        for button in ratingButtons {
            removeArrangedSubview(button)
            button.removeFromSuperview()
        }
        ratingButtons.removeAll()
        
        let bundle = Bundle(for: type(of:self))
        let filledDoggo = UIImage(named: "filledPupper", in: bundle, compatibleWith: self.traitCollection)
        let emptyDoggo = UIImage(named: "emptyPupper", in: bundle, compatibleWith: self.traitCollection)
        let highlightedDoggo = UIImage(named: "highlightedDoggo", in: bundle, compatibleWith: self.traitCollection)

        for index in 0..<starCount {
            //create a button
            let button = UIButton()
            button.setImage(emptyDoggo, for: .normal)
            button.setImage(filledDoggo, for: .selected)
            button.setImage(highlightedDoggo, for: .highlighted)
            button.setImage(highlightedDoggo, for: [.highlighted, .selected])
            //constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: starSize.height).isActive = true
            button.widthAnchor.constraint(equalToConstant: starSize.width).isActive = true
            
            //set the accessibility label
            button.accessibilityLabel = "Set \(index  + 1) star rating"
            
            //button action setup
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
            
            //add button to the stack
            addArrangedSubview(button)
            
            //push button on array
            ratingButtons.append(button)
        }
        updateButtonSelectionStates()
    }
    
    private func updateButtonSelectionStates(){
        for(index, button) in ratingButtons.enumerated() {
            button.isSelected = index < rating
            
            // Set the hint string for the currently selected star
            let hintString: String?
            if rating == index + 1 {
                hintString = "Tap to reset the rating to zero."
            } else {
                hintString = nil
            }
            
            // Calculate the value string
            let valueString: String
            switch (rating) {
            case 0:
                valueString = "No rating set."
            case 1:
                valueString = "1 star set."
            default:
                valueString = "\(rating) stars set."
            }
            
            // Assign the hint string and value string
            button.accessibilityHint = hintString
            button.accessibilityValue = valueString
        }
    }
}
