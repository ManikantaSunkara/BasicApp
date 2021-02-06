//
//  ChooseSideViewController.swift
//  BasicApp
//
//  Created by Aabid Khan on 06/02/21.
//  Copyright © 2021 Aabid Khan. All rights reserved.
//

import UIKit

class ChooseSideViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Navigation -
    private func goToDetailVc(_ isEmpire: Bool){
        let vc = storyboard?.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
        vc.isEmpire = isEmpire
        vc.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(vc, animated: true)
    }
    
    //MARK: - IBAction -
    @IBAction func btnEmpireTapped(_ sender: Any) {
        goToDetailVc(true)
    }
    
    @IBAction func btnRebelTapped(_ sender: Any) {
        goToDetailVc(false)
    }
    
}
