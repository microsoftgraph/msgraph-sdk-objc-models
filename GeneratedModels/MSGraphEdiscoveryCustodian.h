// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphEdiscoverySiteSource, MSGraphEdiscoveryUnifiedGroupSource, MSGraphEdiscoveryUserSource; 


#import "MSGraphEdiscoveryDataSourceContainer.h"

@interface MSGraphEdiscoveryCustodian : MSGraphEdiscoveryDataSourceContainer

  @property (nullable, nonatomic, setter=setAcknowledgedDateTime:, getter=acknowledgedDateTime) NSDate* acknowledgedDateTime;
    @property (nonatomic, setter=setApplyHoldToSources:, getter=applyHoldToSources) BOOL applyHoldToSources;
    @property (nonnull, nonatomic, setter=setEmail:, getter=email) NSString* email;
    @property (nullable, nonatomic, setter=setSiteSources:, getter=siteSources) NSArray* siteSources;
    @property (nullable, nonatomic, setter=setUnifiedGroupSources:, getter=unifiedGroupSources) NSArray* unifiedGroupSources;
    @property (nullable, nonatomic, setter=setUserSources:, getter=userSources) NSArray* userSources;
  
@end
