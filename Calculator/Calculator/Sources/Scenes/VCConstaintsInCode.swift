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
    
    
    private lazy var centerY: CGFloat = {
        view.frame.height/2
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
    }
    
    private func setupLayout() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        label.centerYAnchor.constraint(equalTo: view.topAnchor, constant: centerY/2).isActive = true
        
    }
    
    private func setupView() {
        view.backgroundColor = Color.backgroundColor
    }


}

 
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
    }
    enum Constraints {
        static let labelXAnchor = -30
     
    }
}
