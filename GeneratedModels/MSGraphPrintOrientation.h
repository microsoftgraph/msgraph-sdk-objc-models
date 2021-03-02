// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphPrintOrientationValue){

	MSGraphPrintOrientationPortrait = 3,
	MSGraphPrintOrientationLandscape = 4,
	MSGraphPrintOrientationReverseLandscape = 5,
	MSGraphPrintOrientationReversePortrait = 6,
	MSGraphPrintOrientationUnknownFutureValue = 7,
    MSGraphPrintOrientationEndOfEnum
};

@interface MSGraphPrintOrientation : NSObject

+(MSGraphPrintOrientation*) portrait;
+(MSGraphPrintOrientation*) landscape;
+(MSGraphPrintOrientation*) reverseLandscape;
+(MSGraphPrintOrientation*) reversePortrait;
+(MSGraphPrintOrientation*) unknownFutureValue;

+(MSGraphPrintOrientation*) UnknownEnumValue;

+(MSGraphPrintOrientation*) printOrientationWithEnumValue:(MSGraphPrintOrientationValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphPrintOrientationValue enumValue;

@end


@interface NSString (MSGraphPrintOrientation)

- (MSGraphPrintOrientation*) toMSGraphPrintOrientation;

@end
