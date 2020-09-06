//
//  ViewController.swift
//  SwiftExtension
//
//  Created by Noor ul Ain Ali on 08/07/2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let today = Date()
        print(today.dateString(in: "MMM dd, yyyy"))
        print(today.dateString(in: "EEE dd-MM-YYYY"))
    }

}
