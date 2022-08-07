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
        setUpMainView() 
        setUpNumberIndex()
        setUpSlider()
        mainView.layer.cornerRadius = 10
    }
    
    @IBAction func setUpRedIndex() {
        redIndex.text = String(format: "%.2f", redSlider.value)
        setUpMainView()
    }
    
    @IBAction func setUpGreenIndex() {
        greenIndex.text = String(format: "%.2f", greenSlider.value)
        setUpMainView()
    }
    
    @IBAction func setUpBlueIndex() {
        blueIndex.text = String(format: "%.2f", blueSlider.value)
        setUpMainView()
    }

    // MARK: - Private funcs
    private func setUpSlider() {
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
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
