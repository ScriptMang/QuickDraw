//
//  ViewController.swift
//  QuickDraw
//
//  Created by Andy Peralta on 6/8/21.
//

import UIKit
import CryptoSwift

class ViewController: UIViewController {

    

    override func viewDidLoad() {
        super.viewDidLoad()
        let loginView = LoginScreenUI()
        loginView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loginView)

        NSLayoutConstraint.activate([
            loginView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            loginView.topAnchor.constraint(equalTo: self.view.topAnchor),
            loginView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            loginView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
        ])
//        let user = "Loyd"
//        let pswd: Array<UInt8> = Array("Potatos".utf8)
//        let salt: Array<UInt8> = Array("mambo".utf8)
//
//        guard let key =
//        try? PKCS5.PBKDF2.init(password: pswd, salt: salt, iterations: 4096, keyLength: 32, variant: .sha256).calculate()
//        else {return}
//
//        print("This is my Key Hashed: \(key.toHexString())")
//        print("End of Statement")
        // Do any additional setup after loading the view.
    }



}
