//
//  ViewController.swift
//  Screen setting
//
//  Created by Anton Akhmedzyanov on 06.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var mainView: UIView!
    
    @IBOutlet var redIndex: UILabel!
    @IBOutlet var greenIndex: UILabel!
    @IBOutlet var blueIndex: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNumberIndex()
        setUpSlider()
        mainView.layer.cornerRadius = 10
    }
    
    @IBAction func setUpRedIndex() {
        redIndex.text = String(redSlider.value)
        setUpMainView()
    }
    
    @IBAction func setUpGreenIndex() {
        greenIndex.text = String(greenSlider.value)
        setUpMainView()
    }
    
    @IBAction func setUpBlueIndex() {
        blueIndex.text = String(blueSlider.value)
        setUpMainView()
    }

    // MARK: - Private funcs
    private func setUpSlider() {
        redSlider.minimumTrackTintColor = .red
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        
        greenSlider.minimumTrackTintColor = .green
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
    }
    private func setUpNumberIndex() {
        redIndex.text = String(redSlider.value)
        redIndex.textColor = .red
        
        greenIndex.text = String(greenSlider.value)
        greenIndex.textColor = .green
        
        blueIndex.text = String(blueSlider.value)
        blueIndex.textColor = .blue
    }
    private func setUpMainView() {
        mainView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                           green: CGFloat(greenSlider.value),
                                           blue: CGFloat(blueSlider.value),alpha: 1)
    }
}
