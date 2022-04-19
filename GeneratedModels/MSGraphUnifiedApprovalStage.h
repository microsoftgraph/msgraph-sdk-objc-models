// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphSubjectSet; 


#import "MSObject.h"

@interface MSGraphUnifiedApprovalStage : MSObject

@property (nonatomic, setter=setApprovalStageTimeOutInDays:, getter=approvalStageTimeOutInDays) int32_t approvalStageTimeOutInDays;
@property (nullable, nonatomic, setter=setEscalationApprovers:, getter=escalationApprovers) NSArray* escalationApprovers;
@property (nonatomic, setter=setEscalationTimeInMinutes:, getter=escalationTimeInMinutes) int32_t escalationTimeInMinutes;
@property (nonatomic, setter=setIsApproverJustificationRequired:, getter=isApproverJustificationRequired) BOOL isApproverJustificationRequired;
@property (nonatomic, setter=setIsEscalationEnabled:, getter=isEscalationEnabled) BOOL isEscalationEnabled;
@property (nullable, nonatomic, setter=setPrimaryApprovers:, getter=primaryApprovers) NSArray* primaryApprovers;

@end
