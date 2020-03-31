//
//  MainViewController.swift
//  safariServicesiOS
//
//  Created by Fabrício Guilhermo on 31/03/20.
//  Copyright © 2020 Fabrício Guilhermo. All rights reserved.
//

import UIKit
import SafariServices

class MainViewController: UIViewController {

    // MARK: - UI elements

    /// Creates a text field to add a telephone number.
    private lazy var siteTextField: UITextField = {
        let siteTextField = UITextField(frame: .zero)
        siteTextField.translatesAutoresizingMaskIntoConstraints = false
        siteTextField.placeholder = "Site URL"
        siteTextField.textContentType = .telephoneNumber
        siteTextField.keyboardType = .numberPad
        siteTextField.clearButtonMode = .always

        return siteTextField
    }()

    /// Creates a button to send messages to the registered number.
    private lazy var searchSiteButton: UIButton = {
        let searchSiteButton = UIButton(type: .roundedRect)
        searchSiteButton.translatesAutoresizingMaskIntoConstraints = false
        searchSiteButton.setTitle("Acessar site", for: .normal)
        searchSiteButton.layer.cornerRadius = 35
        searchSiteButton.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        searchSiteButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        searchSiteButton.addTarget(self, action: #selector(searchSiteButtonAction(_ :)), for: .allEvents)

        return searchSiteButton
    }()

    // MARK: - Application lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        view.addSubview(siteTextField)
        view.addSubview(searchSiteButton)

        setupAutolayout()
    }

    // MARK: - Actions

    //
    @objc private func searchSiteButtonAction(_ sender: UIButton) {
        if let urlString = siteTextField.text {
            var urlFormatted = urlString
            if !urlFormatted.hasPrefix("http://") {
                urlFormatted = String(format: "http://%@", urlFormatted)
            }
            guard let url = URL(string: urlFormatted) else { return }
            let safariViewController = SFSafariViewController(url: url)
            self.present(safariViewController, animated: true, completion: nil)
        } else {
            
        }
    }
}

extension MainViewController {
    private func setupAutolayout() {
        siteTextField.leftAnchor
            .constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        siteTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        siteTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        siteTextField.heightAnchor.constraint(equalToConstant: 20).isActive = true

        searchSiteButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        searchSiteButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -40).isActive = true
        searchSiteButton.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 20).isActive = true
        searchSiteButton.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -20).isActive = true
        searchSiteButton.heightAnchor.constraint(equalToConstant: 70).isActive = true
    }
}
