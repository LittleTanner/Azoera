//
//  AzoeraButton.swift
//  Azoera
//
//  Created by Kevin Tanner on 9/2/19.
//  Copyright © 2019 trevorAdcock. All rights reserved.
//

import UIKit

class AzoeraButton: UIButton {

    // MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // update font
        updateFont(to: FontNames.latoRegular)
        
        // change the UI
        setupUI()
    }
    
    func updateFont(to fontName: String) {
        guard let size = titleLabel?.font.pointSize else { return }
        self.titleLabel?.font = UIFont(name: fontName, size: size)
    }
    
    func setupUI() {
        backgroundColor = .greenAccent
        setTitleColor(.mainTextColor, for: .normal)
        addCornerRadius(8)
    }

}
