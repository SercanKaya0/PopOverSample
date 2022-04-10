//
//  PopOverMenuViewController.swift
//  PopOverSample
//
//  Created by Sercan KAYA on 10.04.2022.
//

import UIKit

final class PopOverMenuViewController: UIViewController {

    private let tableView: UITableView = {
       let tableView = UITableView()
        tableView.register(PopOverMenuTableViewCell.self, forCellReuseIdentifier: PopOverMenuTableViewCell.cellid)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.isScrollEnabled = false
        tableView.backgroundColor = .clear
        tableView.showsVerticalScrollIndicator = false
        return tableView
    }()
    
    let cellItem: [PopOverMenuModel] = [PopOverMenuModel(title: "Edit", image: UIImage(systemName: "pencil")), PopOverMenuModel(title: "Delete", image: UIImage(systemName: "trash")),PopOverMenuModel(title: "Share", image: UIImage(systemName: "arrowshape.turn.up.right.fill"))]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubViews()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
}

// MARK: - UI Layout
extension PopOverMenuViewController {
    
    private func addSubViews() {
        addTableView()
    }
    
    private func addTableView() {
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}

extension PopOverMenuViewController: UITableViewDelegate {
    
}

extension PopOverMenuViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellItem.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: PopOverMenuTableViewCell = tableView.dequeueReusableCell(withIdentifier: PopOverMenuTableViewCell.cellid, for: indexPath) as! PopOverMenuTableViewCell
        let item = cellItem[indexPath.row]
        cell.set(title: item.title, image: item.image)
        return cell
    }
    
    
}
