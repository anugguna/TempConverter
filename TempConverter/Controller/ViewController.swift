//
//  ViewController.swift
//  TempConverter
//
//  Created by guna.vendina on 31/07/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var convertedTempLabel: UILabel!
    @IBOutlet weak var tempSlider: UISlider!{
        didSet{
            tempSlider.maximumValue = 100
            tempSlider.minimumValue = -100
            tempSlider.value = 0
        }
    }
    @IBOutlet weak var tempSegmentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        convertedTempLabel.text = "32 ºF"
        
    }


    @IBAction func sliderValueChanged(_ sender: Any) {
        //print("tempSlider:" , tempSlider.value)
        UpdateTempLabelForSlider(value: tempSlider.value)
        
        
    }
    @IBAction func segmentValueChanged(_ sender: UISegmentedControl) {
        UpdateTempLabelForSlider(value: tempSlider.value)
    }
    
    func UpdateTempLabelForSlider(value: Float){
        let celsiusTemp = Int(value)
        celsiusLabel.text = "\(celsiusTemp) ºC"
    
        var convertedTempString = ""
        switch tempSegmentControl.selectedSegmentIndex {
        
        case 0:
            let fahrenheitTempString = String(format: "%.2F", convertTempFrom(celsius: celsiusTemp).fahrenheit)
            convertedTempString = fahrenheitTempString + " ºF"
        default:
            let kelvinTempString = String(format: "%.2F", convertTempFrom(celsius: celsiusTemp).kelvin)
            convertedTempString = kelvinTempString + " ºK"
        
        }
        convertedTempLabel.text = convertedTempString
    }
    func convertTempFrom(celsius: Int) -> (fahrenheit: Double, kelvin: Double) {
        let fahrenheit = (Double(celsius) * 9 / 5) + 32
        let kelvin = Double(celsius) + 273.15
        return (fahrenheit, kelvin)
    }

}


