//
//  ViewController.swift
//  SchemesDemo
//
//  Created by Hager Elsayed on 11/12/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("EndpointURL", Env().configure(InfoPlistKey.EndpointURL))
    }


}

