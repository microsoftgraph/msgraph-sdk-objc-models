// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphBuiltInIdentityProvider()
{
    NSString* _identityProviderType;
}
@end

@implementation MSGraphBuiltInIdentityProvider

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.builtInIdentityProvider";
    }
    return self;
}
- (NSString*) identityProviderType
{
    if([[NSNull null] isEqual:self.dictionary[@"identityProviderType"]])
    {
        return nil;
    }   
    return self.dictionary[@"identityProviderType"];
}

- (void) setIdentityProviderType: (NSString*) val
{
    self.dictionary[@"identityProviderType"] = val;
}


@end
