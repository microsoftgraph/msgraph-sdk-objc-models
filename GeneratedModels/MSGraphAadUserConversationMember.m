// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAadUserConversationMember()
{
    NSString* _email;
    NSString* _tenantId;
    NSString* _userId;
    MSGraphUser* _user;
}
@end

@implementation MSGraphAadUserConversationMember

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.aadUserConversationMember";
    }
    return self;
}
- (NSString*) email
{
    if([[NSNull null] isEqual:self.dictionary[@"email"]])
    {
        return nil;
    }   
    return self.dictionary[@"email"];
}

- (void) setEmail: (NSString*) val
{
    self.dictionary[@"email"] = val;
}

- (NSString*) tenantId
{
    if([[NSNull null] isEqual:self.dictionary[@"tenantId"]])
    {
        return nil;
    }   
    return self.dictionary[@"tenantId"];
}

- (void) setTenantId: (NSString*) val
{
    self.dictionary[@"tenantId"] = val;
}

- (NSString*) userId
{
    if([[NSNull null] isEqual:self.dictionary[@"userId"]])
    {
        return nil;
    }   
    return self.dictionary[@"userId"];
}

- (void) setUserId: (NSString*) val
{
    self.dictionary[@"userId"] = val;
}

- (MSGraphUser*) user
{
    if(!_user){
        _user = [[MSGraphUser alloc] initWithDictionary: self.dictionary[@"user"]];
    }
    return _user;
}

- (void) setUser: (MSGraphUser*) val
{
    _user = val;
    self.dictionary[@"user"] = val;
}


@end
