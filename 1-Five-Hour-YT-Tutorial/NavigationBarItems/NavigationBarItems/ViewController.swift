//
//  ViewController.swift
//  NavigationBarItems
//
//  Created by Anastasija on 24.3.22..
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.navigationController?.interactivePopGestureRecognizer?.delegate = nil
        
        title = "Bar Items"
        view.backgroundColor = .systemMint
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        view.addSubview(button)
        button.center = view.center
        button.backgroundColor = .black
        button.setTitle("Go To View 2", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        navigationController?.navigationBar.tintColor = .label
        
        configureItems()
    }
    
    //config bar button items
    //these buttons are a part of .self, they will dissapear when you transition to another screen
    private func configureItems() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: nil)
    }
    
    private func createCustomView(color: UIColor, innerText: String) -> UILabel {
        let customView = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        customView.text = innerText
        customView.textAlignment = .center
        customView.backgroundColor = color
        customView.layer.cornerRadius = 8
        customView.layer.masksToBounds = true     //without this line the layer.cornerRadius will not be applied
        return customView
    }
    
    private func createViewController(nameOfVC: String, colorOfVC: UIColor)-> UIViewController{
        let vc = UIViewController()
        vc.title = nameOfVC
        vc.view.backgroundColor = colorOfVC

//        vc.navigationItem.rightBarButtonItem = UIBarButtonItem(
//            title: "Sign Out",
//            style: .done,
//            target: self,
//            action: nil)
//        vc.navigationItem.leftBarButtonItem = UIBarButtonItem(
//            image: UIImage(systemName: "gear"),
//            style: .done,
//            target: self,
//            action: nil)
        
        let customView = createCustomView(color: .orange, innerText: "Hello")
        vc.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: customView)
        //my error - didn't write vc. so it added the button to the current view instead of the custom view that is created
        
        return vc
    }
    
    var myVC: UIViewController?
    
    @objc func didTapButton(vc: UIViewController) {
        //creating a view controller we will transition to - vc
        let vc = createViewController(nameOfVC: "View 2", colorOfVC: .green)
        myVC = vc
        navigationController?.pushViewController(vc, animated: true)
    }

}


