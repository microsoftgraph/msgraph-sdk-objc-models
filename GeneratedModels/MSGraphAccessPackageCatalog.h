// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAccessPackage; 
#import "MSGraphAccessPackageCatalogType.h"
#import "MSGraphAccessPackageCatalogState.h"


#import "MSGraphEntity.h"

@interface MSGraphAccessPackageCatalog : MSGraphEntity

  @property (nullable, nonatomic, setter=setCatalogType:, getter=catalogType) MSGraphAccessPackageCatalogType* catalogType;
    @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setAccessPackageCatalogDescription:, getter=accessPackageCatalogDescription) NSString* accessPackageCatalogDescription;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonatomic, setter=setIsExternallyVisible:, getter=isExternallyVisible) BOOL isExternallyVisible;
    @property (nullable, nonatomic, setter=setModifiedDateTime:, getter=modifiedDateTime) NSDate* modifiedDateTime;
    @property (nullable, nonatomic, setter=setState:, getter=state) MSGraphAccessPackageCatalogState* state;
    @property (nullable, nonatomic, setter=setAccessPackages:, getter=accessPackages) NSArray* accessPackages;
  
@end
