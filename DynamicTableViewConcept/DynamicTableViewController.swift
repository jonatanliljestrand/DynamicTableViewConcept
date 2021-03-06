//
//  ViewController.swift
//  DynamicTableViewConcept
//
//  Created by Jonatan Liljestrand on 2018-03-01.
//  Copyright © 2018 Jonatan Liljestrand. All rights reserved.
//

import UIKit

class DynamicTableViewController: UIViewController, UITableViewDelegate {
	@IBOutlet private weak var tableView: UITableView!
	
	let viewModel = ViewModel()

	override func viewDidLoad() {
		super.viewDidLoad()
		tableView.tableFooterView = UIView(frame: CGRect.zero)
		tableView.reloadData()
	}
}

extension DynamicTableViewController: UITableViewDataSource {
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cellData = viewModel.cellData(forIndexPath: indexPath)
		let cell = tableView.dequeueReusableCell(withIdentifier: cellData.cellIdentifier) as! TableViewCellProtocol
		cell.injectWith(data: cellData)
		return cell as! UITableViewCell
	}
	
	func numberOfSections(in tableView: UITableView) -> Int {
		return viewModel.numberOfSections
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return viewModel.numberOfRows(inSection: section)
	}
}

class ViewModel {
	private var cellDataArray: [CellDataProtocol] = [CellType1Data(), CellType3Data(), CellType2Data()]
	
	func updateValues(withCompletion completion: ()->()) {
		
		completion()
	}
	
	var numberOfSections: Int {
		return 1
	}
	
	func cellData(forIndexPath indexPath: IndexPath) -> CellDataProtocol {
		return cellDataArray[indexPath.row]
	}
	
	func numberOfRows(inSection section: Int) -> Int {
		return cellDataArray.count
	}
}
