// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSignInFrequencySessionControl()
{
    MSGraphSigninFrequencyType* _type;
    int32_t _value;
}
@end

@implementation MSGraphSignInFrequencySessionControl

- (MSGraphSigninFrequencyType*) type
{
    if(!_type){
        _type = [self.dictionary[@"type"] toMSGraphSigninFrequencyType];
    }
    return _type;
}

- (void) setType: (MSGraphSigninFrequencyType*) val
{
    _type = val;
    self.dictionary[@"type"] = val;
}

- (int32_t) value
{
    _value = [self.dictionary[@"value"] intValue];
    return _value;
}

- (void) setValue: (int32_t) val
{
    _value = val;
    self.dictionary[@"value"] = @(val);
}

@end
