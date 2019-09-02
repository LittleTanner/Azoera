//
//  WelcomeViewController.swift
//  Azoera
//
//  Created by Kevin Tanner on 9/2/19.
//  Copyright © 2019 trevorAdcock. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var loginToggleButton: UIButton!
    @IBOutlet weak var signupToggleButton: UIButton!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordConfirmTextField: UITextField!
    
    @IBOutlet weak var helpLabel: UILabel!
    @IBOutlet weak var faqButton: UIButton!
    
    @IBOutlet weak var signMeUpButton: UIButton!
    
    
    
    // MARK: - Lifecycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()

        stylizeSubviews()
    }
    
    // MARK: - Actions
    @IBAction func loginToggleButtonTapped(_ sender: Any) {
        
        UIView.animate(withDuration: 0.2) {
            
        // Side Buttons
        self.loginToggleButton.setTitleColor(.mainTextColor, for: .normal)
        self.signupToggleButton.setTitleColor(.subtleTextColor, for: .normal)
        
        // Text Field
        self.passwordConfirmTextField.isHidden = true
        
        // Help Buttons
        self.helpLabel.text = "Forgot?"
        self.faqButton.setTitle("Remind", for: .normal)
        
        // Sign Me Up Button
        self.signMeUpButton.setTitle("Log me in", for: .normal)
        }
    }
    
    @IBAction func signupToggleButtonTapped(_ sender: Any) {
        
        UIView.animate(withDuration: 0.2) {
        
        // Side Buttons
        self.loginToggleButton.setTitleColor(.subtleTextColor, for: .normal)
        self.signupToggleButton.setTitleColor(.mainTextColor, for: .normal)
        
        // Text Field
        self.passwordConfirmTextField.isHidden = false
        
        // Help Buttons
        self.helpLabel.text = "Help?"
        self.faqButton.setTitle("FAQ", for: .normal)
        
        // Sign Me Up Button
        self.signMeUpButton.setTitle("Sign me up", for: .normal)
        }
    }
    

    
    // MARK: - Custom Methods

    func stylizeSubviews() {
        loginToggleButton.rotate()
        signupToggleButton.rotate()
        view.backgroundColor = .spaceGray
        signupToggleButton.setTitleColor(.mainTextColor, for: .normal)
        loginToggleButton.setTitleColor(.subtleTextColor, for: .normal)
        faqButton.setTitleColor(.greenAccent, for: .normal)
    }

}
