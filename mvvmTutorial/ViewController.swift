//
//  ViewController.swift
//  mvvmTutorial
//
//  Created by Aung Ko Ko on 10/11/2019.
//  Copyright © 2019 Phone Zaw Myint. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet weak var bottleTableView: UITableView!
    
    let viewModel = ListViewModel()
    var mBeerList: [DrinkVO] = []
    let bag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bottleTableView.rowHeight = 147
        bottleTableView.separatorStyle = .none
        
        bottleTableView.register(UINib(nibName: String(describing: DrinkTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: DrinkTableViewCell.self))
       
        initFetchData()
        viewModel.requestData()
    }
    
    func initFetchData(){
        viewModel.beerList
            .observeOn(MainScheduler.instance)
            .bind(to: bottleTableView.rx.items){tableView, index, item in
                let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: DrinkTableViewCell.self), for: IndexPath(row: index, section: 0)) as! DrinkTableViewCell
                cell.mdata = item
                return cell
            }.disposed(by: bag)
        
    }
}


