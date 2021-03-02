// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAgreementAcceptanceState.h"

@interface MSGraphAgreementAcceptanceState () {
    MSGraphAgreementAcceptanceStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAgreementAcceptanceStateValue enumValue;
@end

@implementation MSGraphAgreementAcceptanceState

+ (MSGraphAgreementAcceptanceState*) accepted {
    static MSGraphAgreementAcceptanceState *_accepted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _accepted = [[MSGraphAgreementAcceptanceState alloc] init];
        _accepted.enumValue = MSGraphAgreementAcceptanceStateAccepted;
    });
    return _accepted;
}
+ (MSGraphAgreementAcceptanceState*) declined {
    static MSGraphAgreementAcceptanceState *_declined;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _declined = [[MSGraphAgreementAcceptanceState alloc] init];
        _declined.enumValue = MSGraphAgreementAcceptanceStateDeclined;
    });
    return _declined;
}
+ (MSGraphAgreementAcceptanceState*) unknownFutureValue {
    static MSGraphAgreementAcceptanceState *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphAgreementAcceptanceState alloc] init];
        _unknownFutureValue.enumValue = MSGraphAgreementAcceptanceStateUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphAgreementAcceptanceState*) UnknownEnumValue {
    static MSGraphAgreementAcceptanceState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAgreementAcceptanceState alloc] init];
        _unknownValue.enumValue = MSGraphAgreementAcceptanceStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAgreementAcceptanceState*) agreementAcceptanceStateWithEnumValue:(MSGraphAgreementAcceptanceStateValue)val {

    switch(val)
    {
        case MSGraphAgreementAcceptanceStateAccepted:
            return [MSGraphAgreementAcceptanceState accepted];
        case MSGraphAgreementAcceptanceStateDeclined:
            return [MSGraphAgreementAcceptanceState declined];
        case MSGraphAgreementAcceptanceStateUnknownFutureValue:
            return [MSGraphAgreementAcceptanceState unknownFutureValue];
        case MSGraphAgreementAcceptanceStateEndOfEnum:
        default:
            return [MSGraphAgreementAcceptanceState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAgreementAcceptanceStateAccepted:
            return @"accepted";
        case MSGraphAgreementAcceptanceStateDeclined:
            return @"declined";
        case MSGraphAgreementAcceptanceStateUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphAgreementAcceptanceStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAgreementAcceptanceStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAgreementAcceptanceState)

- (MSGraphAgreementAcceptanceState*) toMSGraphAgreementAcceptanceState{

    if([self isEqualToString:@"accepted"])
    {
          return [MSGraphAgreementAcceptanceState accepted];
    }
    else if([self isEqualToString:@"declined"])
    {
          return [MSGraphAgreementAcceptanceState declined];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphAgreementAcceptanceState unknownFutureValue];
    }
    else {
        return [MSGraphAgreementAcceptanceState UnknownEnumValue];
    }
}

@end
