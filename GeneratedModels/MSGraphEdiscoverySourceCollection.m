// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEdiscoverySourceCollection()
{
    NSString* _contentQuery;
    MSGraphIdentitySet* _createdBy;
    NSDate* _createdDateTime;
    MSGraphEdiscoveryDataSourceScopes* _dataSourceScopes;
    NSString* _sourceCollectionDescription;
    NSString* _displayName;
    MSGraphIdentitySet* _lastModifiedBy;
    NSDate* _lastModifiedDateTime;
    NSArray* _additionalSources;
    NSArray* _custodianSources;
    MSGraphEdiscoveryEstimateStatisticsOperation* _lastEstimateStatisticsOperation;
    NSArray* _noncustodialSources;
}
@end

@implementation MSGraphEdiscoverySourceCollection

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.ediscovery.sourceCollection";
    }
    return self;
}
- (NSString*) contentQuery
{
    if([[NSNull null] isEqual:self.dictionary[@"contentQuery"]])
    {
        return nil;
    }   
    return self.dictionary[@"contentQuery"];
}

- (void) setContentQuery: (NSString*) val
{
    self.dictionary[@"contentQuery"] = val;
}

- (MSGraphIdentitySet*) createdBy
{
    if(!_createdBy){
        _createdBy = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"createdBy"]];
    }
    return _createdBy;
}

- (void) setCreatedBy: (MSGraphIdentitySet*) val
{
    _createdBy = val;
    self.dictionary[@"createdBy"] = val;
}

- (NSDate*) createdDateTime
{
    if(!_createdDateTime){
        _createdDateTime = [NSDate ms_dateFromString: self.dictionary[@"createdDateTime"]];
    }
    return _createdDateTime;
}

- (void) setCreatedDateTime: (NSDate*) val
{
    _createdDateTime = val;
    self.dictionary[@"createdDateTime"] = [val ms_toString];
}

- (MSGraphEdiscoveryDataSourceScopes*) dataSourceScopes
{
    if(!_dataSourceScopes){
        _dataSourceScopes = [self.dictionary[@"dataSourceScopes"] toMSGraphEdiscoveryDataSourceScopes];
    }
    return _dataSourceScopes;
}

- (void) setDataSourceScopes: (MSGraphEdiscoveryDataSourceScopes*) val
{
    _dataSourceScopes = val;
    self.dictionary[@"dataSourceScopes"] = val;
}

- (NSString*) sourceCollectionDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setSourceCollectionDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (MSGraphIdentitySet*) lastModifiedBy
{
    if(!_lastModifiedBy){
        _lastModifiedBy = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"lastModifiedBy"]];
    }
    return _lastModifiedBy;
}

- (void) setLastModifiedBy: (MSGraphIdentitySet*) val
{
    _lastModifiedBy = val;
    self.dictionary[@"lastModifiedBy"] = val;
}

- (NSDate*) lastModifiedDateTime
{
    if(!_lastModifiedDateTime){
        _lastModifiedDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastModifiedDateTime"]];
    }
    return _lastModifiedDateTime;
}

- (void) setLastModifiedDateTime: (NSDate*) val
{
    _lastModifiedDateTime = val;
    self.dictionary[@"lastModifiedDateTime"] = [val ms_toString];
}

- (NSArray*) additionalSources
{
    if(!_additionalSources){
        
    NSMutableArray *additionalSourcesResult = [NSMutableArray array];
    NSArray *additionalSources = self.dictionary[@"additionalSources"];

    if ([additionalSources isKindOfClass:[NSArray class]]){
        for (id tempDataSource in additionalSources){
            [additionalSourcesResult addObject:tempDataSource];
        }
    }

    _additionalSources = additionalSourcesResult;
        
    }
    return _additionalSources;
}

- (void) setAdditionalSources: (NSArray*) val
{
    _additionalSources = val;
    self.dictionary[@"additionalSources"] = val;
}

- (NSArray*) custodianSources
{
    if(!_custodianSources){
        
    NSMutableArray *custodianSourcesResult = [NSMutableArray array];
    NSArray *custodianSources = self.dictionary[@"custodianSources"];

    if ([custodianSources isKindOfClass:[NSArray class]]){
        for (id tempDataSource in custodianSources){
            [custodianSourcesResult addObject:tempDataSource];
        }
    }

    _custodianSources = custodianSourcesResult;
        
    }
    return _custodianSources;
}

- (void) setCustodianSources: (NSArray*) val
{
    _custodianSources = val;
    self.dictionary[@"custodianSources"] = val;
}

- (MSGraphEdiscoveryEstimateStatisticsOperation*) lastEstimateStatisticsOperation
{
    if(!_lastEstimateStatisticsOperation){
        _lastEstimateStatisticsOperation = [[MSGraphEdiscoveryEstimateStatisticsOperation alloc] initWithDictionary: self.dictionary[@"lastEstimateStatisticsOperation"]];
    }
    return _lastEstimateStatisticsOperation;
}

- (void) setLastEstimateStatisticsOperation: (MSGraphEdiscoveryEstimateStatisticsOperation*) val
{
    _lastEstimateStatisticsOperation = val;
    self.dictionary[@"lastEstimateStatisticsOperation"] = val;
}

- (NSArray*) noncustodialSources
{
    if(!_noncustodialSources){
        
    NSMutableArray *noncustodialSourcesResult = [NSMutableArray array];
    NSArray *noncustodialSources = self.dictionary[@"noncustodialSources"];

    if ([noncustodialSources isKindOfClass:[NSArray class]]){
        for (id tempNoncustodialDataSource in noncustodialSources){
            [noncustodialSourcesResult addObject:tempNoncustodialDataSource];
        }
    }

    _noncustodialSources = noncustodialSourcesResult;
        
    }
    return _noncustodialSources;
}

- (void) setNoncustodialSources: (NSArray*) val
{
    _noncustodialSources = val;
    self.dictionary[@"noncustodialSources"] = val;
}


@end
