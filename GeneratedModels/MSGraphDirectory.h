// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAdministrativeUnit, MSGraphDirectoryObject; 


#import "MSGraphEntity.h"

@interface MSGraphDirectory : MSGraphEntity

  @property (nullable, nonatomic, setter=setAdministrativeUnits:, getter=administrativeUnits) NSArray* administrativeUnits;
    @property (nullable, nonatomic, setter=setDeletedItems:, getter=deletedItems) NSArray* deletedItems;
  
@end
