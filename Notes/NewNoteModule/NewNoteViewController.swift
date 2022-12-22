//
//  NewNoteViewController.swift
//  Notes
//
//  Created by Павел Яковенко on 21.12.2022.
//

import UIKit

class NewNoteViewController: UIViewController {

    private let titleLabel = UILabel(text: " Новая заметка", font:  .robotoMedium22(), textColor: .specialBlack)
    
    private let closeButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "closeButton"), for: .normal)
        button.addTarget(self, action: #selector(closeButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let titleNoteLabel = UILabel(text: "Название заметки", font: .robotoMedium14(), textColor: .specialLightBrown)
    
    private let titleNoteTextField = BrownTextField()
    
    private let detailsNoteLabel = UILabel(text: "Подробно", font: .robotoMedium14(), textColor: .specialLightBrown)
    
    private let detailsNoteTextField = BrownTextField()
    
    
    private let saveButton: UIButton = {
        let button = UIButton()
        button.setTitle("Сохранить", for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = .specialGreen
        button.addTarget(self, action: #selector(saveButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9294117647, blue: 0.8862745098, alpha: 1)
        
        setupViews()
        setConstraints()
    }
    
    private func setupViews() {
        view.addSubview(titleLabel)
        view.addSubview(closeButton)
        view.addSubview(titleNoteLabel)
        view.addSubview(titleNoteTextField)
        view.addSubview(detailsNoteLabel)
        view.addSubview(detailsNoteTextField)
        view.addSubview(saveButton)
    }

    @objc private func closeButtonTapped() {
        dismiss(animated: true)
        print("closeButtonTapped")
    }
    
    @objc private func saveButtonTapped() {
        print("saveButtonTapped")
    }
    
}


//MARK: - setConstraints

extension NewNoteViewController {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([

            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            titleLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            
            closeButton.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor),
            closeButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -25),
            
            titleNoteLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
            titleNoteLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 25),
            
            titleNoteTextField.topAnchor.constraint(equalTo: titleNoteLabel.bottomAnchor, constant: 3),
            titleNoteTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 14),
            titleNoteTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -14),
            titleNoteTextField.heightAnchor.constraint(equalToConstant: 40),
            
            detailsNoteLabel.topAnchor.constraint(equalTo: titleNoteTextField.bottomAnchor, constant: 16),
            detailsNoteLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 25),
            
            detailsNoteTextField.topAnchor.constraint(equalTo: detailsNoteLabel.bottomAnchor, constant: 3),
            detailsNoteTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 14),
            detailsNoteTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -14),
            detailsNoteTextField.heightAnchor.constraint(equalToConstant: 100),
            
            saveButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -120),
            saveButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            saveButton.heightAnchor.constraint(equalToConstant: 55),
            saveButton.widthAnchor.constraint(equalToConstant: 300)
        
        ])
    }

}