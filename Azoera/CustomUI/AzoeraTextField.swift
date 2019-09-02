//
//  AzoeraTextField.swift
//  Azoera
//
//  Created by Kevin Tanner on 9/2/19.
//  Copyright © 2019 trevorAdcock. All rights reserved.
//

import UIKit

class AzoeraTextField: UITextField {
    
    // MARK: - Lifecycle Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        
        updateFont(to: FontNames.latoRegular)
        setupUI()
    }
    
    func setupUI() {
        updatePlaceholderColor()
        textColor = .mainTextColor
        backgroundColor = .blackOverlay
        tintColor = .mainTextColor
        addAccentBorder()
        addCornerRadius(8)
        layer.masksToBounds = true
    }
    
    func updatePlaceholderColor() {
        
        let placeholderText = placeholder ?? ""
        
        self.attributedPlaceholder = NSAttributedString(string: placeholderText,
                                                        attributes: [.foregroundColor : UIColor.subtleTextColor,
                                                                     .font: UIFont(name: FontNames.latoLight, size: 16)!])
    }
    
    
    func updateFont(to fontName: String) {
        guard let size = font?.pointSize else { return }
        font = UIFont(name: fontName, size: size)
    }

    
}
