// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTargetManager()
{
    int32_t _managerLevel;
}
@end

@implementation MSGraphTargetManager

- (int32_t) managerLevel
{
    _managerLevel = [self.dictionary[@"managerLevel"] intValue];
    return _managerLevel;
}

- (void) setManagerLevel: (int32_t) val
{
    _managerLevel = val;
    self.dictionary[@"managerLevel"] = @(val);
}

@end
