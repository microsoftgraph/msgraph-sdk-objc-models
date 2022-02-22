// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphAggregationOption, MSGraphSearchQuery, MSGraphSearchAlterationOptions, MSGraphResultTemplateOption, MSGraphSortProperty; 
#import "MSGraphEntityType.h"


#import "MSObject.h"

@interface MSGraphSearchRequest : MSObject

@property (nullable, nonatomic, setter=setAggregationFilters:, getter=aggregationFilters) NSArray* aggregationFilters;
@property (nullable, nonatomic, setter=setAggregations:, getter=aggregations) NSArray* aggregations;
@property (nullable, nonatomic, setter=setContentSources:, getter=contentSources) NSArray* contentSources;
@property (nonatomic, setter=setEnableTopResults:, getter=enableTopResults) BOOL enableTopResults;
@property (nullable, nonatomic, setter=setEntityTypes:, getter=entityTypes) NSArray* entityTypes;
@property (nullable, nonatomic, setter=setFields:, getter=fields) NSArray* fields;
@property (nonatomic, setter=setFrom:, getter=from) int32_t from;
@property (nonnull, nonatomic, setter=setQuery:, getter=query) MSGraphSearchQuery* query;
@property (nullable, nonatomic, setter=setQueryAlterationOptions:, getter=queryAlterationOptions) MSGraphSearchAlterationOptions* queryAlterationOptions;
@property (nullable, nonatomic, setter=setResultTemplateOptions:, getter=resultTemplateOptions) MSGraphResultTemplateOption* resultTemplateOptions;
@property (nonatomic, setter=setSize:, getter=size) int32_t size;
@property (nullable, nonatomic, setter=setSortProperties:, getter=sortProperties) NSArray* sortProperties;

@end
