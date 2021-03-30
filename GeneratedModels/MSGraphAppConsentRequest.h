// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAppConsentRequestScope, MSGraphUserConsentRequest; 


#import "MSGraphEntity.h"

@interface MSGraphAppConsentRequest : MSGraphEntity

  @property (nullable, nonatomic, setter=setAppDisplayName:, getter=appDisplayName) NSString* appDisplayName;
    @property (nonnull, nonatomic, setter=setAppId:, getter=appId) NSString* appId;
    @property (nullable, nonatomic, setter=setPendingScopes:, getter=pendingScopes) NSArray* pendingScopes;
    @property (nullable, nonatomic, setter=setUserConsentRequests:, getter=userConsentRequests) NSArray* userConsentRequests;
  
@end
