// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphRbacApplication; 


#import "MSObject.h"

@interface MSGraphRoleManagement : MSObject

  @property (nullable, nonatomic, setter=setODataType:, getter=oDataType) NSString *oDataType;
  @property (nullable, nonatomic, setter=setODataEtag:, getter=oDataEtag) NSString *oDataEtag;
  @property (nullable, nonatomic, setter=setDirectory:, getter=directory) MSGraphRbacApplication* directory;
    @property (nullable, nonatomic, setter=setEntitlementManagement:, getter=entitlementManagement) MSGraphRbacApplication* entitlementManagement;
  
@end
