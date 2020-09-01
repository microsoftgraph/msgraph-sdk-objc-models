// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphDirectoryObject.h"

@interface MSGraphExtensionProperty : MSGraphDirectoryObject

  @property (nullable, nonatomic, setter=setAppDisplayName:, getter=appDisplayName) NSString* appDisplayName;
    @property (nonnull, nonatomic, setter=setDataType:, getter=dataType) NSString* dataType;
    @property (nonatomic, setter=setIsSyncedFromOnPremises:, getter=isSyncedFromOnPremises) BOOL isSyncedFromOnPremises;
    @property (nonnull, nonatomic, setter=setName:, getter=name) NSString* name;
    @property (nonnull, nonatomic, setter=setTargetObjects:, getter=targetObjects) NSArray* targetObjects;
  
@end
