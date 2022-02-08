// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSharePointIdentitySet()
{
    MSGraphIdentity* _group;
    MSGraphSharePointIdentity* _siteGroup;
    MSGraphSharePointIdentity* _siteUser;
}
@end

@implementation MSGraphSharePointIdentitySet

- (MSGraphIdentity*) group
{
    if(!_group){
        _group = [[MSGraphIdentity alloc] initWithDictionary: self.dictionary[@"group"]];
    }
    return _group;
}

- (void) setGroup: (MSGraphIdentity*) val
{
    _group = val;
    self.dictionary[@"group"] = val;
}

- (MSGraphSharePointIdentity*) siteGroup
{
    if(!_siteGroup){
        _siteGroup = [[MSGraphSharePointIdentity alloc] initWithDictionary: self.dictionary[@"siteGroup"]];
    }
    return _siteGroup;
}

- (void) setSiteGroup: (MSGraphSharePointIdentity*) val
{
    _siteGroup = val;
    self.dictionary[@"siteGroup"] = val;
}

- (MSGraphSharePointIdentity*) siteUser
{
    if(!_siteUser){
        _siteUser = [[MSGraphSharePointIdentity alloc] initWithDictionary: self.dictionary[@"siteUser"]];
    }
    return _siteUser;
}

- (void) setSiteUser: (MSGraphSharePointIdentity*) val
{
    _siteUser = val;
    self.dictionary[@"siteUser"] = val;
}

@end
