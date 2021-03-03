// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphPrintMultipageLayoutValue){

	MSGraphPrintMultipageLayoutClockwiseFromTopLeft = 0,
	MSGraphPrintMultipageLayoutCounterclockwiseFromTopLeft = 1,
	MSGraphPrintMultipageLayoutCounterclockwiseFromTopRight = 2,
	MSGraphPrintMultipageLayoutClockwiseFromTopRight = 3,
	MSGraphPrintMultipageLayoutCounterclockwiseFromBottomLeft = 4,
	MSGraphPrintMultipageLayoutClockwiseFromBottomLeft = 5,
	MSGraphPrintMultipageLayoutCounterclockwiseFromBottomRight = 6,
	MSGraphPrintMultipageLayoutClockwiseFromBottomRight = 7,
	MSGraphPrintMultipageLayoutUnknownFutureValue = 8,
    MSGraphPrintMultipageLayoutEndOfEnum
};

@interface MSGraphPrintMultipageLayout : NSObject

+(MSGraphPrintMultipageLayout*) clockwiseFromTopLeft;
+(MSGraphPrintMultipageLayout*) counterclockwiseFromTopLeft;
+(MSGraphPrintMultipageLayout*) counterclockwiseFromTopRight;
+(MSGraphPrintMultipageLayout*) clockwiseFromTopRight;
+(MSGraphPrintMultipageLayout*) counterclockwiseFromBottomLeft;
+(MSGraphPrintMultipageLayout*) clockwiseFromBottomLeft;
+(MSGraphPrintMultipageLayout*) counterclockwiseFromBottomRight;
+(MSGraphPrintMultipageLayout*) clockwiseFromBottomRight;
+(MSGraphPrintMultipageLayout*) unknownFutureValue;

+(MSGraphPrintMultipageLayout*) UnknownEnumValue;

+(MSGraphPrintMultipageLayout*) printMultipageLayoutWithEnumValue:(MSGraphPrintMultipageLayoutValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphPrintMultipageLayoutValue enumValue;

@end


@interface NSString (MSGraphPrintMultipageLayout)

- (MSGraphPrintMultipageLayout*) toMSGraphPrintMultipageLayout;

@end
