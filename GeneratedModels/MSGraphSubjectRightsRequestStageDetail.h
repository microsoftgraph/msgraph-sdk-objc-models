// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphPublicError; 
#import "MSGraphSubjectRightsRequestStage.h"
#import "MSGraphSubjectRightsRequestStageStatus.h"


#import "MSObject.h"

@interface MSGraphSubjectRightsRequestStageDetail : MSObject

@property (nullable, nonatomic, setter=setError:, getter=error) MSGraphPublicError* error;
@property (nullable, nonatomic, setter=setStage:, getter=stage) MSGraphSubjectRightsRequestStage* stage;
@property (nullable, nonatomic, setter=setStatus:, getter=status) MSGraphSubjectRightsRequestStageStatus* status;

@end
