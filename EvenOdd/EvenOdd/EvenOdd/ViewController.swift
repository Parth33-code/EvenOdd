//
//  ViewController.swift
//  EvenOdd
//
//  Created by DCS on 16/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let mytextbox : UITextField = {
        let textbox = UITextField()
        textbox.backgroundColor = .green
        textbox.layer.cornerRadius = 20
        textbox.textAlignment = .center
        textbox.attributedPlaceholder = NSAttributedString(string: "Enter The Number", attributes: [NSAttributedString.Key.foregroundColor : UIColor.red])
        
        return textbox
    }()
    
    private let button:UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .white
        btn.layer.cornerRadius = 20
        btn.setTitle("Check Even/Odd", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.addTarget(self, action: #selector(checkresult), for: .touchUpInside)
        return btn
    }()
    
    @objc func checkresult()
    {
        let temp = mytextbox.text!
        var result = ""
        if (Int(temp) != nil)
        {
            if(Int(temp)!%2 == 0)
            {
                result = "Even"
            } else {
                result = "Odd"
            }
            print(result)
            let vc = ResultVC()
            vc.eveodd = result
            navigationController?.pushViewController(vc, animated: true)
        } else {
            let alert = UIAlertController(title: "Warning", message: "Please Enter Only Number", preferredStyle: .alert)
            mytextbox.text = ""
            alert.addAction(UIAlertAction(title: "OK", style: .destructive))
            self.present(alert,animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(mytextbox)
        view.addSubview(button)
        
    }
    
    override func viewDidLayoutSubviews() {
        mytextbox.frame = CGRect(x:80, y:200, width:190, height: 45)
        button.frame = CGRect(x:80,y:300, width: 200, height: 60)
    }
}
