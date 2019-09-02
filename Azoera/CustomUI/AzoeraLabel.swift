//
//  AzoeraLabel.swift
//  Azoera
//
//  Created by Kevin Tanner on 9/2/19.
//  Copyright © 2019 trevorAdcock. All rights reserved.
//

import UIKit

class AzoeraLabel: UILabel {

    // MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        
        updateFont(to: FontNames.latoRegular)
        textColor = .mainTextColor
    }

    // MARK: - Custom Methods
    func updateFont(to fontName: String) {
        let size = font.pointSize
        self.font = UIFont(name: fontName, size: size)
    }
}

class BoldAzoeraLabel: AzoeraLabel {
    
    // MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        
        updateFont(to: FontNames.latoBold)
    }
}

class LightAzoeraLabel: AzoeraLabel {
    
    // MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        
        updateFont(to: FontNames.latoLight)
        textColor = .subtleTextColor
    }
}
