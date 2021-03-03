// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphPrintColorModeValue){

	MSGraphPrintColorModeBlackAndWhite = 0,
	MSGraphPrintColorModeGrayscale = 1,
	MSGraphPrintColorModeColor = 2,
	MSGraphPrintColorModeAuto = 3,
	MSGraphPrintColorModeUnknownFutureValue = 4,
    MSGraphPrintColorModeEndOfEnum
};

@interface MSGraphPrintColorMode : NSObject

+(MSGraphPrintColorMode*) blackAndWhite;
+(MSGraphPrintColorMode*) grayscale;
+(MSGraphPrintColorMode*) color;
+(MSGraphPrintColorMode*) auto;
+(MSGraphPrintColorMode*) unknownFutureValue;

+(MSGraphPrintColorMode*) UnknownEnumValue;

+(MSGraphPrintColorMode*) printColorModeWithEnumValue:(MSGraphPrintColorModeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphPrintColorModeValue enumValue;

@end


@interface NSString (MSGraphPrintColorMode)

- (MSGraphPrintColorMode*) toMSGraphPrintColorMode;

@end
