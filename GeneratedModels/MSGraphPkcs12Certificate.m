// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPkcs12Certificate()
{
    NSString* _password;
    NSString* _pkcs12Value;
}
@end

@implementation MSGraphPkcs12Certificate

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

- (NSString*) pkcs12Value
{
    if([[NSNull null] isEqual:self.dictionary[@"pkcs12Value"]])
    {
        return nil;
    }   
    return self.dictionary[@"pkcs12Value"];
}

- (void) setPkcs12Value: (NSString*) val
{
    self.dictionary[@"pkcs12Value"] = val;
}

@end
