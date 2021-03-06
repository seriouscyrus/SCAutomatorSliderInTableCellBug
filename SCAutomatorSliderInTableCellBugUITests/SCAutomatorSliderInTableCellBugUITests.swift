//
//  SCAutomatorSliderInTableCellBugUITests.swift
//  SCAutomatorSliderInTableCellBugUITests
//
//  Created by George Brown on 24.10.17.
//  Copyright © 2017 Serious Cyrus. All rights reserved.
//

import XCTest

class SCAutomatorSliderInTableCellBugUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTableViewCellSliderAdjustToNormalizedSliderPosition() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertTrue(XCUIApplication().tables.sliders["cellSlider"].exists)
        XCUIApplication().tables.sliders["cellSlider"].adjust(toNormalizedSliderPosition: 0.75)
        XCTAssertTrue(XCUIApplication().tables.staticTexts["0.75"].exists)
    }
    
}
