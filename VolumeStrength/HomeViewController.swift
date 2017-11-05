//
//  HomeViewController.swift
//  VolumeStrength
//
//  Created by Bryan Hayes on 11/5/17.
//  Copyright © 2017 DiGiHayes. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func logoutTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
