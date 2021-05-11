// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSDuration; 


#import "MSGraphAccessReviewQueryScope.h"

@interface MSGraphAccessReviewInactiveUsersQueryScope : MSGraphAccessReviewQueryScope

@property (nullable, nonatomic, setter=setInactiveDuration:, getter=inactiveDuration) MSDuration* inactiveDuration;

@end
