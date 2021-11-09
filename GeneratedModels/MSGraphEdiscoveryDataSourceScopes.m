// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphEdiscoveryDataSourceScopes.h"

@interface MSGraphEdiscoveryDataSourceScopes () {
    MSGraphEdiscoveryDataSourceScopesValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphEdiscoveryDataSourceScopesValue enumValue;
@end

@implementation MSGraphEdiscoveryDataSourceScopes

+ (MSGraphEdiscoveryDataSourceScopes*) none {
    static MSGraphEdiscoveryDataSourceScopes *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphEdiscoveryDataSourceScopes alloc] init];
        _none.enumValue = MSGraphEdiscoveryDataSourceScopesNone;
    });
    return _none;
}
+ (MSGraphEdiscoveryDataSourceScopes*) allTenantMailboxes {
    static MSGraphEdiscoveryDataSourceScopes *_allTenantMailboxes;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allTenantMailboxes = [[MSGraphEdiscoveryDataSourceScopes alloc] init];
        _allTenantMailboxes.enumValue = MSGraphEdiscoveryDataSourceScopesAllTenantMailboxes;
    });
    return _allTenantMailboxes;
}
+ (MSGraphEdiscoveryDataSourceScopes*) allTenantSites {
    static MSGraphEdiscoveryDataSourceScopes *_allTenantSites;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allTenantSites = [[MSGraphEdiscoveryDataSourceScopes alloc] init];
        _allTenantSites.enumValue = MSGraphEdiscoveryDataSourceScopesAllTenantSites;
    });
    return _allTenantSites;
}
+ (MSGraphEdiscoveryDataSourceScopes*) allCaseCustodians {
    static MSGraphEdiscoveryDataSourceScopes *_allCaseCustodians;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allCaseCustodians = [[MSGraphEdiscoveryDataSourceScopes alloc] init];
        _allCaseCustodians.enumValue = MSGraphEdiscoveryDataSourceScopesAllCaseCustodians;
    });
    return _allCaseCustodians;
}
+ (MSGraphEdiscoveryDataSourceScopes*) allCaseNoncustodialDataSources {
    static MSGraphEdiscoveryDataSourceScopes *_allCaseNoncustodialDataSources;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allCaseNoncustodialDataSources = [[MSGraphEdiscoveryDataSourceScopes alloc] init];
        _allCaseNoncustodialDataSources.enumValue = MSGraphEdiscoveryDataSourceScopesAllCaseNoncustodialDataSources;
    });
    return _allCaseNoncustodialDataSources;
}
+ (MSGraphEdiscoveryDataSourceScopes*) unknownFutureValue {
    static MSGraphEdiscoveryDataSourceScopes *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphEdiscoveryDataSourceScopes alloc] init];
        _unknownFutureValue.enumValue = MSGraphEdiscoveryDataSourceScopesUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphEdiscoveryDataSourceScopes*) UnknownEnumValue {
    static MSGraphEdiscoveryDataSourceScopes *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphEdiscoveryDataSourceScopes alloc] init];
        _unknownValue.enumValue = MSGraphEdiscoveryDataSourceScopesEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphEdiscoveryDataSourceScopes*) dataSourceScopesWithEnumValue:(MSGraphEdiscoveryDataSourceScopesValue)val {

    switch(val)
    {
        case MSGraphEdiscoveryDataSourceScopesNone:
            return [MSGraphEdiscoveryDataSourceScopes none];
        case MSGraphEdiscoveryDataSourceScopesAllTenantMailboxes:
            return [MSGraphEdiscoveryDataSourceScopes allTenantMailboxes];
        case MSGraphEdiscoveryDataSourceScopesAllTenantSites:
            return [MSGraphEdiscoveryDataSourceScopes allTenantSites];
        case MSGraphEdiscoveryDataSourceScopesAllCaseCustodians:
            return [MSGraphEdiscoveryDataSourceScopes allCaseCustodians];
        case MSGraphEdiscoveryDataSourceScopesAllCaseNoncustodialDataSources:
            return [MSGraphEdiscoveryDataSourceScopes allCaseNoncustodialDataSources];
        case MSGraphEdiscoveryDataSourceScopesUnknownFutureValue:
            return [MSGraphEdiscoveryDataSourceScopes unknownFutureValue];
        case MSGraphEdiscoveryDataSourceScopesEndOfEnum:
        default:
            return [MSGraphEdiscoveryDataSourceScopes UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphEdiscoveryDataSourceScopesNone:
            return @"none";
        case MSGraphEdiscoveryDataSourceScopesAllTenantMailboxes:
            return @"allTenantMailboxes";
        case MSGraphEdiscoveryDataSourceScopesAllTenantSites:
            return @"allTenantSites";
        case MSGraphEdiscoveryDataSourceScopesAllCaseCustodians:
            return @"allCaseCustodians";
        case MSGraphEdiscoveryDataSourceScopesAllCaseNoncustodialDataSources:
            return @"allCaseNoncustodialDataSources";
        case MSGraphEdiscoveryDataSourceScopesUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphEdiscoveryDataSourceScopesEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphEdiscoveryDataSourceScopesValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphEdiscoveryDataSourceScopes)

- (MSGraphEdiscoveryDataSourceScopes*) toMSGraphEdiscoveryDataSourceScopes{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphEdiscoveryDataSourceScopes none];
    }
    else if([self isEqualToString:@"allTenantMailboxes"])
    {
          return [MSGraphEdiscoveryDataSourceScopes allTenantMailboxes];
    }
    else if([self isEqualToString:@"allTenantSites"])
    {
          return [MSGraphEdiscoveryDataSourceScopes allTenantSites];
    }
    else if([self isEqualToString:@"allCaseCustodians"])
    {
          return [MSGraphEdiscoveryDataSourceScopes allCaseCustodians];
    }
    else if([self isEqualToString:@"allCaseNoncustodialDataSources"])
    {
          return [MSGraphEdiscoveryDataSourceScopes allCaseNoncustodialDataSources];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphEdiscoveryDataSourceScopes unknownFutureValue];
    }
    else {
        return [MSGraphEdiscoveryDataSourceScopes UnknownEnumValue];
    }
}

@end
