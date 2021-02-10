// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMicrosoftAuthenticatorAuthenticationMethodConfiguration()
{
    NSArray* _includeTargets;
}
@end

@implementation MSGraphMicrosoftAuthenticatorAuthenticationMethodConfiguration

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.microsoftAuthenticatorAuthenticationMethodConfiguration";
    }
    return self;
}
- (NSArray*) includeTargets
{
    if(!_includeTargets){
        
    NSMutableArray *includeTargetsResult = [NSMutableArray array];
    NSArray *includeTargets = self.dictionary[@"includeTargets"];

    if ([includeTargets isKindOfClass:[NSArray class]]){
        for (id tempMicrosoftAuthenticatorAuthenticationMethodTarget in includeTargets){
            [includeTargetsResult addObject:tempMicrosoftAuthenticatorAuthenticationMethodTarget];
        }
    }

    _includeTargets = includeTargetsResult;
        
    }
    return _includeTargets;
}

- (void) setIncludeTargets: (NSArray*) val
{
    _includeTargets = val;
    self.dictionary[@"includeTargets"] = val;
}


@end
