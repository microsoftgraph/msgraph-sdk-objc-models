// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphVppTokenSyncStatus.h"
#import "MSGraphVppTokenState.h"
#import "MSGraphVppTokenAccountType.h"


#import "MSGraphEntity.h"

@interface MSGraphVppToken : MSGraphEntity

  @property (nullable, nonatomic, setter=setAppleId:, getter=appleId) NSString* appleId;
    @property (nonatomic, setter=setAutomaticallyUpdateApps:, getter=automaticallyUpdateApps) BOOL automaticallyUpdateApps;
    @property (nullable, nonatomic, setter=setCountryOrRegion:, getter=countryOrRegion) NSString* countryOrRegion;
    @property (nonnull, nonatomic, setter=setExpirationDateTime:, getter=expirationDateTime) NSDate* expirationDateTime;
    @property (nonnull, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nonnull, nonatomic, setter=setLastSyncDateTime:, getter=lastSyncDateTime) NSDate* lastSyncDateTime;
    @property (nonnull, nonatomic, setter=setLastSyncStatus:, getter=lastSyncStatus) MSGraphVppTokenSyncStatus* lastSyncStatus;
    @property (nullable, nonatomic, setter=setOrganizationName:, getter=organizationName) NSString* organizationName;
    @property (nonnull, nonatomic, setter=setState:, getter=state) MSGraphVppTokenState* state;
    @property (nullable, nonatomic, setter=setToken:, getter=token) NSString* token;
    @property (nonnull, nonatomic, setter=setVppTokenAccountType:, getter=vppTokenAccountType) MSGraphVppTokenAccountType* vppTokenAccountType;
  
@end
