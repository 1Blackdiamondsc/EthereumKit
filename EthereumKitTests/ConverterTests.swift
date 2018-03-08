//
//  ConverterTests.swift
//  EthereumKitTests
//
//  Created by yuzushioh on 2018/03/08.
//  Copyright © 2018 yuzushioh. All rights reserved.
//

import XCTest
import SMP
@testable import EthereumKit

class ConverterTests: XCTestCase {
    
    func testConverter() {
        XCTAssertEqual(Converter.toEther(wei: BInt("100000000000000")!).decimalDescription, "0.0001")
        XCTAssertEqual(Converter.toEther(wei: BInt("1000000000000000")!).decimalDescription, "0.0010")
        XCTAssertEqual(Converter.toEther(wei: BInt("10000000000000000")!).decimalDescription, "0.0100")
        XCTAssertEqual(Converter.toEther(wei: BInt("100000000000000000")!).decimalDescription, "0.1000")
        XCTAssertEqual(Converter.toEther(wei: BInt("1000000000000000000")!).description, "1")
        XCTAssertEqual(Converter.toEther(wei: BInt("10000000000000000000")!).description, "10")
        XCTAssertEqual(Converter.toEther(wei: BInt("100000000000000000000")!).description, "100")
        XCTAssertEqual(Converter.toEther(wei: BInt("1000000000000000000000")!).description, "1000")
        
        XCTAssertEqual(Converter.toWei(ether: BDouble("0.0001")!).description, "100000000000000")
        XCTAssertEqual(Converter.toWei(ether: BDouble("0.001")!).description, "1000000000000000")
        XCTAssertEqual(Converter.toWei(ether: BDouble("0.01")!).description, "10000000000000000")
        XCTAssertEqual(Converter.toWei(ether: BDouble("0.1")!).description, "100000000000000000")
        XCTAssertEqual(Converter.toWei(ether: BDouble("1")!).description, "1000000000000000000")
        XCTAssertEqual(Converter.toWei(ether: BDouble("10")!).description, "10000000000000000000")
        XCTAssertEqual(Converter.toWei(ether: BDouble("100")!).description, "100000000000000000000")
        XCTAssertEqual(Converter.toWei(ether: BDouble("1000")!).description, "1000000000000000000000")
        
        XCTAssertEqual(Converter.toWei(GWei: 1), 1000000000)
        XCTAssertEqual(Converter.toWei(GWei: 10), 10000000000)
        XCTAssertEqual(Converter.toWei(GWei: 15), 15000000000)
        XCTAssertEqual(Converter.toWei(GWei: 30), 30000000000)
        XCTAssertEqual(Converter.toWei(GWei: 60), 60000000000)
        XCTAssertEqual(Converter.toWei(GWei: 99), 99000000000)
    }
}
