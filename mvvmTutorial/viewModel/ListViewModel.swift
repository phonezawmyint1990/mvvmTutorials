//
//  ListViewModel.swift
//  mvvmTutorial
//
//  Created by Aung Ko Ko on 10/11/2019.
//  Copyright © 2019 Phone Zaw Myint. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift

class ListViewModel: BaseViewModel{
    
    public var isLoadingObs: BehaviorRelay<Bool> = BehaviorRelay(value: false)
    public var _errorObs: BehaviorRelay<String?> = BehaviorRelay(value: nil)
    
    let apiService = SharedApiClient.shared
    let bag = DisposeBag()
    
    public var beerList: PublishSubject<[DrinkVO]> = PublishSubject()
    
    override init() {}
    
    public func requestData(){
        apiService.getAllBottleList()
        .subscribeOn(ConcurrentDispatchQueueScheduler.init(queue: DispatchQueue.global()))
            .subscribe(onNext:{response in
                self.isLoadingObs.accept(true)
                self.beerList.onNext(response.data)
            }).disposed(by: bag)
    }
}
