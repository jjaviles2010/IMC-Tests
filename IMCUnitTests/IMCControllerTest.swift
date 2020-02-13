//
//  IMCControllerTest.swift
//  IMCUnitTests
//
//  Created by Jose Javier on 11/02/20.
//  Copyright © 2020 Eric Brito. All rights reserved.
//

import XCTest
@testable import IMC

class IMCControllerTest: XCTestCase {

    var sut: ViewController!
    
    override func setUp() {
        super.setUp()
        sut = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()
    }

    func testShowResults() {
        //Given
        sut.loadView()
        sut.tfWeight.text = "70.0"
        sut.tfHeight.text = "1.70"
        
        //When
        sut.calculate(nil)
        
        //Then
        XCTAssertEqual(sut.lbResult.text, "24: Peso ideal", "Resultado apresentado para o IMC está errado!")
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }

}
