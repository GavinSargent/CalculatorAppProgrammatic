//
//  ViewController.swift
//  CalculatorAppProgrammatic
//
//  Created by Gavin Sargent on 5/10/23.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    lazy var answerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0"
        label.backgroundColor = .black
        label.textColor = .white
        return label
    }()

    lazy var zeroButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("0", for: .normal)
        button.addTarget(self, action: #selector(numButtonTapped), for: .touchUpInside)
        button.layer.cornerRadius = button.layer.bounds.size.width/2
        button.clipsToBounds = true
        return button
    }()
    
    lazy var oneButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("1", for: .normal)
        button.addTarget(self, action: #selector(numButtonTapped), for: .touchUpInside)
        button.layer.cornerRadius = button.layer.bounds.size.width/2
        button.clipsToBounds = true
        return button
    }()
    
    lazy var twoButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("2", for: .normal)
        button.addTarget(self, action: #selector(numButtonTapped), for: .touchUpInside)
        button.layer.cornerRadius = button.layer.bounds.size.width/2
        button.clipsToBounds = true
        return button
    }()
    
    lazy var threeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("3", for: .normal)
        button.addTarget(self, action: #selector(numButtonTapped), for: .touchUpInside)
        button.layer.cornerRadius = button.layer.bounds.size.width/2
        button.clipsToBounds = true
        return button
    }()
    
    lazy var fourButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("4", for: .normal)
        button.addTarget(self, action: #selector(numButtonTapped), for: .touchUpInside)
        button.layer.cornerRadius = button.layer.bounds.size.width/2
        button.clipsToBounds = true
        return button
    }()
    
    lazy var fiveButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("5", for: .normal)
        button.addTarget(self, action: #selector(numButtonTapped), for: .touchUpInside)
        button.layer.cornerRadius = button.layer.bounds.size.width/2
        button.clipsToBounds = true
        return button
    }()
    
    lazy var sixButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("6", for: .normal)
        button.addTarget(self, action: #selector(numButtonTapped), for: .touchUpInside)
        button.layer.cornerRadius = button.layer.bounds.size.width/2
        button.clipsToBounds = true
        return button
    }()
    
    lazy var sevenButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("7", for: .normal)
        button.addTarget(self, action: #selector(numButtonTapped), for: .touchUpInside)
        button.layer.cornerRadius = button.layer.bounds.size.width/2
        button.clipsToBounds = true
        return button
    }()
    
    lazy var eightButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("8", for: .normal)
        button.addTarget(self, action: #selector(numButtonTapped), for: .touchUpInside)
        button.layer.cornerRadius = button.layer.bounds.size.width/2
        button.clipsToBounds = true
        return button
    }()
    
    lazy var nineButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("9", for: .normal)
        button.addTarget(self, action: #selector(numButtonTapped), for: .touchUpInside)
        button.layer.cornerRadius = button.layer.bounds.size.width/2
        button.clipsToBounds = true
        return button
    }()
    
    lazy var plusButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("+", for: .normal)
        button.addTarget(self, action: #selector(plusButtonTapped), for: .touchUpInside)
        button.layer.cornerRadius = button.layer.bounds.size.width/2
        button.clipsToBounds = true
        return button
    }()
    
    lazy var minusButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("-", for: .normal)
        button.addTarget(self, action: #selector(minusButtonTapped), for: .touchUpInside)
        button.layer.cornerRadius = button.layer.bounds.size.width/2
        button.clipsToBounds = true
        return button
    }()
    
    lazy var timesButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("x", for: .normal)
        button.addTarget(self, action: #selector(timesButtonTapped), for: .touchUpInside)
        button.layer.cornerRadius = button.layer.bounds.size.width/2
        button.clipsToBounds = true
        return button
    }()
    
    lazy var divideButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("/", for: .normal)
        button.addTarget(self, action: #selector(divideButtonTapped), for: .touchUpInside)
        button.layer.cornerRadius = button.layer.bounds.size.width/2
        button.clipsToBounds = true
        return button
    }()
    
    lazy var clearButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("AC", for: .normal)
        button.addTarget(self, action: #selector(clearButtonTapped), for: .touchUpInside)
        button.layer.cornerRadius = button.layer.bounds.size.width/2
        button.clipsToBounds = true
        return button
    }()
    
    lazy var negPosButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("+/-", for: .normal)
        button.addTarget(self, action: #selector(negPosButtonTapped), for: .touchUpInside)
        button.layer.cornerRadius = button.layer.bounds.size.width/2
        button.clipsToBounds = true
        return button
    }()
    
    lazy var percentButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("%", for: .normal)
        button.addTarget(self, action: #selector(percentButtonTapped), for: .touchUpInside)
        button.layer.cornerRadius = button.layer.bounds.size.width/2
        button.clipsToBounds = true
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func configureStackViews() {
        let oneStackView = UIStackView()
        let fourStackView = UIStackView()
        let sevenStackView = UIStackView()
        let specialStackView = UIStackView()
        
        
    }
}

extension CalculatorViewController {
    
    @objc func numButtonTapped() {
        
    }
    
    @objc func plusButtonTapped() {
        
    }
    
    @objc func minusButtonTapped() {
        
    }
    
    @objc func timesButtonTapped () {
        
    }
    
    @objc func divideButtonTapped () {
        
    }
    
    @objc func clearButtonTapped () {
        
    }
    
    @objc func negPosButtonTapped () {
        
    }
    
    @objc func percentButtonTapped () {
        
    }
    
}

