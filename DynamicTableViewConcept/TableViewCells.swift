//
//  TableViewCells.swift
//  DynamicTableViewConcept
//
//  Created by Jonatan Liljestrand on 2018-03-01.
//  Copyright © 2018 Jonatan Liljestrand. All rights reserved.
//

import UIKit

protocol TableViewCellProtocol {
	func injectWith(data: CellDataProtocol)
}

class CellType1: UITableViewCell, TableViewCellProtocol {
	func injectWith(data: CellDataProtocol) {
		let data = data as! CellType1Data
		textLabel?.text = data.string1
		detailTextLabel?.text = data.string2
	}
}

struct CellType1Data: CellDataProtocol {
	let cellIdentifier: String = "Celltype 1"
	let string1: String
	let string2: String
}

class CellType2: UITableViewCell, TableViewCellProtocol {
	func injectWith(data: CellDataProtocol) {
		let data = data as! CellType2Data
		textLabel?.text = data.string1
		detailTextLabel?.text = data.string2
	}
}

struct CellType2Data: CellDataProtocol {
	let cellIdentifier: String = "Celltype 2"
	let string1: String
	let string2: String
}

class CellType3: UITableViewCell, TableViewCellProtocol {
	func injectWith(data: CellDataProtocol) {
		let data = data as! CellType3Data
		textLabel?.text = data.string1
		detailTextLabel?.text = data.string2
	}
}

struct CellType3Data: CellDataProtocol {
	let cellIdentifier: String = "Celltype 3"
	let string1: String
	let string2: String
}

