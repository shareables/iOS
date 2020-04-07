//
//  ViewController.swift
//  shareables
//
//  Created by Kirin Patel on 4/7/20.
//  Copyright © 2020 Kirin Patel. All rights reserved.
//

import UIKit
import AuthenticationServices

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginProviderStackView: UIStackView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupProviderLoginView()
    }

    func setupProviderLoginView() {
        let authorizationButton = ASAuthorizationAppleIDButton()
        self.loginProviderStackView.addArrangedSubview(authorizationButton)
    }

}

