//
//  IMCAsyncTest.swift
//  IMCUnitTests
//
//  Created by Jose Javier on 11/02/20.
//  Copyright © 2020 Eric Brito. All rights reserved.
//

import XCTest
@testable import IMC

class IMCAsyncTest: XCTestCase {

    override func setUp() {
    }

    override func tearDown() {
    }

    func testAsync() {
        //Given
        let url = URL(string: "https://swapi.co/api/people/1")!
        let promise = expectation(description: "Status code 200")
        
        //When
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let response = response as? HTTPURLResponse, response.statusCode == 200 {
                //Sucesso!!
                promise.fulfill()
            } else {
                //merda
                XCTFail("Não recebi 200")
            }
            
        }.resume()
        
        wait(for: [promise], timeout: 5.0)
    }

}
