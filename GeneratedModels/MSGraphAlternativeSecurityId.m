// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAlternativeSecurityId()
{
    NSString* _identityProvider;
    NSString* _key;
    int32_t _type;
}
@end

@implementation MSGraphAlternativeSecurityId

- (NSString*) identityProvider
{
    if([[NSNull null] isEqual:self.dictionary[@"identityProvider"]])
    {
        return nil;
    }   
    return self.dictionary[@"identityProvider"];
}

- (void) setIdentityProvider: (NSString*) val
{
    self.dictionary[@"identityProvider"] = val;
}

- (NSString*) key
{
    if([[NSNull null] isEqual:self.dictionary[@"key"]])
    {
        return nil;
    }   
    return self.dictionary[@"key"];
}

- (void) setKey: (NSString*) val
{
    self.dictionary[@"key"] = val;
}

- (int32_t) type
{
    _type = [self.dictionary[@"type"] intValue];
    return _type;
}

- (void) setType: (int32_t) val
{
    _type = val;
    self.dictionary[@"type"] = @(val);
}

@end
