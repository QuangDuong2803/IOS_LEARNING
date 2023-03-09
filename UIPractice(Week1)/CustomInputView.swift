//
//  CustomInputView.swift
//  LearningBasicSwift
//
//  Created by Quang Duong on 3/9/23.
//

import Foundation
import UIKit

class CustomUIInputView: UIView {
    lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Email"
        label.font = .systemFont(ofSize: 14,
                                 weight: .regular)
        
        return label
    }()
    
    lazy var textInput: UITextField = {
        let textField = UITextField()
        let font = UIFont.systemFont(ofSize: 12,
                                     weight: .regular)
        textField.attributedPlaceholder = NSAttributedString(string: "Please Enter your email",
                                                             attributes: [.font: font])
        return textField
    }()
    
    lazy var rightICon: UIImageView = {
        let imageView = UIImageView()
        imageView.loadImage(url: "https://choxe.vn/blog/wp-content/uploads/2019/01/Mercedes-Benz.png")
        return imageView
    }()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupUI()
    }
    
    private func setupUI() {
        setupContentView()
        addLabel()
        addTextField()
        addRightIcon()
    }
    
    func setupContentView() {
        self.backgroundColor = .gray.withAlphaComponent(0.1)
        self.layer.cornerRadius = 6
    }
    
   func addLabel() {
        self.addSubview(label)
       
       label.translatesAutoresizingMaskIntoConstraints = false
       let leading = NSLayoutConstraint(item: label,
                                        attribute: .leading,
                                        relatedBy: .equal,
                                        toItem: self,
                                        attribute: .leading,
                                        multiplier: 1,
                                        constant: 10)
       
       let trailing = NSLayoutConstraint(item: label,
                                         attribute: .trailing,
                                         relatedBy: .equal,
                                         toItem: self,
                                         attribute: .trailing,
                                         multiplier: 1,
                                         constant: -10)
       
       let top = NSLayoutConstraint(item: label,
                                    attribute: .top,
                                    relatedBy: .equal,
                                    toItem: self,
                                    attribute: .top,
                                    multiplier: 1,
                                    constant: 10)
    
       NSLayoutConstraint.activate([leading,
                                    trailing,
                                    top])
    }
    
    func addTextField() {
        self.addSubview(textInput)
        
        textInput.translatesAutoresizingMaskIntoConstraints = false
        let top = NSLayoutConstraint(item: textInput,
                                     attribute: .top,
                                     relatedBy: .equal,
                                     toItem: label,
                                     attribute: .bottom,
                                     multiplier: 1,
                                     constant: 10)
        
        let leading = NSLayoutConstraint(item: textInput,
                                         attribute: .leading,
                                         relatedBy: .equal,
                                         toItem: self,
                                         attribute: .leading,
                                         multiplier: 1,
                                         constant: 10)
        
        let trailing = NSLayoutConstraint(item: textInput,
                                         attribute: .trailing,
                                         relatedBy: .equal,
                                         toItem: self,
                                         attribute: .trailing,
                                         multiplier: 1,
                                          constant: -10)
        
        let bottom = NSLayoutConstraint(item: textInput,
                                        attribute: .bottom,
                                        relatedBy: .equal,
                                        toItem: self,
                                        attribute: .bottom,
                                        multiplier: 1,
                                        constant: -10)
        
        NSLayoutConstraint.activate([top,
                                     leading,
                                     trailing,
                                     bottom])
    }
    
    func addRightIcon() {
        self.addSubview(rightICon)
        
        rightICon.translatesAutoresizingMaskIntoConstraints = true
        rightICon.frame = CGRect(x: self.frame.origin.x + self.frame.width,
                                 y: self.frame.origin.y ,
                                 width: 20,
                                 height: 20)
        
        
        let leading = NSLayoutConstraint(item: rightICon,
                                         attribute: .leading,
                                         relatedBy: .equal,
                                         toItem: textInput,
                                         attribute: .trailing,
                                         multiplier: 1,
                                         constant: 10)
        
        let trailing = NSLayoutConstraint(item: rightICon,
                                          attribute: .trailing,
                                          relatedBy: .equal,
                                          toItem: self,
                                          attribute: .trailing,
                                          multiplier: 1,
                                          constant: 0)
        
        NSLayoutConstraint.activate([leading,
                                     trailing])
    }
}

