//
//  ViewController.swift
//  XSListViewController
//
//  Created by sunnnnn on 03/29/2024.
//  Copyright (c) 2024 sunnnnn. All rights reserved.
//

import UIKit
import XSListViewController

class XSTestListViewController: XSListViewController<TestUser, XSTestListViewModel, XSTestListTableViewCell> {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "TESTLIST"
        
        
//        self.registerCells(cells: [XSTestListTableViewCell.self,
//                                   XSTest1ListTableViewCell.self,
//                                   XSTest2ListTableViewCell.self])
        
    }

//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        
//        let item = viewModel.item(at: indexPath.row)
//        
//        var cell = XSListTableViewCell<TestUser>()
//        
//        switch item.cellType {
//        case 1:
//            let cellIdentifier = String(describing: XSTest1ListTableViewCell.self)
//            cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! XSTest1ListTableViewCell
//            break
//        case 2:
//            let cellIdentifier = String(describing: XSTest2ListTableViewCell.self)
//            cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! XSTest2ListTableViewCell
//            break
//        default:
//            let cellIdentifier = String(describing: XSTestListTableViewCell.self)
//            cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! XSTestListTableViewCell
//        }
//        
//        cell.configure(with: item)
//        
//        return cell
//    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

