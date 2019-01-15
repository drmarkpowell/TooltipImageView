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
    
    @IBInspectable public var tooltipText: String?
    @IBInspectable public var image: UIImage? {
        didSet {
            imageView.image = image
        }
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadViewFromNib()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        loadViewFromNib()
    }
    
    public override func prepareForInterfaceBuilder() {
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
    
    @IBAction func showTooltip(_ sender: UITapGestureRecognizer) {
        if let tooltipText = self.tooltipText {
            UIApplication.topViewController()?.view.makeToast(tooltipText, duration: 3.0, position: .top, title: nil, image: nil, completion: nil)
        }
    }
}

