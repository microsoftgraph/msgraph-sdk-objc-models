// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAccessPackageCatalog; 


#import "MSGraphEntity.h"

@interface MSGraphAccessPackage : MSGraphEntity

  @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setAccessPackageDescription:, getter=accessPackageDescription) NSString* accessPackageDescription;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonatomic, setter=setIsHidden:, getter=isHidden) BOOL isHidden;
    @property (nullable, nonatomic, setter=setModifiedDateTime:, getter=modifiedDateTime) NSDate* modifiedDateTime;
    @property (nullable, nonatomic, setter=setCatalog:, getter=catalog) MSGraphAccessPackageCatalog* catalog;
  
@end
