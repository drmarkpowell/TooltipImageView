//
//  TooltipImageView.swift
//  TSS-iOS
//
//  Created by Powell, Mark W (397M) on 11/6/18.
//  Copyright © 2018 JPL. All rights reserved.
//

import UIKit
import Toast_Swift

@IBDesignable public class TooltipImageView: UIView {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBInspectable public var tooltipText = ""
    @IBInspectable public var image = UIImage() {
        didSet {
            imageView.image = image
        }
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadViewFromNib()
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        loadViewFromNib()
    }
    
    override public func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        loadViewFromNib()
    }
    
    func loadViewFromNib() {
        if containerView == nil {
            let bundle = Bundle(for: TooltipImageView.self)
            bundle.loadNibNamed("TooltipImageView", owner: self, options: nil)
            addSubview(containerView)
            containerView.frame = bounds
            containerView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
            imageView.isUserInteractionEnabled = true
        }
    }
    
    @IBAction public func showTooltip(_ sender: UITapGestureRecognizer) {
        if !tooltipText.isEmpty {
            UIApplication.topViewController()?.view.makeToast(tooltipText, duration: 3.0, position: .top, title: nil, image: nil, completion: nil)
        }
    }
}

