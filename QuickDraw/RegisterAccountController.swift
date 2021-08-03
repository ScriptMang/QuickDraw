//
//  RegisterAccountController.swift
//  QuickDraw
//
//  Created by Andy Peralta on 7/12/21.
//

import UIKit
import CryptoSwift
class RegisterAccountController: UIViewController {

    private lazy var createAccountButton: UIButton = {
        let button =  UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Create Account", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(self, action: #selector(sendToProfilepage), for: .touchUpInside)
        button.backgroundColor = .blue

        return button
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBackground
        print("ViewController2 is ready to go baby")
        let regstrScreenUI = RegisterAccountScreenUI(frame:
        CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))

        view.addSubview(regstrScreenUI)
        view.addSubview(createAccountButton)

        NSLayoutConstraint.activate([
            createAccountButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 100),
            createAccountButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
        ])
    }

    @objc func sendToProfilepage() {
        let vc = HomePageVC()
        vc.view.backgroundColor = .systemBackground
        navigationController?.pushViewController(vc, animated: true)
    }
}
