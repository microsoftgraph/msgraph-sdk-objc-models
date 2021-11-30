// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphConnectedOrganizationState.h"

@interface MSGraphConnectedOrganizationState () {
    MSGraphConnectedOrganizationStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphConnectedOrganizationStateValue enumValue;
@end

@implementation MSGraphConnectedOrganizationState

+ (MSGraphConnectedOrganizationState*) configured {
    static MSGraphConnectedOrganizationState *_configured;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _configured = [[MSGraphConnectedOrganizationState alloc] init];
        _configured.enumValue = MSGraphConnectedOrganizationStateConfigured;
    });
    return _configured;
}
+ (MSGraphConnectedOrganizationState*) proposed {
    static MSGraphConnectedOrganizationState *_proposed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _proposed = [[MSGraphConnectedOrganizationState alloc] init];
        _proposed.enumValue = MSGraphConnectedOrganizationStateProposed;
    });
    return _proposed;
}
+ (MSGraphConnectedOrganizationState*) unknownFutureValue {
    static MSGraphConnectedOrganizationState *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphConnectedOrganizationState alloc] init];
        _unknownFutureValue.enumValue = MSGraphConnectedOrganizationStateUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphConnectedOrganizationState*) UnknownEnumValue {
    static MSGraphConnectedOrganizationState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphConnectedOrganizationState alloc] init];
        _unknownValue.enumValue = MSGraphConnectedOrganizationStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphConnectedOrganizationState*) connectedOrganizationStateWithEnumValue:(MSGraphConnectedOrganizationStateValue)val {

    switch(val)
    {
        case MSGraphConnectedOrganizationStateConfigured:
            return [MSGraphConnectedOrganizationState configured];
        case MSGraphConnectedOrganizationStateProposed:
            return [MSGraphConnectedOrganizationState proposed];
        case MSGraphConnectedOrganizationStateUnknownFutureValue:
            return [MSGraphConnectedOrganizationState unknownFutureValue];
        case MSGraphConnectedOrganizationStateEndOfEnum:
        default:
            return [MSGraphConnectedOrganizationState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphConnectedOrganizationStateConfigured:
            return @"configured";
        case MSGraphConnectedOrganizationStateProposed:
            return @"proposed";
        case MSGraphConnectedOrganizationStateUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphConnectedOrganizationStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphConnectedOrganizationStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphConnectedOrganizationState)

- (MSGraphConnectedOrganizationState*) toMSGraphConnectedOrganizationState{

    if([self isEqualToString:@"configured"])
    {
          return [MSGraphConnectedOrganizationState configured];
    }
    else if([self isEqualToString:@"proposed"])
    {
          return [MSGraphConnectedOrganizationState proposed];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphConnectedOrganizationState unknownFutureValue];
    }
    else {
        return [MSGraphConnectedOrganizationState UnknownEnumValue];
    }
}

@end
