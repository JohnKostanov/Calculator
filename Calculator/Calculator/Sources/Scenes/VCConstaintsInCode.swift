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
    
    private lazy var buttonDivision = createButton(with: "÷", titleColor: Color.titleColorButton, backgroundColor: Color.backgroundColorButtons, multiplier: 1)
    private lazy var buttonMultiplication = createButton(with: "X", titleColor: Color.titleColorButton, backgroundColor: Color.backgroundColorButtons, multiplier: 1)
    private lazy var buttonSubtraction = createButton(with: "−", titleColor: Color.titleColorButton, backgroundColor: Color.backgroundColorButtons, multiplier: 1)
    private lazy var buttonPlus = createButton(with: "﹢", titleColor: Color.titleColorButton, backgroundColor: Color.backgroundColorButtons, multiplier: 1)
    private lazy var buttonEqually = createButton(with: "﹦", titleColor: Color.titleColorButton, backgroundColor: Color.backgroundColorButtons, multiplier: 1)
    
    private lazy var buttonProcent = createButton(with: "％", titleColor: Color.titleColorButton2, backgroundColor: Color.backgroundColorButtons2, multiplier: 1)
    private lazy var buttonNine = createButton(with: "9", titleColor: Color.titleColorButton, backgroundColor: Color.backgroundColorButtons3, multiplier: 1)
    private lazy var buttonSix = createButton(with: "6", titleColor: Color.titleColorButton, backgroundColor: Color.backgroundColorButtons3, multiplier: 1)
    private lazy var buttonThree = createButton(with: "3", titleColor: Color.titleColorButton, backgroundColor: Color.backgroundColorButtons3, multiplier: 1)
    private lazy var buttonComma = createButton(with: ",", titleColor: Color.titleColorButton, backgroundColor: Color.backgroundColorButtons3, multiplier: 1)
    
    private lazy var buttonPlusAndMinus = createButton(with: "+/-", titleColor: Color.titleColorButton2, backgroundColor: Color.backgroundColorButtons2, multiplier: 1)
    private lazy var buttonEight = createButton(with: "8", titleColor: Color.titleColorButton, backgroundColor: Color.backgroundColorButtons3, multiplier: 1)
    private lazy var buttonFive = createButton(with: "5", titleColor: Color.titleColorButton, backgroundColor: Color.backgroundColorButtons3, multiplier: 1)
    private lazy var buttonTwo = createButton(with: "2", titleColor: Color.titleColorButton, backgroundColor: Color.backgroundColorButtons3, multiplier: 1)
    private lazy var buttonZero = createButton(with: "0", titleColor: Color.titleColorButton, backgroundColor: Color.backgroundColorButtons3, multiplier: 2.2)
    
    private lazy var buttonC = createButton(with: "C", titleColor: Color.titleColorButton2, backgroundColor: Color.backgroundColorButtons2, multiplier: 1)
    private lazy var buttonSeven = createButton(with: "7", titleColor: Color.titleColorButton, backgroundColor: Color.backgroundColorButtons3, multiplier: 1)
    private lazy var buttonFour = createButton(with: "4", titleColor: Color.titleColorButton, backgroundColor: Color.backgroundColorButtons3, multiplier: 1)
    private lazy var buttonOne = createButton(with: "1", titleColor: Color.titleColorButton, backgroundColor: Color.backgroundColorButtons3, multiplier: 1)
    
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
        
        view.addSubview(buttonProcent)
        view.addSubview(buttonNine)
        view.addSubview(buttonSix)
        view.addSubview(buttonThree)
        view.addSubview(buttonComma)
        
        view.addSubview(buttonPlusAndMinus)
        view.addSubview(buttonEight)
        view.addSubview(buttonFive)
        view.addSubview(buttonTwo)
        view.addSubview(buttonZero)
        
        view.addSubview(buttonC)
        view.addSubview(buttonSeven)
        view.addSubview(buttonFour)
        view.addSubview(buttonOne)
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
        
        buttonProcent.translatesAutoresizingMaskIntoConstraints = false
        buttonProcent.centerXAnchor.constraint(equalTo: view.trailingAnchor, constant: -110).isActive = true
        buttonProcent.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: Constraints.start - 280).isActive = true
        
        buttonNine.translatesAutoresizingMaskIntoConstraints = false
        buttonNine.centerXAnchor.constraint(equalTo: view.trailingAnchor, constant: -110).isActive = true
        buttonNine.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: Constraints.start - 210).isActive = true
        
        buttonSix.translatesAutoresizingMaskIntoConstraints = false
        buttonSix.centerXAnchor.constraint(equalTo: view.trailingAnchor, constant: -110).isActive = true
        buttonSix.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: Constraints.start - 140).isActive = true
        
        buttonThree.translatesAutoresizingMaskIntoConstraints = false
        buttonThree.centerXAnchor.constraint(equalTo: view.trailingAnchor, constant: -110).isActive = true
        buttonThree.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: Constraints.start - 70).isActive = true
        
        buttonComma.translatesAutoresizingMaskIntoConstraints = false
        buttonComma.centerXAnchor.constraint(equalTo: view.trailingAnchor, constant: -110).isActive = true
        buttonComma.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: Constraints.start).isActive = true
        
        buttonPlusAndMinus.translatesAutoresizingMaskIntoConstraints = false
        buttonPlusAndMinus.centerXAnchor.constraint(equalTo: view.trailingAnchor, constant: -180).isActive = true
        buttonPlusAndMinus.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: Constraints.start - 280).isActive = true
        
        buttonEight.translatesAutoresizingMaskIntoConstraints = false
        buttonEight.centerXAnchor.constraint(equalTo: view.trailingAnchor, constant: -180).isActive = true
        buttonEight.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: Constraints.start - 210).isActive = true
        
        buttonFive.translatesAutoresizingMaskIntoConstraints = false
        buttonFive.centerXAnchor.constraint(equalTo: view.trailingAnchor, constant: -180).isActive = true
        buttonFive.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: Constraints.start - 140).isActive = true
        
        buttonTwo.translatesAutoresizingMaskIntoConstraints = false
        buttonTwo.centerXAnchor.constraint(equalTo: view.trailingAnchor, constant: -180).isActive = true
        buttonTwo.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: Constraints.start - 70).isActive = true
        
        buttonZero.translatesAutoresizingMaskIntoConstraints = false
        buttonZero.centerXAnchor.constraint(equalTo: view.trailingAnchor, constant: -215).isActive = true
        buttonZero.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: Constraints.start).isActive = true
        
        buttonC.translatesAutoresizingMaskIntoConstraints = false
        buttonC.centerXAnchor.constraint(equalTo: view.trailingAnchor, constant: -250).isActive = true
        buttonC.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: Constraints.start - 280).isActive = true
        
        buttonSeven.translatesAutoresizingMaskIntoConstraints = false
        buttonSeven.centerXAnchor.constraint(equalTo: view.trailingAnchor, constant: -250).isActive = true
        buttonSeven.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: Constraints.start - 210).isActive = true
        
        buttonFour.translatesAutoresizingMaskIntoConstraints = false
        buttonFour.centerXAnchor.constraint(equalTo: view.trailingAnchor, constant: -250).isActive = true
        buttonFour.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: Constraints.start - 140).isActive = true
        
        buttonOne.translatesAutoresizingMaskIntoConstraints = false
        buttonOne.centerXAnchor.constraint(equalTo: view.trailingAnchor, constant: -250).isActive = true
        buttonOne.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: Constraints.start - 70).isActive = true
    }
    
    private func setupView() {
        view.backgroundColor = Color.backgroundColor
    }


}
private func createButton(with title: String, titleColor: UIColor, backgroundColor: UIColor, multiplier: CGFloat) -> UIButton {
    let button = UIButton(type: .system)
    button.setTitle(title, for: .normal)
    button.setTitleColor(titleColor, for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 40, weight: .medium)
    button.backgroundColor = backgroundColor
    button.layer.masksToBounds = true
    button.layer.cornerRadius = 30
    button.widthAnchor.constraint(equalTo: button.heightAnchor, multiplier: multiplier).isActive = true
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
        static let titleColorButton2: UIColor = .black
        static let backgroundColorButtons: UIColor = .systemOrange
        static let backgroundColorButtons2: UIColor = .systemGray5
        static let backgroundColorButtons3: UIColor = .darkGray
    }
    enum Constraints {
        static let start: CGFloat = -50
        static let labelXAnchor = -30
     
    }
}
