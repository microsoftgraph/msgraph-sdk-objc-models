// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphThreatAssessmentResultTypeValue){

	MSGraphThreatAssessmentResultTypeCheckPolicy = 1,
	MSGraphThreatAssessmentResultTypeRescan = 2,
	MSGraphThreatAssessmentResultTypeUnknownFutureValue = 3,
    MSGraphThreatAssessmentResultTypeEndOfEnum
};

@interface MSGraphThreatAssessmentResultType : NSObject

+(MSGraphThreatAssessmentResultType*) checkPolicy;
+(MSGraphThreatAssessmentResultType*) rescan;
+(MSGraphThreatAssessmentResultType*) unknownFutureValue;

+(MSGraphThreatAssessmentResultType*) UnknownEnumValue;

+(MSGraphThreatAssessmentResultType*) threatAssessmentResultTypeWithEnumValue:(MSGraphThreatAssessmentResultTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphThreatAssessmentResultTypeValue enumValue;

@end


@interface NSString (MSGraphThreatAssessmentResultType)

- (MSGraphThreatAssessmentResultType*) toMSGraphThreatAssessmentResultType;

@end
