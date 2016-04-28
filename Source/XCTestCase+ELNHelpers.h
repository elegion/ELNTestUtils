//
//  XCTestCase+ELNHelpers.h
//
//  Copyright © 2016 e-Legion. All rights reserved.
//

#import <XCTest/XCTest.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^ELNTestExpectationBlock)(XCTestExpectation * expectation);

@interface XCTestCase (ELNHelpers)

- (void)eln_expectationWithDescription:(NSString *)description timeout:(NSTimeInterval)timeout block:(ELNTestExpectationBlock)block;
- (void)eln_expectationWithDescription:(NSString *)description timeout:(NSTimeInterval)timeout block:(ELNTestExpectationBlock)block completion:(nullable XCWaitCompletionHandler)completion;

@end

NS_ASSUME_NONNULL_END

