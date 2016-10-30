//
//  ViewController.swift
//  App
//
//  Created by Tapan Thaker on 29/10/16.
//  Copyright © 2016 TT. All rights reserved.
//

import UIKit
import Networking

class ViewController: UIViewController {

    let apiClient = APIClient()
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        apiClient.request(url: "https://httpbin.org/get", params: nil, method: .get) { [weak self] (response) in


            self?.label.text = response.leftOrElse(b: ["FOO": "BAR"]).description


        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

