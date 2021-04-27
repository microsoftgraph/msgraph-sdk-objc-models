// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphBasicAuthentication()
{
    NSString* _password;
    NSString* _username;
}
@end

@implementation MSGraphBasicAuthentication

- (NSString*) password
{
    if([[NSNull null] isEqual:self.dictionary[@"password"]])
    {
        return nil;
    }   
    return self.dictionary[@"password"];
}

- (void) setPassword: (NSString*) val
{
    self.dictionary[@"password"] = val;
}

- (NSString*) username
{
    if([[NSNull null] isEqual:self.dictionary[@"username"]])
    {
        return nil;
    }   
    return self.dictionary[@"username"];
}

- (void) setUsername: (NSString*) val
{
    self.dictionary[@"username"] = val;
}

@end
