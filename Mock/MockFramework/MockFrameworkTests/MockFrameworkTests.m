//
//  MockFrameworkTests.m
//  MockFrameworkTests
//
//  Created by Openfield Mobility on 27/11/2017.
//  Copyright © 2017 Openfield. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MyClass.h"
#import <OCMock.h>

@interface MockFrameworkTests : XCTestCase {
    id MyMockedObject;
    NSString* val;
}

@end

@implementation MockFrameworkTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    val = @"MyClassFromMock";
    
    // Mock
    MyMockedObject = OCMClassMock([MyClass class]);
    
    // Stub
    OCMStub([MyMockedObject returnClassName]).andReturn(val);
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testFirstMock_ReturnClassNameShouldReturnANewValue {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString* endVal = [MyMockedObject returnClassName];
    
    XCTAssertEqual(endVal, val);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
