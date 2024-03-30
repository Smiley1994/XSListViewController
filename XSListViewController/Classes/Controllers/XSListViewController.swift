//
//  XSBaseListViewController.swift
//  SuperDemo-Swift
//
//  Created by SUN on 2024/1/10.
//

import UIKit
import SnapKit

open class XSListViewController<T, VM: XSListViewModel<T>, Cell: XSListTableViewCell<T>>: XSBaseViewController, UITableViewDelegate, UITableViewDataSource, XSListViewModelDelegate {
    

    public let viewModel: VM
        
    public let tableView = UITableView()
    
    required public init(viewModel: VM) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        self.viewModel.delegate = self
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        viewModel.requestData {
            
        }
    }
    
    private func setupUI() {
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(Cell.self, forCellReuseIdentifier: "XSCell")
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    
    /// 批量注册 CELL
    /// - Parameter cells: [UITableViewCell.Type]
    /// ⚠️ ⚠️ ⚠️ ⚠️ 使用此方法需要 重写此方法 👇👇👇👇
    /// - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
    open func registerCells(cells: [UITableViewCell.Type]) {
        for cellType in cells {
            let cellIdentifier = String(describing: cellType)
            self.tableView.register(cellType, forCellReuseIdentifier: cellIdentifier)
        }
    }
    
    // MARK: - UITableViewDataSource
    open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfItems()
    }

    open func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "XSCell", for: indexPath) as! Cell
        let item = viewModel.item(at: indexPath.row)
        cell.configure(with: item)
        return cell
    }
    
    open func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }

    // MARK: - ListViewModelDelegate
    
    open func dataRequested() {
        tableView.reloadData()
    }
    
}
