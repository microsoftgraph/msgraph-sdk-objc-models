// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphUnifiedApprovalStage; 


#import "MSObject.h"

@interface MSGraphApprovalSettings : MSObject

@property (nullable, nonatomic, setter=setApprovalMode:, getter=approvalMode) NSString* approvalMode;
@property (nullable, nonatomic, setter=setApprovalStages:, getter=approvalStages) NSArray* approvalStages;
@property (nonatomic, setter=setIsApprovalRequired:, getter=isApprovalRequired) BOOL isApprovalRequired;
@property (nonatomic, setter=setIsApprovalRequiredForExtension:, getter=isApprovalRequiredForExtension) BOOL isApprovalRequiredForExtension;
@property (nonatomic, setter=setIsRequestorJustificationRequired:, getter=isRequestorJustificationRequired) BOOL isRequestorJustificationRequired;

@end
