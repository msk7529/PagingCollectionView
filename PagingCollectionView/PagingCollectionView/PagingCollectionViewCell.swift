//
//  PagingCollectionViewCell.swift
//  PagingTest
//
//  Created by kakao on 2021/11/14.
//

import UIKit

final class PagingCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "PagingCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
