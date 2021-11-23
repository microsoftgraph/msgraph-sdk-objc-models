// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphSubjectRightsRequestStageStatusValue){

	MSGraphSubjectRightsRequestStageStatusNotStarted = 0,
	MSGraphSubjectRightsRequestStageStatusCurrent = 1,
	MSGraphSubjectRightsRequestStageStatusCompleted = 3,
	MSGraphSubjectRightsRequestStageStatusFailed = 4,
	MSGraphSubjectRightsRequestStageStatusUnknownFutureValue = 5,
    MSGraphSubjectRightsRequestStageStatusEndOfEnum
};

@interface MSGraphSubjectRightsRequestStageStatus : NSObject

+(MSGraphSubjectRightsRequestStageStatus*) notStarted;
+(MSGraphSubjectRightsRequestStageStatus*) current;
+(MSGraphSubjectRightsRequestStageStatus*) completed;
+(MSGraphSubjectRightsRequestStageStatus*) failed;
+(MSGraphSubjectRightsRequestStageStatus*) unknownFutureValue;

+(MSGraphSubjectRightsRequestStageStatus*) UnknownEnumValue;

+(MSGraphSubjectRightsRequestStageStatus*) subjectRightsRequestStageStatusWithEnumValue:(MSGraphSubjectRightsRequestStageStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphSubjectRightsRequestStageStatusValue enumValue;

@end


@interface NSString (MSGraphSubjectRightsRequestStageStatus)

- (MSGraphSubjectRightsRequestStageStatus*) toMSGraphSubjectRightsRequestStageStatus;

@end
