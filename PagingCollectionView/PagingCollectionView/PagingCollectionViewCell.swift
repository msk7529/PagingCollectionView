//
//  PagingCollectionViewCell.swift
//  PagingTest
//
//  Created by kakao on 2021/11/14.
//

import UIKit

final class PagingCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "PagingCollectionViewCell"
    
    var indexPath: IndexPath? {
        didSet {
            guard let indexPath = indexPath else {
                return
            }
            pageLabel.text = "\(indexPath.row + 1) / 3"
            // 반드시 아래 두 코드를 모두 수행해야함.
            layoutIfNeeded()
            setNeedsLayout()
        }
    }
    
    private let pageLabel: UILabel = {
        let label: UILabel = .init(frame: .zero)
        label.textColor = .black
        label.text = "123"
        label.font = .systemFont(ofSize: 13)
        label.textAlignment = .center
        label.layer.borderWidth = 0.5
        label.layer.borderColor = UIColor.black.cgColor
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initView()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        pageLabel.layer.cornerRadius = pageLabel.frame.height / 2
    }
    
    private func initView() {
        contentView.addSubview(pageLabel)
        
        pageLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20).isActive = true
        pageLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        pageLabel.widthAnchor.constraint(equalToConstant: 50).isActive = true
    }
}
