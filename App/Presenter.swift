//
//  Presenter.swift
//  App
//
//  Created by Tapan Thaker on 31/10/16.
//  Copyright © 2016 TT. All rights reserved.
//

import Foundation
import Networking

class DummyPresenter {

    let apiClient: APIClient

    init(apiClient: APIClient) {
        self.apiClient = apiClient
    }

    func makeGetRequest(onCompletion: @escaping (String) -> ()) {

        apiClient.request(url: "https://httpbin.org/get", params: nil, method: .get) { [weak self] (response) in
            onCompletion(response.leftOrElse(b: ["FOO": "BAR"]).description)
        }
    }
}
