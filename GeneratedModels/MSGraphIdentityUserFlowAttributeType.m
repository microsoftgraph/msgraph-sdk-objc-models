// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphIdentityUserFlowAttributeType.h"

@interface MSGraphIdentityUserFlowAttributeType () {
    MSGraphIdentityUserFlowAttributeTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphIdentityUserFlowAttributeTypeValue enumValue;
@end

@implementation MSGraphIdentityUserFlowAttributeType

+ (MSGraphIdentityUserFlowAttributeType*) builtIn {
    static MSGraphIdentityUserFlowAttributeType *_builtIn;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _builtIn = [[MSGraphIdentityUserFlowAttributeType alloc] init];
        _builtIn.enumValue = MSGraphIdentityUserFlowAttributeTypeBuiltIn;
    });
    return _builtIn;
}
+ (MSGraphIdentityUserFlowAttributeType*) custom {
    static MSGraphIdentityUserFlowAttributeType *_custom;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _custom = [[MSGraphIdentityUserFlowAttributeType alloc] init];
        _custom.enumValue = MSGraphIdentityUserFlowAttributeTypeCustom;
    });
    return _custom;
}
+ (MSGraphIdentityUserFlowAttributeType*) required {
    static MSGraphIdentityUserFlowAttributeType *_required;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _required = [[MSGraphIdentityUserFlowAttributeType alloc] init];
        _required.enumValue = MSGraphIdentityUserFlowAttributeTypeRequired;
    });
    return _required;
}
+ (MSGraphIdentityUserFlowAttributeType*) unknownFutureValue {
    static MSGraphIdentityUserFlowAttributeType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphIdentityUserFlowAttributeType alloc] init];
        _unknownFutureValue.enumValue = MSGraphIdentityUserFlowAttributeTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphIdentityUserFlowAttributeType*) UnknownEnumValue {
    static MSGraphIdentityUserFlowAttributeType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphIdentityUserFlowAttributeType alloc] init];
        _unknownValue.enumValue = MSGraphIdentityUserFlowAttributeTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphIdentityUserFlowAttributeType*) identityUserFlowAttributeTypeWithEnumValue:(MSGraphIdentityUserFlowAttributeTypeValue)val {

    switch(val)
    {
        case MSGraphIdentityUserFlowAttributeTypeBuiltIn:
            return [MSGraphIdentityUserFlowAttributeType builtIn];
        case MSGraphIdentityUserFlowAttributeTypeCustom:
            return [MSGraphIdentityUserFlowAttributeType custom];
        case MSGraphIdentityUserFlowAttributeTypeRequired:
            return [MSGraphIdentityUserFlowAttributeType required];
        case MSGraphIdentityUserFlowAttributeTypeUnknownFutureValue:
            return [MSGraphIdentityUserFlowAttributeType unknownFutureValue];
        case MSGraphIdentityUserFlowAttributeTypeEndOfEnum:
        default:
            return [MSGraphIdentityUserFlowAttributeType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphIdentityUserFlowAttributeTypeBuiltIn:
            return @"builtIn";
        case MSGraphIdentityUserFlowAttributeTypeCustom:
            return @"custom";
        case MSGraphIdentityUserFlowAttributeTypeRequired:
            return @"required";
        case MSGraphIdentityUserFlowAttributeTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphIdentityUserFlowAttributeTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphIdentityUserFlowAttributeTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphIdentityUserFlowAttributeType)

- (MSGraphIdentityUserFlowAttributeType*) toMSGraphIdentityUserFlowAttributeType{

    if([self isEqualToString:@"builtIn"])
    {
          return [MSGraphIdentityUserFlowAttributeType builtIn];
    }
    else if([self isEqualToString:@"custom"])
    {
          return [MSGraphIdentityUserFlowAttributeType custom];
    }
    else if([self isEqualToString:@"required"])
    {
          return [MSGraphIdentityUserFlowAttributeType required];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphIdentityUserFlowAttributeType unknownFutureValue];
    }
    else {
        return [MSGraphIdentityUserFlowAttributeType UnknownEnumValue];
    }
}

@end
