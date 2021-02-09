// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphFido2RestrictionEnforcementType.h"

@interface MSGraphFido2RestrictionEnforcementType () {
    MSGraphFido2RestrictionEnforcementTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphFido2RestrictionEnforcementTypeValue enumValue;
@end

@implementation MSGraphFido2RestrictionEnforcementType

+ (MSGraphFido2RestrictionEnforcementType*) allow {
    static MSGraphFido2RestrictionEnforcementType *_allow;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allow = [[MSGraphFido2RestrictionEnforcementType alloc] init];
        _allow.enumValue = MSGraphFido2RestrictionEnforcementTypeAllow;
    });
    return _allow;
}
+ (MSGraphFido2RestrictionEnforcementType*) block {
    static MSGraphFido2RestrictionEnforcementType *_block;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _block = [[MSGraphFido2RestrictionEnforcementType alloc] init];
        _block.enumValue = MSGraphFido2RestrictionEnforcementTypeBlock;
    });
    return _block;
}
+ (MSGraphFido2RestrictionEnforcementType*) unknownFutureValue {
    static MSGraphFido2RestrictionEnforcementType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphFido2RestrictionEnforcementType alloc] init];
        _unknownFutureValue.enumValue = MSGraphFido2RestrictionEnforcementTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphFido2RestrictionEnforcementType*) UnknownEnumValue {
    static MSGraphFido2RestrictionEnforcementType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphFido2RestrictionEnforcementType alloc] init];
        _unknownValue.enumValue = MSGraphFido2RestrictionEnforcementTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphFido2RestrictionEnforcementType*) fido2RestrictionEnforcementTypeWithEnumValue:(MSGraphFido2RestrictionEnforcementTypeValue)val {

    switch(val)
    {
        case MSGraphFido2RestrictionEnforcementTypeAllow:
            return [MSGraphFido2RestrictionEnforcementType allow];
        case MSGraphFido2RestrictionEnforcementTypeBlock:
            return [MSGraphFido2RestrictionEnforcementType block];
        case MSGraphFido2RestrictionEnforcementTypeUnknownFutureValue:
            return [MSGraphFido2RestrictionEnforcementType unknownFutureValue];
        case MSGraphFido2RestrictionEnforcementTypeEndOfEnum:
        default:
            return [MSGraphFido2RestrictionEnforcementType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphFido2RestrictionEnforcementTypeAllow:
            return @"allow";
        case MSGraphFido2RestrictionEnforcementTypeBlock:
            return @"block";
        case MSGraphFido2RestrictionEnforcementTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphFido2RestrictionEnforcementTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphFido2RestrictionEnforcementTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphFido2RestrictionEnforcementType)

- (MSGraphFido2RestrictionEnforcementType*) toMSGraphFido2RestrictionEnforcementType{

    if([self isEqualToString:@"allow"])
    {
          return [MSGraphFido2RestrictionEnforcementType allow];
    }
    else if([self isEqualToString:@"block"])
    {
          return [MSGraphFido2RestrictionEnforcementType block];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphFido2RestrictionEnforcementType unknownFutureValue];
    }
    else {
        return [MSGraphFido2RestrictionEnforcementType UnknownEnumValue];
    }
}

@end
