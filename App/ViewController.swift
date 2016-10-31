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
        let presenter = DummyPresenter(apiClient: apiClient)
        presenter.makeGetRequest() { [weak self] response in
            self?.label.text = response
        }
    }
}

