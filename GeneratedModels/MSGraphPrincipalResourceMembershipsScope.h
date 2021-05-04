// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphAccessReviewScope; 


#import "MSGraphAccessReviewScope.h"

@interface MSGraphPrincipalResourceMembershipsScope : MSGraphAccessReviewScope

@property (nullable, nonatomic, setter=setPrincipalScopes:, getter=principalScopes) NSArray* principalScopes;
@property (nullable, nonatomic, setter=setResourceScopes:, getter=resourceScopes) NSArray* resourceScopes;

@end
