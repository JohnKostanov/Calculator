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
        label.text = Strings.zero
        label.textColor = .white
        return label
    }()
    
    private lazy var buttonDivision = createButton(with: Strings.dividir, backgroundColor: .systemOrange)
    private lazy var buttonMultiplication = createButton(with: Strings.multiply, backgroundColor: .systemOrange)
    private lazy var buttonSubtraction = createButton(with: Strings.minus, backgroundColor: .systemOrange)
    private lazy var buttonPlus = createButton(with: Strings.plus, backgroundColor: .systemOrange)
    private lazy var buttonEqually = createButton(with: Strings.equal, backgroundColor: .systemOrange)
    
    private lazy var buttonProcent = createButton(with: Strings.percent, titleColor: .black, backgroundColor: .systemGray5)
    private lazy var buttonNine = createButton(with: Strings.nine)
    private lazy var buttonSix = createButton(with: Strings.six)
    private lazy var buttonThree = createButton(with: Strings.three)
    private lazy var buttonComma = createButton(with: Strings.separator)
    
    private lazy var buttonPlusAndMinus = createButton(with: Strings.plusMinus, titleColor: .black, backgroundColor: .systemGray5)
    private lazy var buttonEight = createButton(with: Strings.eight)
    private lazy var buttonFive = createButton(with: Strings.five)
    private lazy var buttonTwo = createButton(with: Strings.two)
    private lazy var buttonZero = createButton(with: Strings.zero, multiplier: 2.2)
    
    private lazy var buttonC = createButton(with: Strings.clear, titleColor: .black, backgroundColor: .systemGray5)
    private lazy var buttonSeven = createButton(with: Strings.seven)
    private lazy var buttonFour = createButton(with: Strings.four)
    private lazy var buttonOne = createButton(with: Strings.one)
    
    private lazy var centerY: CGFloat = {
        view.frame.height / 2
    }()

    lazy var buttonWeidht = {
        view.frame.width / 4 - 10
    }()

    // MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayout()
        setupView()
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
        view.backgroundColor = .black
    }
}
private func createButton(with title: String,
                          titleColor: UIColor = .white,
                          backgroundColor: UIColor = .darkGray,
                          multiplier: CGFloat = 1) -> UIButton {

    let button = UIButton(type: .system)

    button.setTitle(title, for: .normal)
    button.setTitleColor(titleColor, for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 40, weight: .medium)

    button.backgroundColor = backgroundColor

    button.layer.masksToBounds = true
    button.layer.cornerRadius = 30

    button.widthAnchor.constraint(
        equalTo: button.heightAnchor,
        multiplier: multiplier
    ).isActive = true

    return button
}

// MARK:  - Extension
extension VCConstaintsInCode {
    enum Metric {
        static let labelFontSize: CGFloat = 60
    }
    enum Strings {
        static let one = "1"
        static let two = "2"
        static let three = "3"
        static let four = "4"
        static let five = "5"
        static let six = "6"
        static let seven = "7"
        static let eight = "8"
        static let nine = "9"
        static let zero = "0"
        static let plus = "+"
        static let minus = "-"
        static let equal = "="
        static let plusMinus = "+/-"
        static let separator = ","
        static let clear = "C"
        static let multiply = "X"
        static let dividir = "/"
        static let percent = "%"
    }

    enum Constraints {
        static let start: CGFloat = -50
        static let labelXAnchor = -30

    }
}
