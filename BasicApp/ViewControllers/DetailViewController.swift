//
//  DetailViewController.swift
//  BasicApp
//
//  Created by Aabid Khan on 06/02/21.
//  Copyright © 2021 Aabid Khan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var isEmpire: Bool = false{
        didSet{
            if isEmpire{
                title = "Empire Side"
               titleStr = "Welcome to the darkside, get ready to fight some rebel scum"
                view.backgroundColor = .black
            }else{
                title = "Rebel Side"
                titleStr = "The rebellion is glad to have you, you will be a great asset to our fight!"
                view.backgroundColor = .red
            }
        }
    }
    
    private var titleStr: String = ""
    
    private let lbl: UILabel = {
        let lbl = UILabel(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width - 30, height: UIScreen.main.bounds.size.height))
        lbl.numberOfLines = 0
        lbl.textColor = .white
        lbl.textAlignment = .center
        lbl.font = UIFont.systemFont(ofSize: 25, weight: .semibold)
        return lbl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(lbl)
        lbl.text = titleStr
    }
}
