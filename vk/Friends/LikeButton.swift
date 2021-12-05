//
//  LikeButton.swift
//  vk
//
//  Created by Mikhail Rumyantsev on 17.11.2021.
//

import UIKit

@IBDesignable class LikeButton: UIControl {
  var allLikesCount = 0
  
  var isLiked = false
  
  private var iconImageView = UIImageView()
  
  private var countLabel = UILabel()
  
  private var stackView = UIStackView()
  
  lazy var tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(click))
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setup()
  }
  
  required init?(coder: NSCoder) {
    super.init(coder: coder)
    setup()
  }
  
  func setup(isUserLiked: Bool = false, allLikes: Int = 0) -> Void {
    isLiked = isUserLiked
    allLikesCount = allLikes
    
    backgroundColor = .clear
    countLabel.text = String(allLikesCount)
    
    let image = isLiked ? UIImage(systemName: "heart.fill") : UIImage(systemName: "heart")
    iconImageView.image = image
    
    stackView.alignment = .center
    stackView.frame = bounds
    stackView.spacing = 0
    stackView.addArrangedSubview(countLabel)
    stackView.addArrangedSubview(iconImageView)
    
    addSubview(stackView)
    
    addGestureRecognizer(tapGestureRecognizer)
  }
  
  @objc func click() {
    isLiked = !isLiked
    
    allLikesCount += isLiked ? 1 : -1
    
    let image = isLiked ? UIImage(systemName: "heart.fill") : UIImage(systemName: "heart")
    let color = isLiked ? UIColor.red : UIColor.black
    
    iconImageView.tintColor = color
    countLabel.textColor = color
    
    countLabel.text = String(allLikesCount)
    iconImageView.image = image
  }
}
