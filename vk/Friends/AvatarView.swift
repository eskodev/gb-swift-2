//
//  AvatarView.swift
//  vk
//
//  Created by Mikhail Rumyantsev on 16.11.2021.
//

import UIKit

@IBDesignable class AvatarImageView: UIView {
    private var imageView: UIImageView = UIImageView()
    
    private var containerView: UIView = UIView()
    
    @IBInspectable var image: UIImage? = UIImage() {
        didSet {
            imageView.image = image
        }
    }
    
    @IBInspectable var shadowColor: UIColor = .black {
        didSet {
            updateColor()
        }
    }
    
    @IBInspectable var shadowOpacity: Float = 0.5 {
        didSet {
            updateOpacity()
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat = 2.0 {
        didSet {
            updateRadius()
        }
    }
    
    @IBInspectable var shadowOffset: CGSize = .zero {
        didSet {
            updateOffset()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        containerView.frame = bounds
        containerView.layer.cornerRadius = 20
        
        imageView.layer.masksToBounds = true
        imageView.frame = containerView.bounds
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 20
        imageView.image = image
        
        containerView.addSubview(imageView)
        addSubview(containerView)
        
        updateShadows()
    }
    
    private func updateOpacity() {
        containerView.layer.shadowOpacity = shadowOpacity
    }
    
    private func updateColor() {
        containerView.layer.shadowColor = shadowColor.cgColor
    }
    
    private func updateOffset() {
        containerView.layer.shadowOffset = shadowOffset
    }
    
    private func updateRadius() {
        containerView.layer.shadowRadius = shadowRadius
    }
    
    private func updateShadows() {
        updateOpacity()
        updateColor()
        updateOffset()
        updateRadius()
    }
}
