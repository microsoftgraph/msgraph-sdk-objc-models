// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIdentitySet; 
#import "MSGraphSubjectRightsRequestStage.h"
#import "MSGraphSubjectRightsRequestStageStatus.h"


#import "MSObject.h"

@interface MSGraphSubjectRightsRequestHistory : MSObject

@property (nullable, nonatomic, setter=setChangedBy:, getter=changedBy) MSGraphIdentitySet* changedBy;
@property (nullable, nonatomic, setter=setEventDateTime:, getter=eventDateTime) NSDate* eventDateTime;
@property (nullable, nonatomic, setter=setStage:, getter=stage) MSGraphSubjectRightsRequestStage* stage;
@property (nullable, nonatomic, setter=setStageStatus:, getter=stageStatus) MSGraphSubjectRightsRequestStageStatus* stageStatus;
@property (nullable, nonatomic, setter=setType:, getter=type) NSString* type;

@end
