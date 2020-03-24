// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphThreatAssessmentRequestSourceValue){

	MSGraphThreatAssessmentRequestSourceUndefined = 0,
	MSGraphThreatAssessmentRequestSourceUser = 1,
	MSGraphThreatAssessmentRequestSourceAdministrator = 2,
    MSGraphThreatAssessmentRequestSourceEndOfEnum
};

@interface MSGraphThreatAssessmentRequestSource : NSObject

+(MSGraphThreatAssessmentRequestSource*) undefined;
+(MSGraphThreatAssessmentRequestSource*) user;
+(MSGraphThreatAssessmentRequestSource*) administrator;

+(MSGraphThreatAssessmentRequestSource*) UnknownEnumValue;

+(MSGraphThreatAssessmentRequestSource*) threatAssessmentRequestSourceWithEnumValue:(MSGraphThreatAssessmentRequestSourceValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphThreatAssessmentRequestSourceValue enumValue;

@end


@interface NSString (MSGraphThreatAssessmentRequestSource)

- (MSGraphThreatAssessmentRequestSource*) toMSGraphThreatAssessmentRequestSource;

@end
