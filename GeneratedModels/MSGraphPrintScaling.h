// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphPrintScalingValue){

	MSGraphPrintScalingAuto = 0,
	MSGraphPrintScalingShrinkToFit = 1,
	MSGraphPrintScalingFill = 2,
	MSGraphPrintScalingFit = 3,
	MSGraphPrintScalingNone = 4,
	MSGraphPrintScalingUnknownFutureValue = 5,
    MSGraphPrintScalingEndOfEnum
};

@interface MSGraphPrintScaling : NSObject

+(MSGraphPrintScaling*) auto;
+(MSGraphPrintScaling*) shrinkToFit;
+(MSGraphPrintScaling*) fill;
+(MSGraphPrintScaling*) fit;
+(MSGraphPrintScaling*) none;
+(MSGraphPrintScaling*) unknownFutureValue;

+(MSGraphPrintScaling*) UnknownEnumValue;

+(MSGraphPrintScaling*) printScalingWithEnumValue:(MSGraphPrintScalingValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphPrintScalingValue enumValue;

@end


@interface NSString (MSGraphPrintScaling)

- (MSGraphPrintScaling*) toMSGraphPrintScaling;

@end
