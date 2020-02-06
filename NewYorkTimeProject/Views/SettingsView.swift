//
//  SettingsView.swift
//  NewYorkTimeProject
//
//  Created by Gregory Keeley on 2/5/20.
//  Copyright © 2020 Gregory Keeley. All rights reserved.
//

import UIKit

class SettingsView: UIView {
    
    public var picker: UIPickerView = {
        let pick = UIPickerView()
        return pick
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    private func commonInit() {
        pickerConstraints()
    }
    
    private func pickerConstraints() {
        addSubview(picker)
        picker.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            picker.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            picker.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            picker.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            picker.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
    
}
