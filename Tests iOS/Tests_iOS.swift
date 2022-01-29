//
//  Tests_iOS.swift
//  Tests iOS
//
//  Created by Daksh Patel on 1/28/22.
//

import XCTest

class Tests_iOS: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testForm1Solution1() async{
       
        let a = 3.0
        let b = 5.0
        let c = -2.0
        let quad = Quadratic()
        
        let form1sol1 = quad.quadraticForm1Sol1(aValue: a, bValue: b, cValue: c)
        
        XCTAssertEqual(form1sol1, ((1/3)), accuracy: 1.0E-7, "was not equal to this resolution")
    }
    
    func testForm1Solution2() async{
       
        let a = 3.0
        let b = 5.0
        let c = -2.0
        let quad = Quadratic()
        
        let form1sol2 = quad.quadraticForm1Sol2(aValue: a, bValue: b, cValue: c)
        
        XCTAssertEqual(form1sol2, ((-2.000)), accuracy: 1.0E-7, "was not equal to this resolution")
    }
    
    func testForm2Solution1() async{
       
        let a = 3.0
        let b = 5.0
        let c = -2.0
        let quad = Quadratic()
        
        let form2sol1 = quad.quadraticForm2Sol1(aValue: a, bValue: b, cValue: c)
        
        XCTAssertEqual(form2sol1, ((1/3)), accuracy: 1.0E-7, "was not equal to this resolution")
    }

    func testForm2Solution2() async{
       
        let a = 3.0
        let b = 5.0
        let c = -2.0
        let quad = Quadratic()
        
        let form2sol2 = quad.quadraticForm2Sol2(aValue: a, bValue: b, cValue: c)
        
        XCTAssertEqual(form2sol2, -2.000, accuracy: 1.0E-7, "was not equal to this resolution")
    }


    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
