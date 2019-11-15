//
//  SharedApiClient.swift
//  mvvmTutorial
//
//  Created by Aung Ko Ko on 10/11/2019.
//  Copyright © 2019 Phone Zaw Myint. All rights reserved.
//

import Foundation
import RxSwift
class SharedApiClient: BaseApiClient{
    static let shared = SharedApiClient()
    private override init() {}
}

extension SharedApiClient: IApiClient{
    func getAllBottleList() -> Observable<GetAllResponse> {
         return self.requestApiWithoutHeaders(url: API_GET_ALL_BOTTLES, method: .get, params: [:], value: GetAllResponse.self)
    }
}
