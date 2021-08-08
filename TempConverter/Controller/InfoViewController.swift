//
//  InfoViewController.swift
//  TempConverter
//
//  Created by guna.vendina on 31/07/2021.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var appInfoLabel: UILabel!
    
    @IBOutlet weak var descriptionResultLabel: UILabel!

    var infoText = "My home-task was to create a temperature converter, and the current result is:"
    let descResultText = ""
    //"\(celsiusTemp) ºC = \(convertedTempString)"
        
        override func viewDidLoad() {
            super.viewDidLoad()
            descriptionResultLabel.text = descResultText
            
            if !infoText.isEmpty && !descResultText.isEmpty{
                appInfoLabel.text = infoText
                descriptionResultLabel.text = descResultText
            }
            
        }
    }
    

    

