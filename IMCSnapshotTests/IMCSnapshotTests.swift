//
//  IMCSnapshotTests.swift
//  IMCSnapshotTests
//
//  Created by Jose Javier on 11/02/20.
//  Copyright © 2020 Eric Brito. All rights reserved.
//

import FBSnapshotTestCase
@testable import IMC

class IMCSnapshotTests: FBSnapshotTestCase {
    
    //sut = sistem under test
    var sut: ViewController!

    override func setUp() {
        super.setUp()
        //primeira execucao grava o snapshot se o recordMode estiver como true
        //recordMode = true
        //fileNameOptions= [.device, .screenSize]
        usesDrawViewHierarchyInRect = true
        sut = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()
        sut.loadView()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testView() {
        FBSnapshotVerifyView(sut.view)
    }
    
    func testObesity() {
        //Given
        sut.tfWeight.text = "90.0"
        sut.tfHeight.text = "1.45"
        
        //When
        sut.calculate(nil)
        
        //Then
        FBSnapshotVerifyView(sut.view)
    }
}
