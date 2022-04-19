// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUnifiedRoleManagementPolicy()
{
    NSString* _unifiedRoleManagementPolicyDescription;
    NSString* _displayName;
    BOOL _isOrganizationDefault;
    MSGraphIdentity* _lastModifiedBy;
    NSDate* _lastModifiedDateTime;
    NSString* _scopeId;
    NSString* _scopeType;
    NSArray* _effectiveRules;
    NSArray* _rules;
}
@end

@implementation MSGraphUnifiedRoleManagementPolicy

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.unifiedRoleManagementPolicy";
    }
    return self;
}
- (NSString*) unifiedRoleManagementPolicyDescription
{
    return self.dictionary[@"description"];
}

- (void) setUnifiedRoleManagementPolicyDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSString*) displayName
{
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (BOOL) isOrganizationDefault
{
    _isOrganizationDefault = [self.dictionary[@"isOrganizationDefault"] boolValue];
    return _isOrganizationDefault;
}

- (void) setIsOrganizationDefault: (BOOL) val
{
    _isOrganizationDefault = val;
    self.dictionary[@"isOrganizationDefault"] = @(val);
}

- (MSGraphIdentity*) lastModifiedBy
{
    if(!_lastModifiedBy){
        _lastModifiedBy = [[MSGraphIdentity alloc] initWithDictionary: self.dictionary[@"lastModifiedBy"]];
    }
    return _lastModifiedBy;
}

- (void) setLastModifiedBy: (MSGraphIdentity*) val
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

- (NSString*) scopeId
{
    return self.dictionary[@"scopeId"];
}

- (void) setScopeId: (NSString*) val
{
    self.dictionary[@"scopeId"] = val;
}

- (NSString*) scopeType
{
    return self.dictionary[@"scopeType"];
}

- (void) setScopeType: (NSString*) val
{
    self.dictionary[@"scopeType"] = val;
}

- (NSArray*) effectiveRules
{
    if(!_effectiveRules){
        
    NSMutableArray *effectiveRulesResult = [NSMutableArray array];
    NSArray *effectiveRules = self.dictionary[@"effectiveRules"];

    if ([effectiveRules isKindOfClass:[NSArray class]]){
        for (id tempUnifiedRoleManagementPolicyRule in effectiveRules){
            [effectiveRulesResult addObject:tempUnifiedRoleManagementPolicyRule];
        }
    }

    _effectiveRules = effectiveRulesResult;
        
    }
    return _effectiveRules;
}

- (void) setEffectiveRules: (NSArray*) val
{
    _effectiveRules = val;
    self.dictionary[@"effectiveRules"] = val;
}

- (NSArray*) rules
{
    if(!_rules){
        
    NSMutableArray *rulesResult = [NSMutableArray array];
    NSArray *rules = self.dictionary[@"rules"];

    if ([rules isKindOfClass:[NSArray class]]){
        for (id tempUnifiedRoleManagementPolicyRule in rules){
            [rulesResult addObject:tempUnifiedRoleManagementPolicyRule];
        }
    }

    _rules = rulesResult;
        
    }
    return _rules;
}

- (void) setRules: (NSArray*) val
{
    _rules = val;
    self.dictionary[@"rules"] = val;
}


@end
