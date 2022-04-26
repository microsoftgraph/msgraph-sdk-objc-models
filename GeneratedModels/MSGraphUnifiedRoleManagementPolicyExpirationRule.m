// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUnifiedRoleManagementPolicyExpirationRule()
{
    BOOL _isExpirationRequired;
    MSDuration* _maximumDuration;
}
@end

@implementation MSGraphUnifiedRoleManagementPolicyExpirationRule

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.unifiedRoleManagementPolicyExpirationRule";
    }
    return self;
}
- (BOOL) isExpirationRequired
{
    _isExpirationRequired = [self.dictionary[@"isExpirationRequired"] boolValue];
    return _isExpirationRequired;
}

- (void) setIsExpirationRequired: (BOOL) val
{
    _isExpirationRequired = val;
    self.dictionary[@"isExpirationRequired"] = @(val);
}

- (MSDuration*) maximumDuration
{
    if(!_maximumDuration){
        _maximumDuration = [MSDuration ms_durationFromString: self.dictionary[@"maximumDuration"]];
    }
    return _maximumDuration;
}

- (void) setMaximumDuration: (MSDuration*) val
{
    _maximumDuration = val;
    self.dictionary[@"maximumDuration"] = val.durationString;
}


@end
