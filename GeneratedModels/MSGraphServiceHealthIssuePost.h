// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphItemBody; 
#import "MSGraphPostType.h"


#import "MSObject.h"

@interface MSGraphServiceHealthIssuePost : MSObject

@property (nonnull, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
@property (nullable, nonatomic, setter=setServiceHealthIssuePostDescription:, getter=serviceHealthIssuePostDescription) MSGraphItemBody* serviceHealthIssuePostDescription;
@property (nullable, nonatomic, setter=setPostType:, getter=postType) MSGraphPostType* postType;

@end
