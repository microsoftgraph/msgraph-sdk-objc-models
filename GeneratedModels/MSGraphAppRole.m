// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAppRole()
{
    NSArray* _allowedMemberTypes;
    NSString* _appRoleDescription;
    NSString* _displayName;
    NSString* _appRoleId;
    BOOL _isEnabled;
    NSString* _origin;
    NSString* _value;
}
@end

@implementation MSGraphAppRole

- (NSArray*) allowedMemberTypes
{
    return self.dictionary[@"allowedMemberTypes"];
}

- (void) setAllowedMemberTypes: (NSArray*) val
{
    self.dictionary[@"allowedMemberTypes"] = val;
}

- (NSString*) appRoleDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setAppRoleDescription: (NSString*) val
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

- (NSString*) appRoleId
{
    return self.dictionary[@"id"];
}

- (void) setAppRoleId: (NSString*) val
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
