//
//  IMCUITests.swift
//  IMCUITests
//
//  Created by Jose Javier on 11/02/20.
//  Copyright © 2020 Eric Brito. All rights reserved.
//

import XCTest
@testable import IMC

class IMCUITests: XCTestCase {

    var app: XCUIApplication!
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app =  XCUIApplication()
        app.launch()
    }

    override func tearDown() {
    }
    
    func testIdeal() {
        let tfWeight = app.textFields["Ex.: 75"]
        tfWeight.tap()
        tfWeight.typeText("75")
        
        let tfHeight = app.textFields["Ex.: 1,75"]
        tfHeight.tap()
        tfHeight.typeText("1.80")
                
        app.buttons["Calcular"].tap()
        
        XCTAssertNotNil(app.staticTexts["23: Pesso ideal"], "Label de resultados não foi apresentado corretamente")
        
    }

}
