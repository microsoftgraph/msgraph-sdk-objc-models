// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUnifiedRoleDefinition()
{
    NSString* _unifiedRoleDefinitionDescription;
    NSString* _displayName;
    BOOL _isBuiltIn;
    BOOL _isEnabled;
    NSArray* _resourceScopes;
    NSArray* _rolePermissions;
    NSString* _templateId;
    NSString* _version;
    NSArray* _inheritsPermissionsFrom;
}
@end

@implementation MSGraphUnifiedRoleDefinition

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.unifiedRoleDefinition";
    }
    return self;
}
- (NSString*) unifiedRoleDefinitionDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setUnifiedRoleDefinitionDescription: (NSString*) val
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

- (BOOL) isBuiltIn
{
    _isBuiltIn = [self.dictionary[@"isBuiltIn"] boolValue];
    return _isBuiltIn;
}

- (void) setIsBuiltIn: (BOOL) val
{
    _isBuiltIn = val;
    self.dictionary[@"isBuiltIn"] = @(val);
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

- (NSArray*) resourceScopes
{
    return self.dictionary[@"resourceScopes"];
}

- (void) setResourceScopes: (NSArray*) val
{
    self.dictionary[@"resourceScopes"] = val;
}

- (NSArray*) rolePermissions
{
    if(!_rolePermissions){
        
    NSMutableArray *rolePermissionsResult = [NSMutableArray array];
    NSArray *rolePermissions = self.dictionary[@"rolePermissions"];

    if ([rolePermissions isKindOfClass:[NSArray class]]){
        for (id tempUnifiedRolePermission in rolePermissions){
            [rolePermissionsResult addObject:tempUnifiedRolePermission];
        }
    }

    _rolePermissions = rolePermissionsResult;
        
    }
    return _rolePermissions;
}

- (void) setRolePermissions: (NSArray*) val
{
    _rolePermissions = val;
    self.dictionary[@"rolePermissions"] = val;
}

- (NSString*) templateId
{
    if([[NSNull null] isEqual:self.dictionary[@"templateId"]])
    {
        return nil;
    }   
    return self.dictionary[@"templateId"];
}

- (void) setTemplateId: (NSString*) val
{
    self.dictionary[@"templateId"] = val;
}

- (NSString*) version
{
    if([[NSNull null] isEqual:self.dictionary[@"version"]])
    {
        return nil;
    }   
    return self.dictionary[@"version"];
}

- (void) setVersion: (NSString*) val
{
    self.dictionary[@"version"] = val;
}

- (NSArray*) inheritsPermissionsFrom
{
    if(!_inheritsPermissionsFrom){
        
    NSMutableArray *inheritsPermissionsFromResult = [NSMutableArray array];
    NSArray *inheritsPermissionsFrom = self.dictionary[@"inheritsPermissionsFrom"];

    if ([inheritsPermissionsFrom isKindOfClass:[NSArray class]]){
        for (id tempUnifiedRoleDefinition in inheritsPermissionsFrom){
            [inheritsPermissionsFromResult addObject:tempUnifiedRoleDefinition];
        }
    }

    _inheritsPermissionsFrom = inheritsPermissionsFromResult;
        
    }
    return _inheritsPermissionsFrom;
}

- (void) setInheritsPermissionsFrom: (NSArray*) val
{
    _inheritsPermissionsFrom = val;
    self.dictionary[@"inheritsPermissionsFrom"] = val;
}


@end
