//
//  ViewController.swift
//  WarApp
//
//  Created by Christopher Ching on 2017-09-26.
//  Copyright © 2017 Christopher Ching. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftscore = 0
    var rightscore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func dealTapped(_ sender: Any)
    {
        
        //randomize cards
        let leftNumber = arc4random_uniform(13) + 2

        let rightNumber = arc4random_uniform(13) + 2
        
        //display cards
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber
        {
            leftscore = leftscore + 1
            leftScoreLabel.text = String(leftscore)
        }
        else if rightNumber > leftNumber
        {
            rightscore = rightscore + 1
            rightScoreLabel.text = String(rightscore)
        }
        else if rightNumber == leftNumber
        {
            
        }
    }
    
    @IBAction func resetTapped(_ sender: Any)
    {
        //randomize cards
        let leftNumber = 0
        
        let rightNumber = 0
        
        //display cards
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        leftScoreLabel.text = String(leftNumber)
        rightScoreLabel.text = String(rightNumber)
    }
    
    
    
}

