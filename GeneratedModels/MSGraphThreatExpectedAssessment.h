// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphThreatExpectedAssessmentValue){

	MSGraphThreatExpectedAssessmentBlock = 1,
	MSGraphThreatExpectedAssessmentUnblock = 2,
    MSGraphThreatExpectedAssessmentEndOfEnum
};

@interface MSGraphThreatExpectedAssessment : NSObject

+(MSGraphThreatExpectedAssessment*) block;
+(MSGraphThreatExpectedAssessment*) unblock;

+(MSGraphThreatExpectedAssessment*) UnknownEnumValue;

+(MSGraphThreatExpectedAssessment*) threatExpectedAssessmentWithEnumValue:(MSGraphThreatExpectedAssessmentValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphThreatExpectedAssessmentValue enumValue;

@end


@interface NSString (MSGraphThreatExpectedAssessment)

- (MSGraphThreatExpectedAssessment*) toMSGraphThreatExpectedAssessment;

@end
