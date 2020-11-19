// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphSearchQuery; 
#import "MSGraphEntityType.h"


#import "MSObject.h"

@interface MSGraphSearchRequest : MSObject

@property (nullable, nonatomic, setter=setContentSources:, getter=contentSources) NSArray* contentSources;
@property (nonatomic, setter=setEnableTopResults:, getter=enableTopResults) BOOL enableTopResults;
@property (nullable, nonatomic, setter=setEntityTypes:, getter=entityTypes) NSArray* entityTypes;
@property (nullable, nonatomic, setter=setFields:, getter=fields) NSArray* fields;
@property (nonatomic, setter=setFrom:, getter=from) int32_t from;
@property (nonnull, nonatomic, setter=setQuery:, getter=query) MSGraphSearchQuery* query;
@property (nonatomic, setter=setSize:, getter=size) int32_t size;

@end
