//
//  ViewController.swift
//  Flashcards
//
//  Created by Phuong Ho on 2/8/20.
//  Copyright © 2020 Phuong Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var frontLabel: UILabel!
    @IBOutlet weak var backLabel: UILabel!
    @IBOutlet weak var card: UIView!
    
    @IBOutlet weak var btnOptionOne: UIButton!
    @IBOutlet weak var btnOptionTwo: UIButton!
    @IBOutlet weak var btnOptionThree: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Give the round corners
        card.layer.cornerRadius = 20.0
        card.layer.shadowRadius = 15.0
        card.layer.shadowOpacity = 0.2
        card.clipsToBounds = true
        
        //Style buttons
        btnOptionOne.layer.borderWidth = 0.3
        btnOptionOne.layer.borderColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        btnOptionOne.layer.cornerRadius = 20.0
        btnOptionOne.layer.shadowRadius = 15.0
        btnOptionOne.layer.shadowOpacity = 0.2
        
        btnOptionTwo.layer.borderWidth = 0.3
        btnOptionTwo.layer.borderColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        btnOptionTwo.layer.cornerRadius = 20.0
        btnOptionTwo.layer.shadowRadius = 15.0
        btnOptionTwo.layer.shadowOpacity = 0.2
        
        btnOptionThree.layer.borderWidth = 0.3
        btnOptionThree.layer.borderColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        btnOptionThree.layer.cornerRadius = 20.0
        btnOptionThree.layer.shadowRadius = 15.0
        btnOptionThree.layer.shadowOpacity = 0.2
    }
    
    @IBAction func didTapOnFlashcards(_ sender: Any) {
        if(frontLabel.isHidden == true){
            backLabel.isHidden = true
            frontLabel.isHidden = false
        }
        else{
            frontLabel.isHidden = true
            backLabel.isHidden = false
        }
    }
    
    @IBAction func didTapOptionOne(_ sender: Any) {
        btnOptionOne.isHidden = true
    }
    
    @IBAction func didTapOptionTwo(_ sender: Any) {
        btnOptionTwo.isHidden = true
        btnOptionOne.isHidden = true
        btnOptionThree.isHidden = true
        frontLabel.isHidden = true
    }
    
    @IBAction func didTapOptionThree(_ sender: Any) {
        btnOptionThree.isHidden = true
    }
}
