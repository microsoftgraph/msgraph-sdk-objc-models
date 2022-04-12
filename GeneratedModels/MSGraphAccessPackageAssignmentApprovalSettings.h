// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphAccessPackageApprovalStage; 


#import "MSObject.h"

@interface MSGraphAccessPackageAssignmentApprovalSettings : MSObject

@property (nonatomic, setter=setIsApprovalRequiredForAdd:, getter=isApprovalRequiredForAdd) BOOL isApprovalRequiredForAdd;
@property (nonatomic, setter=setIsApprovalRequiredForUpdate:, getter=isApprovalRequiredForUpdate) BOOL isApprovalRequiredForUpdate;
@property (nullable, nonatomic, setter=setStages:, getter=stages) NSArray* stages;

@end
