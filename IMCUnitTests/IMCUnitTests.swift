//
//  IMCUnitTests.swift
//  IMCUnitTests
//
//  Created by Jose Javier on 11/02/20.
//  Copyright © 2020 Eric Brito. All rights reserved.
//

import XCTest
@testable import IMC

class IMCUnitTests: XCTestCase {

    var sut: IMCCalculator!
    
    override func setUp() {
        super.setUp()
        sut = IMCCalculator()
    }
    
    func testObesity() {
        //Given
        let weight = 90.0
        let height = 1.45
        
        //When
        sut.refresh(weight: weight, height: height)
        
        //Then
        let expectedResult = "42: Obesidade"
        XCTAssertEqual(expectedResult, sut.result, "Cálculo não deu o resultado esperado para obesidade")
    }
    
    func testThinnes() {
        //Given
        let weight = 52.0
        let height = 1.82
        
        //When
        sut.refresh(weight: weight, height: height)
        
        //Then
        let expectedResult = "15: Magreza"
        XCTAssertEqual(expectedResult, sut.result, "Cálculo não deu o resultado esperado para magreza")
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

}
