// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRiskDetectionTimingTypeValue){

	MSGraphRiskDetectionTimingTypeNotDefined = 0,
	MSGraphRiskDetectionTimingTypeRealtime = 1,
	MSGraphRiskDetectionTimingTypeNearRealtime = 2,
	MSGraphRiskDetectionTimingTypeOffline = 3,
	MSGraphRiskDetectionTimingTypeUnknownFutureValue = 4,
    MSGraphRiskDetectionTimingTypeEndOfEnum
};

@interface MSGraphRiskDetectionTimingType : NSObject

+(MSGraphRiskDetectionTimingType*) notDefined;
+(MSGraphRiskDetectionTimingType*) realtime;
+(MSGraphRiskDetectionTimingType*) nearRealtime;
+(MSGraphRiskDetectionTimingType*) offline;
+(MSGraphRiskDetectionTimingType*) unknownFutureValue;

+(MSGraphRiskDetectionTimingType*) UnknownEnumValue;

+(MSGraphRiskDetectionTimingType*) riskDetectionTimingTypeWithEnumValue:(MSGraphRiskDetectionTimingTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRiskDetectionTimingTypeValue enumValue;

@end


@interface NSString (MSGraphRiskDetectionTimingType)

- (MSGraphRiskDetectionTimingType*) toMSGraphRiskDetectionTimingType;

@end
