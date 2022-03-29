// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphSubjectRightsRequestStageValue){

	MSGraphSubjectRightsRequestStageContentRetrieval = 0,
	MSGraphSubjectRightsRequestStageContentReview = 1,
	MSGraphSubjectRightsRequestStageGenerateReport = 2,
	MSGraphSubjectRightsRequestStageContentDeletion = 3,
	MSGraphSubjectRightsRequestStageCaseResolved = 4,
	MSGraphSubjectRightsRequestStageContentEstimate = 5,
	MSGraphSubjectRightsRequestStageUnknownFutureValue = 6,
    MSGraphSubjectRightsRequestStageEndOfEnum
};

@interface MSGraphSubjectRightsRequestStage : NSObject

+(MSGraphSubjectRightsRequestStage*) contentRetrieval;
+(MSGraphSubjectRightsRequestStage*) contentReview;
+(MSGraphSubjectRightsRequestStage*) generateReport;
+(MSGraphSubjectRightsRequestStage*) contentDeletion;
+(MSGraphSubjectRightsRequestStage*) caseResolved;
+(MSGraphSubjectRightsRequestStage*) contentEstimate;
+(MSGraphSubjectRightsRequestStage*) unknownFutureValue;

+(MSGraphSubjectRightsRequestStage*) UnknownEnumValue;

+(MSGraphSubjectRightsRequestStage*) subjectRightsRequestStageWithEnumValue:(MSGraphSubjectRightsRequestStageValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphSubjectRightsRequestStageValue enumValue;

@end


@interface NSString (MSGraphSubjectRightsRequestStage)

- (MSGraphSubjectRightsRequestStage*) toMSGraphSubjectRightsRequestStage;

@end
