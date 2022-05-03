// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSDuration, MSGraphSubjectSet; 


#import "MSObject.h"

@interface MSGraphAccessPackageApprovalStage : MSObject

@property (nullable, nonatomic, setter=setDurationBeforeAutomaticDenial:, getter=durationBeforeAutomaticDenial) MSDuration* durationBeforeAutomaticDenial;
@property (nullable, nonatomic, setter=setDurationBeforeEscalation:, getter=durationBeforeEscalation) MSDuration* durationBeforeEscalation;
@property (nullable, nonatomic, setter=setEscalationApprovers:, getter=escalationApprovers) NSArray* escalationApprovers;
@property (nullable, nonatomic, setter=setFallbackEscalationApprovers:, getter=fallbackEscalationApprovers) NSArray* fallbackEscalationApprovers;
@property (nullable, nonatomic, setter=setFallbackPrimaryApprovers:, getter=fallbackPrimaryApprovers) NSArray* fallbackPrimaryApprovers;
@property (nonatomic, setter=setIsApproverJustificationRequired:, getter=isApproverJustificationRequired) BOOL isApproverJustificationRequired;
@property (nonatomic, setter=setIsEscalationEnabled:, getter=isEscalationEnabled) BOOL isEscalationEnabled;
@property (nullable, nonatomic, setter=setPrimaryApprovers:, getter=primaryApprovers) NSArray* primaryApprovers;

@end
