//
//  ViewController.swift
//  extentions-demo-YT-Guy
//
//  Created by Anastasija on 22.3.22..
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorizeButton: UIButton!
    @IBOutlet weak var wiggleButton: UIButton!
    @IBOutlet weak var dimButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func ColorizeBtnWasPressed(_ sender: Any) {
        colorizeButton.colorize()
    }
    @IBAction func WiggleBtnWasPressed(_ sender: Any) {
        wiggleButton.wiggle()
    }
    @IBAction func DimButtonWasPressed(_ sender: Any) {
        dimButton.dim()
    }
}

