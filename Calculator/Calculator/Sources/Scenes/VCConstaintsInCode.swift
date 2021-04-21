//
//  VCConstaintsInCode.swift
//  Calculator
//
//  Created by Джон Костанов on 21/4/21.
//

import UIKit

class VCConstaintsInCode: UIViewController {
    
    private lazy var label: UILabel = {
        var label = UILabel()
        label.font = .systemFont(ofSize: Metric.labelFontSize)
        label.text = Strings.labelText
        label.textColor = Color.labelTextColor
        return label
    }()
    
    private lazy var buttonDivision = createButton(with: "÷", titleColor: Color.titleColorButton, backgroundColor: Color.backgroundColorButtons)
    private lazy var buttonMultiplication = createButton(with: "X", titleColor: Color.titleColorButton, backgroundColor: Color.backgroundColorButtons)
    private lazy var buttonSubtraction = createButton(with: "−", titleColor: Color.titleColorButton, backgroundColor: Color.backgroundColorButtons)
    private lazy var buttonPlus = createButton(with: "﹢", titleColor: Color.titleColorButton, backgroundColor: Color.backgroundColorButtons)
    private lazy var buttonEqually = createButton(with: "﹦", titleColor: Color.titleColorButton, backgroundColor: Color.backgroundColorButtons)
    
    private lazy var centerY: CGFloat = {
        view.frame.height/2
    }()
  
    lazy var buttonWeidht = {
        view.frame.width/4 - 10
    }()

    // MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayout()
        setupView()
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
       
       
    }
    
    // MARK: - Settings
    
    private func setupHierarchy() {
        view.addSubview(label)
        view.addSubview(buttonDivision)
        view.addSubview(buttonMultiplication)
        view.addSubview(buttonSubtraction)
        view.addSubview(buttonPlus)
        view.addSubview(buttonEqually)
    }
    
    private func setupLayout() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        label.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: Constraints.start - 350).isActive = true
        
        buttonDivision.translatesAutoresizingMaskIntoConstraints = false
        buttonDivision.centerXAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        buttonDivision.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: Constraints.start - 280).isActive = true
        
        buttonMultiplication.translatesAutoresizingMaskIntoConstraints = false
        buttonMultiplication.centerXAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        buttonMultiplication.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: Constraints.start - 210).isActive = true
        
        buttonSubtraction.translatesAutoresizingMaskIntoConstraints = false
        buttonSubtraction.centerXAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        buttonSubtraction.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: Constraints.start - 140).isActive = true
        
        buttonPlus.translatesAutoresizingMaskIntoConstraints = false
        buttonPlus.centerXAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        buttonPlus.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: Constraints.start - 70).isActive = true
        
        buttonEqually.translatesAutoresizingMaskIntoConstraints = false
        buttonEqually.centerXAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        buttonEqually.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: Constraints.start).isActive = true
        
    }
    
    private func setupView() {
        view.backgroundColor = Color.backgroundColor
    }


}
private func createButton(with title: String, titleColor: UIColor, backgroundColor: UIColor) -> UIButton {
    let button = UIButton(type: .system)
    button.setTitle(title, for: .normal)
    button.setTitleColor(titleColor, for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 40, weight: .bold)
    button.backgroundColor = backgroundColor
    button.layer.masksToBounds = true
    button.layer.cornerRadius = 30
    button.widthAnchor.constraint(equalTo: button.heightAnchor, multiplier: 1).isActive = true
    return button
}

    // MARK:  - Extension
extension VCConstaintsInCode {
    enum Metric {
        static let labelFontSize: CGFloat = 60
    }
    enum Strings {
        static let labelText = "0"
    }
    enum Color {
        static let backgroundColor: UIColor = .black
        static let labelTextColor: UIColor = .white
        static let titleColorButton: UIColor = .white
        static let backgroundColorButtons: UIColor = .systemOrange
    }
    enum Constraints {
        static let start: CGFloat = -50
        static let labelXAnchor = -30
     
    }
}
