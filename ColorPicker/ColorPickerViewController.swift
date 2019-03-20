//
//  ColorPickerViewController.swift
//  ColorPicker
//
//  Created by Zach Swartz on 3/20/19.
//  Copyright © 2019 Zach Swartz. All rights reserved.
//

import UIKit

struct colorChoice {
    let colorName: String
    let colorValue: UIColor
}

class ColorPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet var backgroundView: UIView!
    
    var colorChoiceArray: [colorChoice] = [ colorChoice(colorName: "Red", colorValue: UIColor.red),
                                            colorChoice(colorName: "Orange", colorValue: UIColor.orange),
                                            colorChoice(colorName: "Yellow", colorValue: UIColor.yellow),
                                            colorChoice(colorName: "Green", colorValue: UIColor.green),
                                            colorChoice(colorName: "Blue", colorValue: UIColor.blue),
                                            colorChoice(colorName: "Purple", colorValue: UIColor.purple)
    ]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colorChoiceArray.count
    }
    
    // Loads the picker with our color values
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colorChoiceArray[row].colorName
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let initColorIndex = 0
        colorLabel.text = colorChoiceArray[initColorIndex].colorName
        pickerView.selectRow(initColorIndex, inComponent: 0, animated: true)
        backgroundView.backgroundColor = colorChoiceArray[initColorIndex].colorValue
    }
    
    // Handles updating the color label on picker change
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        colorLabel.text = colorChoiceArray[row].colorName
        backgroundView.backgroundColor = colorChoiceArray[row].colorValue
    }
    
    
}
