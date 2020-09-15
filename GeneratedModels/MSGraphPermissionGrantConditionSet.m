// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPermissionGrantConditionSet()
{
    NSArray* _clientApplicationIds;
    NSArray* _clientApplicationPublisherIds;
    BOOL _clientApplicationsFromVerifiedPublisherOnly;
    NSArray* _clientApplicationTenantIds;
    NSString* _permissionClassification;
    NSArray* _permissions;
    MSGraphPermissionType* _permissionType;
    NSString* _resourceApplication;
}
@end

@implementation MSGraphPermissionGrantConditionSet

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.permissionGrantConditionSet";
    }
    return self;
}
- (NSArray*) clientApplicationIds
{
    if([[NSNull null] isEqual:self.dictionary[@"clientApplicationIds"]])
    {
        return nil;
    }   
    return self.dictionary[@"clientApplicationIds"];
}

- (void) setClientApplicationIds: (NSArray*) val
{
    self.dictionary[@"clientApplicationIds"] = val;
}

- (NSArray*) clientApplicationPublisherIds
{
    if([[NSNull null] isEqual:self.dictionary[@"clientApplicationPublisherIds"]])
    {
        return nil;
    }   
    return self.dictionary[@"clientApplicationPublisherIds"];
}

- (void) setClientApplicationPublisherIds: (NSArray*) val
{
    self.dictionary[@"clientApplicationPublisherIds"] = val;
}

- (BOOL) clientApplicationsFromVerifiedPublisherOnly
{
    _clientApplicationsFromVerifiedPublisherOnly = [self.dictionary[@"clientApplicationsFromVerifiedPublisherOnly"] boolValue];
    return _clientApplicationsFromVerifiedPublisherOnly;
}

- (void) setClientApplicationsFromVerifiedPublisherOnly: (BOOL) val
{
    _clientApplicationsFromVerifiedPublisherOnly = val;
    self.dictionary[@"clientApplicationsFromVerifiedPublisherOnly"] = @(val);
}

- (NSArray*) clientApplicationTenantIds
{
    if([[NSNull null] isEqual:self.dictionary[@"clientApplicationTenantIds"]])
    {
        return nil;
    }   
    return self.dictionary[@"clientApplicationTenantIds"];
}

- (void) setClientApplicationTenantIds: (NSArray*) val
{
    self.dictionary[@"clientApplicationTenantIds"] = val;
}

- (NSString*) permissionClassification
{
    if([[NSNull null] isEqual:self.dictionary[@"permissionClassification"]])
    {
        return nil;
    }   
    return self.dictionary[@"permissionClassification"];
}

- (void) setPermissionClassification: (NSString*) val
{
    self.dictionary[@"permissionClassification"] = val;
}

- (NSArray*) permissions
{
    if([[NSNull null] isEqual:self.dictionary[@"permissions"]])
    {
        return nil;
    }   
    return self.dictionary[@"permissions"];
}

- (void) setPermissions: (NSArray*) val
{
    self.dictionary[@"permissions"] = val;
}

- (MSGraphPermissionType*) permissionType
{
    if(!_permissionType){
        _permissionType = [self.dictionary[@"permissionType"] toMSGraphPermissionType];
    }
    return _permissionType;
}

- (void) setPermissionType: (MSGraphPermissionType*) val
{
    _permissionType = val;
    self.dictionary[@"permissionType"] = val;
}

- (NSString*) resourceApplication
{
    if([[NSNull null] isEqual:self.dictionary[@"resourceApplication"]])
    {
        return nil;
    }   
    return self.dictionary[@"resourceApplication"];
}

- (void) setResourceApplication: (NSString*) val
{
    self.dictionary[@"resourceApplication"] = val;
}


@end
