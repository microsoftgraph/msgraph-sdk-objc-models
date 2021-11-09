// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphExternalConnectorsLabel.h"
#import "MSGraphExternalConnectorsPropertyType.h"


#import "MSObject.h"

@interface MSGraphExternalConnectorsProperty : MSObject

@property (nullable, nonatomic, setter=setAliases:, getter=aliases) NSArray* aliases;
@property (nonatomic, setter=setIsQueryable:, getter=isQueryable) BOOL isQueryable;
@property (nonatomic, setter=setIsRefinable:, getter=isRefinable) BOOL isRefinable;
@property (nonatomic, setter=setIsRetrievable:, getter=isRetrievable) BOOL isRetrievable;
@property (nonatomic, setter=setIsSearchable:, getter=isSearchable) BOOL isSearchable;
@property (nullable, nonatomic, setter=setLabels:, getter=labels) NSArray* labels;
@property (nonnull, nonatomic, setter=setName:, getter=name) NSString* name;
@property (nonnull, nonatomic, setter=setType:, getter=type) MSGraphExternalConnectorsPropertyType* type;

@end
