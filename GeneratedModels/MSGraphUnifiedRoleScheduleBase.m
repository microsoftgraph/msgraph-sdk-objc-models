// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUnifiedRoleScheduleBase()
{
    NSString* _appScopeId;
    NSDate* _createdDateTime;
    NSString* _createdUsing;
    NSString* _directoryScopeId;
    NSDate* _modifiedDateTime;
    NSString* _principalId;
    NSString* _roleDefinitionId;
    NSString* _status;
    MSGraphAppScope* _appScope;
    MSGraphDirectoryObject* _directoryScope;
    MSGraphDirectoryObject* _principal;
    MSGraphUnifiedRoleDefinition* _roleDefinition;
}
@end

@implementation MSGraphUnifiedRoleScheduleBase

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.unifiedRoleScheduleBase";
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

- (NSString*) createdUsing
{
    if([[NSNull null] isEqual:self.dictionary[@"createdUsing"]])
    {
        return nil;
    }   
    return self.dictionary[@"createdUsing"];
}

- (void) setCreatedUsing: (NSString*) val
{
    self.dictionary[@"createdUsing"] = val;
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

- (NSDate*) modifiedDateTime
{
    if(!_modifiedDateTime){
        _modifiedDateTime = [NSDate ms_dateFromString: self.dictionary[@"modifiedDateTime"]];
    }
    return _modifiedDateTime;
}

- (void) setModifiedDateTime: (NSDate*) val
{
    _modifiedDateTime = val;
    self.dictionary[@"modifiedDateTime"] = [val ms_toString];
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

- (NSString*) status
{
    if([[NSNull null] isEqual:self.dictionary[@"status"]])
    {
        return nil;
    }   
    return self.dictionary[@"status"];
}

- (void) setStatus: (NSString*) val
{
    self.dictionary[@"status"] = val;
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
