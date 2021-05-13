//
//  BadmintonFeeTests.swift
//  UnitTestTrainingTests
//
//  Created by dong son on 5/10/21.
//  Copyright © 2021 Sun Asterisk. All rights reserved.
//

@testable import UnitTestTraining
import XCTest

final class BadmintonFeeTests: XCTestCase, CalculateBadmintonFee {

    override func setUp() {
        super.setUp()
    }

    // Test case 1
    /// Tuổi: -1
    /// Ngày chơi: Thứ 2
    /// Giới tính: Nam
    func test_calculateFee1() {
        let dto = BadmintonGameDto(isMale: true, playDate: "2020/09/7".toDate(), age: -1)
        let result = self.calculatePlayFee(dto: dto)
        XCTAssertEqual(result, 0.0)
    }

    // Test case 2
    /// Tuổi: 5
    /// Ngày chơi: Thứ 2
    /// Giới tính: Nam
    func test_calculateFee2() {
        let dto = BadmintonGameDto(isMale: true, playDate: "2020/09/7".toDate(), age: 5)
        let result = self.calculatePlayFee(dto: dto)
        XCTAssertEqual(result, 900.0)
    }

    // Test case 3
    /// Tuổi: 16
    /// Ngày chơi: Thứ 2
    /// Giới tính: Nam
    func test_calculateFee3() {
        let dto = BadmintonGameDto(isMale: true, playDate: "2020/09/7".toDate(), age: 16)
        let result = self.calculatePlayFee(dto: dto)
        XCTAssertEqual(result, 1800.0)
    }

    // Test case 4
    /// Tuổi: 65
    /// Ngày chơi: Thứ 2
    /// Giới tính: Nam
    func test_calculateFee4() {
        let dto = BadmintonGameDto(isMale: true, playDate: "2020/09/7".toDate(), age: 65)
        let result = self.calculatePlayFee(dto: dto)
        XCTAssertEqual(result, 1800.0)
    }

    // Test case 5
    /// Tuổi: 66
    /// Ngày chơi: Thứ 2
    /// Giới tính: Nam
    func test_calculateFee5() {
        let dto = BadmintonGameDto(isMale: true, playDate: "2020/09/7".toDate(), age: 66)
        let result = self.calculatePlayFee(dto: dto)
        XCTAssertEqual(result, 1600.0)
    }

    // Test case 6
    /// Tuổi: 30
    /// Ngày chơi: Thứ 6
    /// Giới tính: Nữ
    func test_calculateFee6() {
        let dto = BadmintonGameDto(isMale: false, playDate: "2020/09/18".toDate(), age: 30)
        let result = self.calculatePlayFee(dto: dto)
        XCTAssertEqual(result, 1400.0)
    }

    // Test case 7
    /// Tuổi: 9
    /// Ngày chơi: Thứ 6
    /// Giới tính: Nữ
    func test_calculateFee7() {
        let dto = BadmintonGameDto(isMale: false, playDate: "2020/09/18".toDate(), age: 9)
        let result = self.calculatePlayFee(dto: dto)
        XCTAssertEqual(result, 900.0)
    }

    // Test case 8
    /// Tuổi: 66
    /// Ngày chơi: Thứ 6
    /// Giới tính: Nữ
    func test_calculateFee8() {
        let dto = BadmintonGameDto(isMale: false, playDate: "2020/09/18".toDate(), age: 66)
        let result = self.calculatePlayFee(dto: dto)
        XCTAssertEqual(result, 1400.0)
    }

    // Test case 9
    /// Tuổi: 66
    /// Ngày chơi: Thứ 3
    /// Giới tính: Nữ
    func test_calculateFee9() {
        let dto = BadmintonGameDto(isMale: false, playDate: "2020/09/15".toDate(), age: 66)
        let result = self.calculatePlayFee(dto: dto)
        XCTAssertEqual(result, 1200.0)
    }

    // Test case 10
    /// Tuổi: 66
    /// Ngày chơi: Thứ 3
    /// Giới tính: Nữ
    func test_calculateFee10() {
        let dto = BadmintonGameDto(isMale: false, playDate: "2020/09/8".toDate(), age: 8)
        let result = self.calculatePlayFee(dto: dto)
        XCTAssertEqual(result, 900.0)
    }

    // Test case 11
    /// Tuổi: 14
    /// Ngày chơi: Thứ 3
    /// Giới tính: Nữ
    func test_calculateFee11() {
        let dto = BadmintonGameDto(isMale: false, playDate: "2020/09/8".toDate(), age: 14)
        let result = self.calculatePlayFee(dto: dto)
        XCTAssertEqual(result, 1200.0)
    }

    // Test case 12
    /// Tuổi: 121
    /// Ngày chơi: Thứ 3
    /// Giới tính: Nữ
    func test_calculateFee12() {
        let dto = BadmintonGameDto(isMale: false, playDate: "2020/09/8".toDate(), age: 121)
        let result = self.calculatePlayFee(dto: dto)
        XCTAssertEqual(result, 0.0)
    }

    // Test case 13
    /// Tuổi: 100
    /// Ngày chơi: Thứ 3
    /// Giới tính: Nam
    func test_calculateFee13() {
        let dto = BadmintonGameDto(isMale: true, playDate: "2020/09/8".toDate(), age: 100)
        let result = self.calculatePlayFee(dto: dto)
        XCTAssertEqual(result, 1200.0)
    }

    func test_validateAge_success() {
        let result = self.validateAge("25")
        XCTAssert(result.isValid)
    }

    func test_validateAge_failed() {
        let result = self.validateAge("135")
        XCTAssertFalse(result.isValid)
    }

    func test_validateAge_failed_NaN() {
        let result = self.validateAge("abcd")
        XCTAssertFalse(result.isValid)
    }
}