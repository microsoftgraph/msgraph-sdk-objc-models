// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEdiscoveryCase()
{
    MSGraphIdentitySet* _closedBy;
    NSDate* _closedDateTime;
    NSDate* _createdDateTime;
    NSString* _caseDescription;
    NSString* _displayName;
    NSString* _externalId;
    MSGraphIdentitySet* _lastModifiedBy;
    NSDate* _lastModifiedDateTime;
    MSGraphEdiscoveryCaseStatus* _status;
    NSArray* _custodians;
    NSArray* _legalHolds;
    NSArray* _noncustodialDataSources;
    NSArray* _caseOperations;
    NSArray* _reviewSets;
    MSGraphEdiscoveryCaseSettings* _settings;
    NSArray* _sourceCollections;
    NSArray* _tags;
}
@end

@implementation MSGraphEdiscoveryCase

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.ediscovery.case";
    }
    return self;
}
- (MSGraphIdentitySet*) closedBy
{
    if(!_closedBy){
        _closedBy = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"closedBy"]];
    }
    return _closedBy;
}

- (void) setClosedBy: (MSGraphIdentitySet*) val
{
    _closedBy = val;
    self.dictionary[@"closedBy"] = val;
}

- (NSDate*) closedDateTime
{
    if(!_closedDateTime){
        _closedDateTime = [NSDate ms_dateFromString: self.dictionary[@"closedDateTime"]];
    }
    return _closedDateTime;
}

- (void) setClosedDateTime: (NSDate*) val
{
    _closedDateTime = val;
    self.dictionary[@"closedDateTime"] = [val ms_toString];
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

- (NSString*) caseDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setCaseDescription: (NSString*) val
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

- (NSString*) externalId
{
    if([[NSNull null] isEqual:self.dictionary[@"externalId"]])
    {
        return nil;
    }   
    return self.dictionary[@"externalId"];
}

- (void) setExternalId: (NSString*) val
{
    self.dictionary[@"externalId"] = val;
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

- (MSGraphEdiscoveryCaseStatus*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphEdiscoveryCaseStatus];
    }
    return _status;
}

- (void) setStatus: (MSGraphEdiscoveryCaseStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

- (NSArray*) custodians
{
    if(!_custodians){
        
    NSMutableArray *custodiansResult = [NSMutableArray array];
    NSArray *custodians = self.dictionary[@"custodians"];

    if ([custodians isKindOfClass:[NSArray class]]){
        for (id tempCustodian in custodians){
            [custodiansResult addObject:tempCustodian];
        }
    }

    _custodians = custodiansResult;
        
    }
    return _custodians;
}

- (void) setCustodians: (NSArray*) val
{
    _custodians = val;
    self.dictionary[@"custodians"] = val;
}

- (NSArray*) legalHolds
{
    if(!_legalHolds){
        
    NSMutableArray *legalHoldsResult = [NSMutableArray array];
    NSArray *legalHolds = self.dictionary[@"legalHolds"];

    if ([legalHolds isKindOfClass:[NSArray class]]){
        for (id tempLegalHold in legalHolds){
            [legalHoldsResult addObject:tempLegalHold];
        }
    }

    _legalHolds = legalHoldsResult;
        
    }
    return _legalHolds;
}

- (void) setLegalHolds: (NSArray*) val
{
    _legalHolds = val;
    self.dictionary[@"legalHolds"] = val;
}

- (NSArray*) noncustodialDataSources
{
    if(!_noncustodialDataSources){
        
    NSMutableArray *noncustodialDataSourcesResult = [NSMutableArray array];
    NSArray *noncustodialDataSources = self.dictionary[@"noncustodialDataSources"];

    if ([noncustodialDataSources isKindOfClass:[NSArray class]]){
        for (id tempNoncustodialDataSource in noncustodialDataSources){
            [noncustodialDataSourcesResult addObject:tempNoncustodialDataSource];
        }
    }

    _noncustodialDataSources = noncustodialDataSourcesResult;
        
    }
    return _noncustodialDataSources;
}

- (void) setNoncustodialDataSources: (NSArray*) val
{
    _noncustodialDataSources = val;
    self.dictionary[@"noncustodialDataSources"] = val;
}

- (NSArray*) caseOperations
{
    if(!_caseOperations){
        
    NSMutableArray *caseOperationsResult = [NSMutableArray array];
    NSArray *caseOperations = self.dictionary[@"operations"];

    if ([caseOperations isKindOfClass:[NSArray class]]){
        for (id tempCaseOperation in caseOperations){
            [caseOperationsResult addObject:tempCaseOperation];
        }
    }

    _caseOperations = caseOperationsResult;
        
    }
    return _caseOperations;
}

- (void) setCaseOperations: (NSArray*) val
{
    _caseOperations = val;
    self.dictionary[@"operations"] = val;
}

- (NSArray*) reviewSets
{
    if(!_reviewSets){
        
    NSMutableArray *reviewSetsResult = [NSMutableArray array];
    NSArray *reviewSets = self.dictionary[@"reviewSets"];

    if ([reviewSets isKindOfClass:[NSArray class]]){
        for (id tempReviewSet in reviewSets){
            [reviewSetsResult addObject:tempReviewSet];
        }
    }

    _reviewSets = reviewSetsResult;
        
    }
    return _reviewSets;
}

- (void) setReviewSets: (NSArray*) val
{
    _reviewSets = val;
    self.dictionary[@"reviewSets"] = val;
}

- (MSGraphEdiscoveryCaseSettings*) settings
{
    if(!_settings){
        _settings = [[MSGraphEdiscoveryCaseSettings alloc] initWithDictionary: self.dictionary[@"settings"]];
    }
    return _settings;
}

- (void) setSettings: (MSGraphEdiscoveryCaseSettings*) val
{
    _settings = val;
    self.dictionary[@"settings"] = val;
}

- (NSArray*) sourceCollections
{
    if(!_sourceCollections){
        
    NSMutableArray *sourceCollectionsResult = [NSMutableArray array];
    NSArray *sourceCollections = self.dictionary[@"sourceCollections"];

    if ([sourceCollections isKindOfClass:[NSArray class]]){
        for (id tempSourceCollection in sourceCollections){
            [sourceCollectionsResult addObject:tempSourceCollection];
        }
    }

    _sourceCollections = sourceCollectionsResult;
        
    }
    return _sourceCollections;
}

- (void) setSourceCollections: (NSArray*) val
{
    _sourceCollections = val;
    self.dictionary[@"sourceCollections"] = val;
}

- (NSArray*) tags
{
    if(!_tags){
        
    NSMutableArray *tagsResult = [NSMutableArray array];
    NSArray *tags = self.dictionary[@"tags"];

    if ([tags isKindOfClass:[NSArray class]]){
        for (id tempTag in tags){
            [tagsResult addObject:tempTag];
        }
    }

    _tags = tagsResult;
        
    }
    return _tags;
}

- (void) setTags: (NSArray*) val
{
    _tags = val;
    self.dictionary[@"tags"] = val;
}


@end
