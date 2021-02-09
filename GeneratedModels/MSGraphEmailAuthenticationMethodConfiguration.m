// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEmailAuthenticationMethodConfiguration()
{
    MSGraphExternalEmailOtpState* _allowExternalIdToUseEmailOtp;
    NSArray* _includeTargets;
}
@end

@implementation MSGraphEmailAuthenticationMethodConfiguration

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.emailAuthenticationMethodConfiguration";
    }
    return self;
}
- (MSGraphExternalEmailOtpState*) allowExternalIdToUseEmailOtp
{
    if(!_allowExternalIdToUseEmailOtp){
        _allowExternalIdToUseEmailOtp = [self.dictionary[@"allowExternalIdToUseEmailOtp"] toMSGraphExternalEmailOtpState];
    }
    return _allowExternalIdToUseEmailOtp;
}

- (void) setAllowExternalIdToUseEmailOtp: (MSGraphExternalEmailOtpState*) val
{
    _allowExternalIdToUseEmailOtp = val;
    self.dictionary[@"allowExternalIdToUseEmailOtp"] = val;
}

- (NSArray*) includeTargets
{
    if(!_includeTargets){
        
    NSMutableArray *includeTargetsResult = [NSMutableArray array];
    NSArray *includeTargets = self.dictionary[@"includeTargets"];

    if ([includeTargets isKindOfClass:[NSArray class]]){
        for (id tempAuthenticationMethodTarget in includeTargets){
            [includeTargetsResult addObject:tempAuthenticationMethodTarget];
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
