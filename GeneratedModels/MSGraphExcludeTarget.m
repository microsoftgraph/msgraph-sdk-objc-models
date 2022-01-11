// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphExcludeTarget()
{
    NSString* _excludeTargetId;
    MSGraphAuthenticationMethodTargetType* _targetType;
}
@end

@implementation MSGraphExcludeTarget

- (NSString*) excludeTargetId
{
    return self.dictionary[@"id"];
}

- (void) setExcludeTargetId: (NSString*) val
{
    self.dictionary[@"id"] = val;
}

- (MSGraphAuthenticationMethodTargetType*) targetType
{
    if(!_targetType){
        _targetType = [self.dictionary[@"targetType"] toMSGraphAuthenticationMethodTargetType];
    }
    return _targetType;
}

- (void) setTargetType: (MSGraphAuthenticationMethodTargetType*) val
{
    _targetType = val;
    self.dictionary[@"targetType"] = val;
}

@end
