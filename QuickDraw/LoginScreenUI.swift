//
//  LoginScreenUI.swift
//  QuickDraw
//
//  Created by Andy Peralta on 6/29/21.
//

import UIKit

class LoginScreenUI: UIView {


    private lazy var  bigTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "QuickDraw"
        label.font = UIFont(name: "Hiragino Mincho ProN W3", size: 40)
        label.textColor = .black
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.sizeToFit()

        return label
    }()

    private lazy var  userNameLabel: UITextField = {
        let userName = UITextField()
        userName.placeholder = "Enter your Username"
        userName.textAlignment = .left
        userName.layer.borderColor = UIColor.blue.cgColor
        userName.layer.borderWidth = 1
        userName.translatesAutoresizingMaskIntoConstraints = false
        userName.font = UIFont(name: "Hiragino Mincho ProN W3", size:  20)
        userName.sizeToFit()

        return userName
    }()

    private lazy var  passwordLabel: UITextField = {
        let label = UITextField()
        label.placeholder = "Enter your Password"
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.borderColor = UIColor.blue.cgColor
        label.layer.borderWidth = 1
        label.font = UIFont(name: "Hiragino Mincho ProN W3", size:  20)
        label.sizeToFit()

        return label
    }()

    //MARK: LoginStack
    private lazy var userCred: UIStackView = {
        let loginStack = UIStackView(arrangedSubviews: [userNameLabel, passwordLabel])
        loginStack.translatesAutoresizingMaskIntoConstraints = false
        loginStack.axis = .vertical
        loginStack.spacing = 10

        return loginStack
    }()

    private lazy var  signInButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.blue.cgColor
        button.setTitle("Sign In", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false

        return button
    }()

    private lazy var  registerButton: UIButton = {
        let button = UIButton(type: .system)
//      button.layer.borderWidth = 1
//      button.layer.borderColor = UIColor.blue.cgColor
        button.setTitle("Create account", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false

        return button
    }()

    private func setupViews() {
        for sub in [userCred, signInButton, registerButton, bigTitleLabel] {
            sub.translatesAutoresizingMaskIntoConstraints = false
            addSubview(sub)
        }
        NSLayoutConstraint.activate([
            //UserLogin Stack
            userCred.centerXAnchor.constraint(equalTo: leadingAnchor, constant:  200),
            userCred.centerYAnchor.constraint(equalTo: topAnchor, constant: 400),

            //SignIn Button
            signInButton.widthAnchor.constraint(equalToConstant: 200),
            signInButton.heightAnchor.constraint(equalToConstant: 50),

            registerButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 100),
            registerButton.topAnchor.constraint(equalTo: topAnchor, constant: 450),


            signInButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 100),
            signInButton.topAnchor.constraint(equalTo: topAnchor, constant: 600),

            bigTitleLabel.centerXAnchor.constraint(equalTo: leadingAnchor, constant:  200),
            bigTitleLabel.centerYAnchor.constraint(equalTo: topAnchor, constant: 100),

        ])
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
