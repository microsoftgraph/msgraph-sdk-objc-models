// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUnifiedRoleManagementPolicyAuthenticationContextRule()
{
    NSString* _claimValue;
    BOOL _isEnabled;
}
@end

@implementation MSGraphUnifiedRoleManagementPolicyAuthenticationContextRule

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.unifiedRoleManagementPolicyAuthenticationContextRule";
    }
    return self;
}
- (NSString*) claimValue
{
    if([[NSNull null] isEqual:self.dictionary[@"claimValue"]])
    {
        return nil;
    }   
    return self.dictionary[@"claimValue"];
}

- (void) setClaimValue: (NSString*) val
{
    self.dictionary[@"claimValue"] = val;
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


@end
