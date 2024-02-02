//
//  MainView.swift
//  Weather App(URL)
//
//  Created by Dinmukhammed Begaly on 30.01.2024.
//

import UIKit
import SnapKit

class MainView: UIView {

    private lazy var textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Search location"
        textField.backgroundColor = UIColor(named: "gray")
        textField.font = .systemFont(ofSize: 23)

        return textField
    }()

    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        let image = UIImage()
        imageView.image = UIImage(named: "sunny")

        return imageView
    }()

    private lazy var cityNamelabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 30)
        label.textColor = .black
        label.text = "Almaty"

        return label
    }()

    private lazy var numberLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 50)
        label.textColor = .black
        label.text = "34.5"

        return label
    }()
    //MARK: - Time Label
    private lazy var timeLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(named: "textGray2")
        label.font = .systemFont(ofSize: 18)
        label.text = " Time"

        return label
    }()

    private lazy var currentTimeLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(named: "textGray")
        label.font = .systemFont(ofSize: 20)
        label.text = "11:25"

        return label
    }()

    private lazy var timeStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .fill
        stack.distribution = .fillEqually
        stack.spacing = 10

        stack.addArrangedSubview(timeLabel)
        stack.addArrangedSubview(currentTimeLabel)

        return stack
    }()


    //MARK: - Rain Label
    private lazy var rainLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(named: "textGray2")
        label.text = "% Rain"
        label.font = .systemFont(ofSize: 18)

        return label
    }()

    private lazy var currentRainLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(named: "textGray")
        label.text = "  58%"
        label.font = .systemFont(ofSize: 20)

        return label
    }()

    private lazy var rainStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .fill
        stack.distribution = .fillEqually
        stack.spacing = 10

        stack.addArrangedSubview(rainLabel)
        stack.addArrangedSubview(currentRainLabel)

        return stack
    }()

    private lazy var combineStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .fillProportionally
        stack.spacing = 70
        stack.backgroundColor = UIColor(named: "gray")

        stack.addArrangedSubview(timeStack)
        stack.addArrangedSubview(rainStack)
        
        return stack
    }()


    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        addSubview(textField)
        addSubview(imageView)
        addSubview(cityNamelabel)
        addSubview(numberLabel)
        addSubview(combineStack)

    }

    private func setupConstraints() {
        textField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(85)
            make.height.equalTo(46)
            make.left.equalToSuperview().offset(24)
            make.right.equalToSuperview().offset(-24)
        }

        imageView.snp.makeConstraints { make in
           make.top.equalTo(textField.snp.bottom).offset(80)
            make.centerX.equalToSuperview()
            make.height.equalTo(123)
            make.width.equalTo(123)
        }

        cityNamelabel.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(31)
            make.centerX.equalToSuperview()
        }

        numberLabel.snp.makeConstraints { make in
            make.top.equalTo(cityNamelabel.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }

        combineStack.snp.makeConstraints { make in
            make.top.equalTo(numberLabel.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(100)
        }

    }
}
