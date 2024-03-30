//
//  XSTestListViewModel.swift
//  SuperDemo-Swift
//
//  Created by SUN on 2024/1/13.
//

import UIKit
import XSListViewController

struct TestUser {
    var id: String
    var name: String
    var email: String
    var cellType:Int
}

class XSTestListViewModel: XSListViewModel<TestUser> {

    
    override func requestData(completion: @escaping () -> Void) {
        
        
        let item0 = TestUser(id: "000", name: "AA", email: "AA@gmail.com", cellType: 0)
        let item1 = TestUser(id: "001", name: "BB", email: "BB@gmail.com", cellType: 1)
        let item2 = TestUser(id: "002", name: "CC", email: "CC@gmail.com", cellType: 2)
        let item3 = TestUser(id: "003", name: "DD", email: "DD@gmail.com", cellType: 1)
        let item4 = TestUser(id: "004", name: "EE", email: "EE@gmail.com", cellType: 2)
        
        
        listArray = [item0, item1, item2, item3, item4, item4, item4, item4, item4]
        
    }
    
}
