//
//  PopOverMenuTableViewCell.swift
//  PopOverSample
//
//  Created by Sercan KAYA on 10.04.2022.
//

import UIKit

class PopOverMenuTableViewCell: UITableViewCell {
    static let cellid = "PopOverMenuCell"
    
    private let buttonImage: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .black
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        addSubViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func set(title: String, image: UIImage?) {
        buttonImage.image = image
        titleLabel.text = title
    }
}

// MARK: - UILayout
extension PopOverMenuTableViewCell {
    private func addSubViews() {
        addImageView()
        addTitleLabel()
    }
    
    private func addImageView() {
        contentView.addSubview(buttonImage)
        NSLayoutConstraint.activate([
            buttonImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            buttonImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            buttonImage.widthAnchor.constraint(equalToConstant: 16),
            buttonImage.heightAnchor.constraint(equalToConstant: 16)
        ])
    }
    
    private func addTitleLabel() {
        contentView.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: buttonImage.trailingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
    }
}
