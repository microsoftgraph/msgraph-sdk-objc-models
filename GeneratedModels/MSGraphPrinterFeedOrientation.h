// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphPrinterFeedOrientationValue){

	MSGraphPrinterFeedOrientationLongEdgeFirst = 0,
	MSGraphPrinterFeedOrientationShortEdgeFirst = 1,
	MSGraphPrinterFeedOrientationUnknownFutureValue = 2,
    MSGraphPrinterFeedOrientationEndOfEnum
};

@interface MSGraphPrinterFeedOrientation : NSObject

+(MSGraphPrinterFeedOrientation*) longEdgeFirst;
+(MSGraphPrinterFeedOrientation*) shortEdgeFirst;
+(MSGraphPrinterFeedOrientation*) unknownFutureValue;

+(MSGraphPrinterFeedOrientation*) UnknownEnumValue;

+(MSGraphPrinterFeedOrientation*) printerFeedOrientationWithEnumValue:(MSGraphPrinterFeedOrientationValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphPrinterFeedOrientationValue enumValue;

@end


@interface NSString (MSGraphPrinterFeedOrientation)

- (MSGraphPrinterFeedOrientation*) toMSGraphPrinterFeedOrientation;

@end
