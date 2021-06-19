//
//  ResultVC.swift
//  EvenOdd
//
//  Created by DCS on 16/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ResultVC: UIViewController {
    var eveodd = ""
    private let result : UILabel = {
        let result = UILabel()
        result.text = ""
        result.backgroundColor = .red
        result.textAlignment = .center
        return result
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(result)
        self.view.backgroundColor = .brown
        title = "Result Of EVEN & ODD"
        result.text = eveodd
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        result.frame = CGRect(x: 20, y: 200, width: 250, height: 50)
    }
}

