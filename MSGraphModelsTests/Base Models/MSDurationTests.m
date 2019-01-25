// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import <XCTest/XCTest.h>
#import "MSDuration.h"

@interface MSDurationTests : XCTestCase

@end

@implementation MSDurationTests {
    NSString *iso8601Duration;
    NSTimeInterval timeInterval;
}

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    iso8601Duration = @"PT2D3H24M35S";
    timeInterval = 185075;
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testInitWithDuration {
    MSDuration *duration = [[MSDuration alloc] initWithDuration:iso8601Duration];

    XCTAssertEqualObjects(duration.durationString, iso8601Duration);
    XCTAssertEqual(duration.durationInterval, timeInterval);
}

- (void)testInitWithInterval {
    MSDuration *duration = [[MSDuration alloc] initWithTimeInterval:timeInterval];

    XCTAssertEqualObjects(duration.durationString, iso8601Duration);
    XCTAssertEqual(duration.durationInterval, timeInterval);
}

- (void) testMSDurationFromString {
    MSDuration *duration = [MSDuration ms_durationFromString:iso8601Duration];

    XCTAssertEqualObjects(duration.durationString, iso8601Duration);
    XCTAssertEqual(duration.durationInterval, timeInterval);
}

- (void) testGetDuration {
     NSString *durationString = [MSDuration getDurationForTimeInterval:timeInterval];

    XCTAssertEqualObjects(durationString, iso8601Duration);
}

- (void) testGetInterval {
    NSTimeInterval interval = [MSDuration getTimeIntervalForDuration:iso8601Duration];

    XCTAssertEqual(interval, timeInterval);
}

- (void)testInitWithInvalidDuration {
    MSDuration *duration = [[MSDuration alloc] initWithDuration:@"hello"];

    XCTAssertEqualObjects(duration.durationString, @"hello");
    XCTAssertEqual(duration.durationInterval, 0);
}

- (void)testInitWithInvalidDurationWithWrongChar {
    MSDuration *duration = [[MSDuration alloc] initWithDuration:@"PT3d5H3M3S"];

    XCTAssertEqualObjects(duration.durationString, @"PT3d5H3M3S");
    XCTAssertEqual(duration.durationInterval, 0);
}

@end
