// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPermissionScope()
{
    NSString* _adminConsentDescription;
    NSString* _adminConsentDisplayName;
    NSString* _permissionScopeId;
    BOOL _isEnabled;
    NSString* _origin;
    NSString* _type;
    NSString* _userConsentDescription;
    NSString* _userConsentDisplayName;
    NSString* _value;
}
@end

@implementation MSGraphPermissionScope

- (NSString*) adminConsentDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"adminConsentDescription"]])
    {
        return nil;
    }   
    return self.dictionary[@"adminConsentDescription"];
}

- (void) setAdminConsentDescription: (NSString*) val
{
    self.dictionary[@"adminConsentDescription"] = val;
}

- (NSString*) adminConsentDisplayName
{
    if([[NSNull null] isEqual:self.dictionary[@"adminConsentDisplayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"adminConsentDisplayName"];
}

- (void) setAdminConsentDisplayName: (NSString*) val
{
    self.dictionary[@"adminConsentDisplayName"] = val;
}

- (NSString*) permissionScopeId
{
    return self.dictionary[@"id"];
}

- (void) setPermissionScopeId: (NSString*) val
{
    self.dictionary[@"id"] = val;
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

- (NSString*) origin
{
    if([[NSNull null] isEqual:self.dictionary[@"origin"]])
    {
        return nil;
    }   
    return self.dictionary[@"origin"];
}

- (void) setOrigin: (NSString*) val
{
    self.dictionary[@"origin"] = val;
}

- (NSString*) type
{
    if([[NSNull null] isEqual:self.dictionary[@"type"]])
    {
        return nil;
    }   
    return self.dictionary[@"type"];
}

- (void) setType: (NSString*) val
{
    self.dictionary[@"type"] = val;
}

- (NSString*) userConsentDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"userConsentDescription"]])
    {
        return nil;
    }   
    return self.dictionary[@"userConsentDescription"];
}

- (void) setUserConsentDescription: (NSString*) val
{
    self.dictionary[@"userConsentDescription"] = val;
}

- (NSString*) userConsentDisplayName
{
    if([[NSNull null] isEqual:self.dictionary[@"userConsentDisplayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"userConsentDisplayName"];
}

- (void) setUserConsentDisplayName: (NSString*) val
{
    self.dictionary[@"userConsentDisplayName"] = val;
}

- (NSString*) value
{
    if([[NSNull null] isEqual:self.dictionary[@"value"]])
    {
        return nil;
    }   
    return self.dictionary[@"value"];
}

- (void) setValue: (NSString*) val
{
    self.dictionary[@"value"] = val;
}

@end
