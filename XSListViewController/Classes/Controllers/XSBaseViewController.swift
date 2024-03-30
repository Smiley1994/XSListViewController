//
//  XSBaseViewController.swift
//  SuperDemo-Swift
//
//  Created by SUN on 2024/1/10.
//

import UIKit

open class XSBaseViewController: UIViewController {
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        // 返回按钮
        setupLeftBackButton()
        
    }
    
    open func setupLeftBackButton() {
        
    }
    
    
    
}
