//
//  VCConstaintsInCode.swift
//  Calculator
//
//  Created by Джон Костанов on 21/4/21.
//

import UIKit

class ViewControllerConstaintsInCode: UIViewController {
    
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
    private lazy var buttonZero = createButton(with: Strings.zero)
    
    private lazy var buttonC = createButton(with: Strings.clear, titleColor: .black, backgroundColor: .systemGray5)
    private lazy var buttonSeven = createButton(with: Strings.seven)
    private lazy var buttonFour = createButton(with: Strings.four)
    private lazy var buttonOne = createButton(with: Strings.one)

    lazy var buttonHeght: CGFloat = {
        switch UIDevice.current.orientation.isLandscape {
        case true:
            buttonHeght = (view.frame.height / 6) - 20
            return buttonHeght
        case false:
            buttonHeght = (view.frame.width / 4) - 20
            return buttonHeght
        }
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
        view.addSubviews(label, buttonDivision, buttonMultiplication, buttonSubtraction, buttonPlus, buttonEqually, buttonProcent, buttonNine, buttonSix, buttonThree, buttonComma, buttonPlusAndMinus, buttonEight, buttonFive, buttonTwo, buttonZero, buttonC, buttonSeven, buttonFour, buttonOne)
    }
    
    private func setupLayout() {

        label.addConstraints(right: view.trailingAnchor, paddingRight: 15,
                             bottom: buttonDivision.topAnchor, paddingBottom: Metric.paddingBottomLabel)
        buttonDivision.addConstraints(right: view.trailingAnchor, paddingRight: Metric.paddingRight,
                                      bottom: buttonMultiplication.topAnchor, paddingBottom: Metric.paddingBottomButtons)
        buttonMultiplication.addConstraints(right: view.trailingAnchor, paddingRight: Metric.paddingRight,
                                            bottom: buttonSubtraction.topAnchor, paddingBottom: Metric.paddingBottomButtons)
        buttonSubtraction.addConstraints(right: view.trailingAnchor, paddingRight: Metric.paddingRight,
                                         bottom: buttonPlus.topAnchor, paddingBottom: Metric.paddingBottomButtons)
        buttonPlus.addConstraints(right: view.trailingAnchor, paddingRight: Metric.paddingRight,
                                  bottom: buttonEqually.topAnchor, paddingBottom: Metric.paddingBottomButtons)
        buttonEqually.addConstraints(right: view.trailingAnchor, paddingRight: Metric.paddingRight,
                                     bottom: view.bottomAnchor, paddingBottom: Metric.paddingBottomButtons)

        buttonProcent.addConstraints(right: buttonDivision.leadingAnchor, paddingRight: Metric.paddingRight,
                                     bottom: buttonNine.topAnchor, paddingBottom: Metric.paddingBottomButtons)
        buttonNine.addConstraints(right: buttonMultiplication.leadingAnchor, paddingRight: Metric.paddingRight,
                                  bottom: buttonSix.topAnchor, paddingBottom: Metric.paddingBottomButtons)
        buttonSix.addConstraints(right: buttonSubtraction.leadingAnchor, paddingRight: Metric.paddingRight,
                                 bottom: buttonThree.topAnchor, paddingBottom: Metric.paddingBottomButtons)
        buttonThree.addConstraints(right: buttonPlus.leadingAnchor, paddingRight: Metric.paddingRight,
                                   bottom: buttonComma.topAnchor, paddingBottom: Metric.paddingBottomButtons)
        buttonComma.addConstraints(right: buttonEqually.leadingAnchor, paddingRight: Metric.paddingRight,
                                   bottom: view.bottomAnchor, paddingBottom: Metric.paddingBottomButtons)

        buttonPlusAndMinus.addConstraints(right: buttonProcent.leadingAnchor, paddingRight: Metric.paddingRight,
                                          bottom: buttonEight.topAnchor, paddingBottom: Metric.paddingBottomButtons)
        buttonEight.addConstraints(right: buttonNine.leadingAnchor, paddingRight: Metric.paddingRight,
                                   bottom: buttonFive.topAnchor, paddingBottom: Metric.paddingBottomButtons)
        buttonFive.addConstraints(right: buttonSix.leadingAnchor, paddingRight: Metric.paddingRight,
                                  bottom: buttonTwo.topAnchor, paddingBottom: Metric.paddingBottomButtons)
        buttonTwo.addConstraints(right: buttonThree.leadingAnchor, paddingRight: Metric.paddingRight,
                                 bottom: buttonZero.topAnchor, paddingBottom: Metric.paddingBottomButtons)
        buttonZero.addConstraints(left: view.leadingAnchor, paddingLeft: Metric.paddingLeft,
                                  right: buttonComma.leadingAnchor, paddingRight: Metric.paddingRight,
                                  bottom: view.bottomAnchor, paddingBottom: Metric.paddingBottomButtons)

        buttonC.addConstraints(left: view.leadingAnchor, paddingLeft: Metric.paddingLeft,
                               right: buttonPlusAndMinus.leadingAnchor, paddingRight: Metric.paddingRight,
                               bottom: buttonSeven.topAnchor, paddingBottom: Metric.paddingBottomButtons)
        buttonSeven.addConstraints(left: view.leadingAnchor, paddingLeft: Metric.paddingLeft,
                                   right: buttonEight.leadingAnchor, paddingRight: Metric.paddingRight,
                                   bottom: buttonFour.topAnchor, paddingBottom: Metric.paddingBottomButtons)
        buttonFour.addConstraints(left: view.leadingAnchor, paddingLeft: Metric.paddingLeft,
                                  right: buttonFive.leadingAnchor, paddingRight: Metric.paddingRight,
                                  bottom: buttonOne.topAnchor, paddingBottom: Metric.paddingBottomButtons)
        buttonOne.addConstraints(left: view.leadingAnchor, paddingLeft: Metric.paddingLeft,
                                 right: buttonTwo.leadingAnchor, paddingRight: Metric.paddingRight,
                                 bottom: buttonZero.topAnchor, paddingBottom: Metric.paddingBottomButtons)


    }
    
    private func setupView() {
        view.backgroundColor = .black
    }

    private func createButton(with title: String,
                              titleColor: UIColor = .white,
                              backgroundColor: UIColor = .darkGray
    ) -> UIButton {

        let button = UIButton(type: .system)

        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 40, weight: .medium)

        button.backgroundColor = backgroundColor

        button.layer.masksToBounds = true

        button.layer.cornerRadius = buttonHeght / 2

        button.widthAnchor.constraint(equalToConstant: buttonHeght).isActive = true
        button.heightAnchor.constraint(equalToConstant: buttonHeght).isActive = true

        return button
    }
}

// MARK:  - Extension
extension ViewControllerConstaintsInCode {

    enum Metric {
        static let labelFontSize: CGFloat = 60
        static let paddingBottomLabel: CGFloat = 30
        static let paddingBottomButtons: CGFloat = 15
        static let paddingRight: CGFloat = 15
        static let paddingLeft: CGFloat = 15
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
}
