// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphThreatAssessmentContentTypeValue){

	MSGraphThreatAssessmentContentTypeMail = 1,
	MSGraphThreatAssessmentContentTypeUrl = 2,
	MSGraphThreatAssessmentContentTypeFile = 3,
    MSGraphThreatAssessmentContentTypeEndOfEnum
};

@interface MSGraphThreatAssessmentContentType : NSObject

+(MSGraphThreatAssessmentContentType*) mail;
+(MSGraphThreatAssessmentContentType*) url;
+(MSGraphThreatAssessmentContentType*) file;

+(MSGraphThreatAssessmentContentType*) UnknownEnumValue;

+(MSGraphThreatAssessmentContentType*) threatAssessmentContentTypeWithEnumValue:(MSGraphThreatAssessmentContentTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphThreatAssessmentContentTypeValue enumValue;

@end


@interface NSString (MSGraphThreatAssessmentContentType)

- (MSGraphThreatAssessmentContentType*) toMSGraphThreatAssessmentContentType;

@end
