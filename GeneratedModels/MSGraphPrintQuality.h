// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphPrintQualityValue){

	MSGraphPrintQualityLow = 0,
	MSGraphPrintQualityMedium = 1,
	MSGraphPrintQualityHigh = 2,
	MSGraphPrintQualityUnknownFutureValue = 3,
    MSGraphPrintQualityEndOfEnum
};

@interface MSGraphPrintQuality : NSObject

+(MSGraphPrintQuality*) low;
+(MSGraphPrintQuality*) medium;
+(MSGraphPrintQuality*) high;
+(MSGraphPrintQuality*) unknownFutureValue;

+(MSGraphPrintQuality*) UnknownEnumValue;

+(MSGraphPrintQuality*) printQualityWithEnumValue:(MSGraphPrintQualityValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphPrintQualityValue enumValue;

@end


@interface NSString (MSGraphPrintQuality)

- (MSGraphPrintQuality*) toMSGraphPrintQuality;

@end
