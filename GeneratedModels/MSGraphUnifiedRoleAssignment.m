// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUnifiedRoleAssignment()
{
    NSString* _appScopeId;
    NSString* _condition;
    NSString* _directoryScopeId;
    NSString* _principalId;
    NSString* _roleDefinitionId;
    MSGraphAppScope* _appScope;
    MSGraphDirectoryObject* _directoryScope;
    MSGraphDirectoryObject* _principal;
    MSGraphUnifiedRoleDefinition* _roleDefinition;
}
@end

@implementation MSGraphUnifiedRoleAssignment

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.unifiedRoleAssignment";
    }
    return self;
}
- (NSString*) appScopeId
{
    if([[NSNull null] isEqual:self.dictionary[@"appScopeId"]])
    {
        return nil;
    }   
    return self.dictionary[@"appScopeId"];
}

- (void) setAppScopeId: (NSString*) val
{
    self.dictionary[@"appScopeId"] = val;
}

- (NSString*) condition
{
    if([[NSNull null] isEqual:self.dictionary[@"condition"]])
    {
        return nil;
    }   
    return self.dictionary[@"condition"];
}

- (void) setCondition: (NSString*) val
{
    self.dictionary[@"condition"] = val;
}

- (NSString*) directoryScopeId
{
    if([[NSNull null] isEqual:self.dictionary[@"directoryScopeId"]])
    {
        return nil;
    }   
    return self.dictionary[@"directoryScopeId"];
}

- (void) setDirectoryScopeId: (NSString*) val
{
    self.dictionary[@"directoryScopeId"] = val;
}

- (NSString*) principalId
{
    if([[NSNull null] isEqual:self.dictionary[@"principalId"]])
    {
        return nil;
    }   
    return self.dictionary[@"principalId"];
}

- (void) setPrincipalId: (NSString*) val
{
    self.dictionary[@"principalId"] = val;
}

- (NSString*) roleDefinitionId
{
    if([[NSNull null] isEqual:self.dictionary[@"roleDefinitionId"]])
    {
        return nil;
    }   
    return self.dictionary[@"roleDefinitionId"];
}

- (void) setRoleDefinitionId: (NSString*) val
{
    self.dictionary[@"roleDefinitionId"] = val;
}

- (MSGraphAppScope*) appScope
{
    if(!_appScope){
        _appScope = [[MSGraphAppScope alloc] initWithDictionary: self.dictionary[@"appScope"]];
    }
    return _appScope;
}

- (void) setAppScope: (MSGraphAppScope*) val
{
    _appScope = val;
    self.dictionary[@"appScope"] = val;
}

- (MSGraphDirectoryObject*) directoryScope
{
    if(!_directoryScope){
        _directoryScope = [[MSGraphDirectoryObject alloc] initWithDictionary: self.dictionary[@"directoryScope"]];
    }
    return _directoryScope;
}

- (void) setDirectoryScope: (MSGraphDirectoryObject*) val
{
    _directoryScope = val;
    self.dictionary[@"directoryScope"] = val;
}

- (MSGraphDirectoryObject*) principal
{
    if(!_principal){
        _principal = [[MSGraphDirectoryObject alloc] initWithDictionary: self.dictionary[@"principal"]];
    }
    return _principal;
}

- (void) setPrincipal: (MSGraphDirectoryObject*) val
{
    _principal = val;
    self.dictionary[@"principal"] = val;
}

- (MSGraphUnifiedRoleDefinition*) roleDefinition
{
    if(!_roleDefinition){
        _roleDefinition = [[MSGraphUnifiedRoleDefinition alloc] initWithDictionary: self.dictionary[@"roleDefinition"]];
    }
    return _roleDefinition;
}

- (void) setRoleDefinition: (MSGraphUnifiedRoleDefinition*) val
{
    _roleDefinition = val;
    self.dictionary[@"roleDefinition"] = val;
}


@end
