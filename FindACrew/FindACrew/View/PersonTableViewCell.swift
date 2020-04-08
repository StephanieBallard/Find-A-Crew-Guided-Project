//
//  PersonTableViewCell.swift
//  FindACrew
//
//  Created by Stephanie Ballard on 4/6/20.
//  Copyright © 2020 Stephanie Ballard. All rights reserved.
//

import UIKit

class PersonTableViewCell: UITableViewCell {

    static let identifier: String = String(describing: PersonTableViewCell.self)
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    
    var person: Person? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let person = person else { return }
        nameLabel.text = person.name
        genderLabel.text = "Gender: " + person.gender
        birthYearLabel.text = "Birth year: \(person.birthYear)"
    }
}
