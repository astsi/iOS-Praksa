//
//  ViewController.swift
//  DebugDemo
//
//  Created by Anastasija on 25.3.22..
//

import UIKit

class ViewController: UIViewController {
    
    var dev1 = Developer(name: "Pera", age: 30, languages: ["Swift","JavaScript"])
    var dev2 = Developer(name: "Zika", age: 62, languages: ["Ada","Fortran","Lisp"])

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        
        let rect = CGRect(x: 0, y: 0, width: 200, height: 21)
        let label = createLabel(text: dev1.name, rect: rect)
        let label2 = createLabel(text: dev2.name, rect: CGRect(x: 10, y: 10, width: 200, height: 21))
        
        view.addSubview(label)
        view.addSubview(label2)
    }
    
    func createLabel(text: String, rect:CGRect) -> UILabel{
        let label = UILabel(frame: rect)
        label.center = CGPoint(x: 150, y: 250)
        label.textAlignment = .center
        label.text = text
        return label
    }


}

