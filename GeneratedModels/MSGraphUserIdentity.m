// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUserIdentity()
{
    NSString* _ipAddress;
    NSString* _userPrincipalName;
}
@end

@implementation MSGraphUserIdentity

- (NSString*) ipAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"ipAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"ipAddress"];
}

- (void) setIpAddress: (NSString*) val
{
    self.dictionary[@"ipAddress"] = val;
}

- (NSString*) userPrincipalName
{
    if([[NSNull null] isEqual:self.dictionary[@"userPrincipalName"]])
    {
        return nil;
    }   
    return self.dictionary[@"userPrincipalName"];
}

- (void) setUserPrincipalName: (NSString*) val
{
    self.dictionary[@"userPrincipalName"] = val;
}

@end
