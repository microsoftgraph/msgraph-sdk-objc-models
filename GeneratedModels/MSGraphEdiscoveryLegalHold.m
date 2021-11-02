// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEdiscoveryLegalHold()
{
    NSString* _contentQuery;
    MSGraphIdentitySet* _createdBy;
    NSDate* _createdDateTime;
    NSString* _legalHoldDescription;
    NSString* _displayName;
    NSArray* _errors;
    BOOL _isEnabled;
    MSGraphIdentitySet* _lastModifiedBy;
    NSDate* _lastModifiedDateTime;
    MSGraphEdiscoveryLegalHoldStatus* _status;
    NSArray* _siteSources;
    NSArray* _userSources;
}
@end

@implementation MSGraphEdiscoveryLegalHold

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.ediscovery.legalHold";
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

- (NSString*) legalHoldDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setLegalHoldDescription: (NSString*) val
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

- (NSArray*) errors
{
    if([[NSNull null] isEqual:self.dictionary[@"errors"]])
    {
        return nil;
    }   
    return self.dictionary[@"errors"];
}

- (void) setErrors: (NSArray*) val
{
    self.dictionary[@"errors"] = val;
}

- (BOOL) isEnabled
{
    _isEnabled = [self.dictionary[@"isEnabled"] boolValue];
    return _isEnabled;
}

- (void) setIsEnabled: (BOOL) val
{
    _isEnabled = val;
    self.dictionary[@"isEnabled"] = @(val);
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

- (MSGraphEdiscoveryLegalHoldStatus*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphEdiscoveryLegalHoldStatus];
    }
    return _status;
}

- (void) setStatus: (MSGraphEdiscoveryLegalHoldStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

- (NSArray*) siteSources
{
    if(!_siteSources){
        
    NSMutableArray *siteSourcesResult = [NSMutableArray array];
    NSArray *siteSources = self.dictionary[@"siteSources"];

    if ([siteSources isKindOfClass:[NSArray class]]){
        for (id tempSiteSource in siteSources){
            [siteSourcesResult addObject:tempSiteSource];
        }
    }

    _siteSources = siteSourcesResult;
        
    }
    return _siteSources;
}

- (void) setSiteSources: (NSArray*) val
{
    _siteSources = val;
    self.dictionary[@"siteSources"] = val;
}

- (NSArray*) userSources
{
    if(!_userSources){
        
    NSMutableArray *userSourcesResult = [NSMutableArray array];
    NSArray *userSources = self.dictionary[@"userSources"];

    if ([userSources isKindOfClass:[NSArray class]]){
        for (id tempUserSource in userSources){
            [userSourcesResult addObject:tempUserSource];
        }
    }

    _userSources = userSourcesResult;
        
    }
    return _userSources;
}

- (void) setUserSources: (NSArray*) val
{
    _userSources = val;
    self.dictionary[@"userSources"] = val;
}


@end
