//
//  IApiClient.swift
//  mvvmTutorial
//
//  Created by Aung Ko Ko on 10/11/2019.
//  Copyright © 2019 Phone Zaw Myint. All rights reserved.
//

import Foundation
import RxSwift
protocol IApiClient {
    func getAllBottleList()-> Observable<GetAllResponse>
}
