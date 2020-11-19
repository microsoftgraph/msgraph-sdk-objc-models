// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphResourceSpecificPermissionGrant()
{
    NSString* _clientAppId;
    NSString* _clientId;
    NSString* _permission;
    NSString* _permissionType;
    NSString* _resourceAppId;
}
@end

@implementation MSGraphResourceSpecificPermissionGrant

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.resourceSpecificPermissionGrant";
    }
    return self;
}
- (NSString*) clientAppId
{
    if([[NSNull null] isEqual:self.dictionary[@"clientAppId"]])
    {
        return nil;
    }   
    return self.dictionary[@"clientAppId"];
}

- (void) setClientAppId: (NSString*) val
{
    self.dictionary[@"clientAppId"] = val;
}

- (NSString*) clientId
{
    if([[NSNull null] isEqual:self.dictionary[@"clientId"]])
    {
        return nil;
    }   
    return self.dictionary[@"clientId"];
}

- (void) setClientId: (NSString*) val
{
    self.dictionary[@"clientId"] = val;
}

- (NSString*) permission
{
    if([[NSNull null] isEqual:self.dictionary[@"permission"]])
    {
        return nil;
    }   
    return self.dictionary[@"permission"];
}

- (void) setPermission: (NSString*) val
{
    self.dictionary[@"permission"] = val;
}

- (NSString*) permissionType
{
    if([[NSNull null] isEqual:self.dictionary[@"permissionType"]])
    {
        return nil;
    }   
    return self.dictionary[@"permissionType"];
}

- (void) setPermissionType: (NSString*) val
{
    self.dictionary[@"permissionType"] = val;
}

- (NSString*) resourceAppId
{
    if([[NSNull null] isEqual:self.dictionary[@"resourceAppId"]])
    {
        return nil;
    }   
    return self.dictionary[@"resourceAppId"];
}

- (void) setResourceAppId: (NSString*) val
{
    self.dictionary[@"resourceAppId"] = val;
}


@end
