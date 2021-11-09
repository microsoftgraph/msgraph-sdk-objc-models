// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEdiscoveryCustodian()
{
    NSDate* _acknowledgedDateTime;
    BOOL _applyHoldToSources;
    NSString* _email;
    NSArray* _siteSources;
    NSArray* _unifiedGroupSources;
    NSArray* _userSources;
}
@end

@implementation MSGraphEdiscoveryCustodian

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.ediscovery.custodian";
    }
    return self;
}
- (NSDate*) acknowledgedDateTime
{
    if(!_acknowledgedDateTime){
        _acknowledgedDateTime = [NSDate ms_dateFromString: self.dictionary[@"acknowledgedDateTime"]];
    }
    return _acknowledgedDateTime;
}

- (void) setAcknowledgedDateTime: (NSDate*) val
{
    _acknowledgedDateTime = val;
    self.dictionary[@"acknowledgedDateTime"] = [val ms_toString];
}

- (BOOL) applyHoldToSources
{
    _applyHoldToSources = [self.dictionary[@"applyHoldToSources"] boolValue];
    return _applyHoldToSources;
}

- (void) setApplyHoldToSources: (BOOL) val
{
    _applyHoldToSources = val;
    self.dictionary[@"applyHoldToSources"] = @(val);
}

- (NSString*) email
{
    return self.dictionary[@"email"];
}

- (void) setEmail: (NSString*) val
{
    self.dictionary[@"email"] = val;
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

- (NSArray*) unifiedGroupSources
{
    if(!_unifiedGroupSources){
        
    NSMutableArray *unifiedGroupSourcesResult = [NSMutableArray array];
    NSArray *unifiedGroupSources = self.dictionary[@"unifiedGroupSources"];

    if ([unifiedGroupSources isKindOfClass:[NSArray class]]){
        for (id tempUnifiedGroupSource in unifiedGroupSources){
            [unifiedGroupSourcesResult addObject:tempUnifiedGroupSource];
        }
    }

    _unifiedGroupSources = unifiedGroupSourcesResult;
        
    }
    return _unifiedGroupSources;
}

- (void) setUnifiedGroupSources: (NSArray*) val
{
    _unifiedGroupSources = val;
    self.dictionary[@"unifiedGroupSources"] = val;
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
