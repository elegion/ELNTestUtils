//
//  testutilsTests.m
//  testutilsTests
//
//  Created by Sergey Rakov on 31.03.16.
//  Copyright © 2016 e-Legion. All rights reserved.
//

#import <XCTestCase+ELNHelpers.h>

@interface testutilsTests : XCTestCase

@end

@implementation testutilsTests

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testExpectationNoCompletion
{
    [self eln_expectationWithDescription:@"Test1" timeout:5 block:^(XCTestExpectation * _Nonnull expectation) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [expectation fulfill];
        });
    }];
}

- (void)testExpectationSimpleCompletion
{
    [self eln_expectationWithDescription:@"Test2" timeout:5 block:^(XCTestExpectation * _Nonnull expectation) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [expectation fulfill];
        });
    } completion:^(NSError * _Nullable error) {
        NSLog(@"Completion");
    }];
}

- (void)testExpectationNilCompletion
{
    [self eln_expectationWithDescription:@"Test2" timeout:5 block:^(XCTestExpectation * _Nonnull expectation) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [expectation fulfill];
        });
    } completion:nil];
}

@end
