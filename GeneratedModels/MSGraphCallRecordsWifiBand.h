// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphCallRecordsWifiBandValue){

	MSGraphCallRecordsWifiBandUnknown = 0,
	MSGraphCallRecordsWifiBandFrequency24GHz = 1,
	MSGraphCallRecordsWifiBandFrequency50GHz = 2,
	MSGraphCallRecordsWifiBandFrequency60GHz = 3,
	MSGraphCallRecordsWifiBandUnknownFutureValue = 4,
    MSGraphCallRecordsWifiBandEndOfEnum
};

@interface MSGraphCallRecordsWifiBand : NSObject

+(MSGraphCallRecordsWifiBand*) unknown;
+(MSGraphCallRecordsWifiBand*) frequency24GHz;
+(MSGraphCallRecordsWifiBand*) frequency50GHz;
+(MSGraphCallRecordsWifiBand*) frequency60GHz;
+(MSGraphCallRecordsWifiBand*) unknownFutureValue;

+(MSGraphCallRecordsWifiBand*) UnknownEnumValue;

+(MSGraphCallRecordsWifiBand*) wifiBandWithEnumValue:(MSGraphCallRecordsWifiBandValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphCallRecordsWifiBandValue enumValue;

@end


@interface NSString (MSGraphCallRecordsWifiBand)

- (MSGraphCallRecordsWifiBand*) toMSGraphCallRecordsWifiBand;

@end
