//
//  Alert.swift
//  safariServicesiOS
//
//  Created by Fabrício Guilhermo on 31/03/20.
//  Copyright © 2020 Fabrício Guilhermo. All rights reserved.
//

import UIKit

struct Alert {
//    private static func invalidateScreen(on viewController: UIViewController) {
//        let backgroundView = UIView(frame: CGRect(x: 0, y: 0, width: viewController.view.frame.width, height: viewController.view.frame.height))
//        backgroundView.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
//        backgroundView.alpha = 0.6
//        viewController.view.addSubview(backgroundView)
//    }
//
//    static func customAlert(on viewController: UIViewController, headerColor: UIColor, titleText: String, titleColor: UIColor, backgroundColor: UIColor, message text: String, fontColor: UIColor) {
//        invalidateScreen(on: viewController)
//
//        let messageBody = UIView()
//        messageBody.translatesAutoresizingMaskIntoConstraints = false
//        messageBody.backgroundColor = backgroundColor
//        viewController.view.addSubview(messageBody)
//
//        let message  = UILabel()
//        message.translatesAutoresizingMaskIntoConstraints = false
//        message.numberOfLines = 0
//        message.text = text
//        messageBody.addSubview(message)
//
//        messageBody.leftAnchor.constraint(equalTo: viewController.view.leftAnchor, constant: 30).isActive = true
//        messageBody.rightAnchor.constraint(equalTo: viewController.view.rightAnchor, constant: -30).isActive = true
//        messageBody.centerYAnchor.constraint(equalTo: viewController.view.centerYAnchor).isActive = true
//        messageBody.centerXAnchor.constraint(equalTo: viewController.view.centerXAnchor).isActive = true
//
//        message.topAnchor.constraint(equalTo: messageBody.topAnchor, constant: 20).isActive = true
//        message.leftAnchor.constraint(equalTo: messageBody.leftAnchor, constant: 20).isActive = true
//        message.bottomAnchor.constraint(equalTo: messageBody.bottomAnchor, constant: -20).isActive = true
//        message.rightAnchor.constraint(equalTo: messageBody.rightAnchor, constant: -20).isActive = true
//
//        let header = UIView()
//        header.translatesAutoresizingMaskIntoConstraints = false
//        header.backgroundColor = headerColor
//        viewController.view.addSubview(header)
//
//        header.leftAnchor.constraint(equalTo: viewController.view.leftAnchor, constant: 30).isActive = true
//        header.bottomAnchor.constraint(equalTo: messageBody.topAnchor, constant: 0).isActive = true
//        header.rightAnchor.constraint(equalTo: viewController.view.rightAnchor, constant: -30).isActive = true
//        header.centerXAnchor.constraint(equalTo: viewController.view.centerXAnchor).isActive = true
//        header.heightAnchor.constraint(equalToConstant: 60).isActive = true
//
//        let title = UILabel()
//        title.translatesAutoresizingMaskIntoConstraints = false
//        title.text = titleText
//        title.textColor = titleColor
//        title.textAlignment = .center
//        header.addSubview(title)
//
//        title.leftAnchor.constraint(equalTo: header.leftAnchor, constant: 20).isActive = true
//        title.rightAnchor.constraint(equalTo: header.rightAnchor, constant: -20).isActive = true
//        title.centerYAnchor.constraint(equalTo: header.centerYAnchor).isActive = true
//
//    }

    static func showAlert(on viewController: UIViewController, with title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        viewController.present(alert, animated: true)
    }

    static func showErrorAlert(on viewController: UIViewController, message: String) {
        showAlert(on: viewController, with: "Erro", message: message)
    }
}
