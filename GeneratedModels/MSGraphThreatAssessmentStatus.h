// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphThreatAssessmentStatusValue){

	MSGraphThreatAssessmentStatusPending = 1,
	MSGraphThreatAssessmentStatusCompleted = 2,
    MSGraphThreatAssessmentStatusEndOfEnum
};

@interface MSGraphThreatAssessmentStatus : NSObject

+(MSGraphThreatAssessmentStatus*) pending;
+(MSGraphThreatAssessmentStatus*) completed;

+(MSGraphThreatAssessmentStatus*) UnknownEnumValue;

+(MSGraphThreatAssessmentStatus*) threatAssessmentStatusWithEnumValue:(MSGraphThreatAssessmentStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphThreatAssessmentStatusValue enumValue;

@end


@interface NSString (MSGraphThreatAssessmentStatus)

- (MSGraphThreatAssessmentStatus*) toMSGraphThreatAssessmentStatus;

@end
