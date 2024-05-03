//
//  ViewController.swift
//  FirstTryApp
//
//  Created by Axmatjonov Madiyorbek on 25.04.2567 (BE).
//

import UIKit

class ViewController: UIViewController {
    
    var AJUBUJU = UILabel()
    var rasm = UIImageView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(AJUBUJU)
        view.addSubview(rasm)
        
        
        AJUBUJU.text = "LAKSdjfbdvd"
        AJUBUJU.font = .boldSystemFont(ofSize: 30)
        AJUBUJU.textColor = .green
        AJUBUJU.frame = CGRect(x: 50, y: 150, width: 200, height: 50)
        AJUBUJU.backgroundColor = .black
        AJUBUJU.clipsToBounds = true
        AJUBUJU.layer.cornerRadius = 10
        
        
        
        rasm.image = ._1234
        rasm.frame = CGRect(x: 50, y: 200, width: 250, height: 150)
        rasm.clipsToBounds = true
        rasm.layer.cornerRadius = 25
        
        
        
       
    }


}

