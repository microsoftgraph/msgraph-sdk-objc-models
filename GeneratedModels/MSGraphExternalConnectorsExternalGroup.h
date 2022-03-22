// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphExternalConnectorsIdentity; 


#import "MSGraphEntity.h"

@interface MSGraphExternalConnectorsExternalGroup : MSGraphEntity

  @property (nullable, nonatomic, setter=setExternalGroupDescription:, getter=externalGroupDescription) NSString* externalGroupDescription;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setMembers:, getter=members) NSArray* members;
  
@end
