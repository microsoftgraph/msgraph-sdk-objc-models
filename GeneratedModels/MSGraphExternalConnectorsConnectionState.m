// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphExternalConnectorsConnectionState.h"

@interface MSGraphExternalConnectorsConnectionState () {
    MSGraphExternalConnectorsConnectionStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphExternalConnectorsConnectionStateValue enumValue;
@end

@implementation MSGraphExternalConnectorsConnectionState

+ (MSGraphExternalConnectorsConnectionState*) draft {
    static MSGraphExternalConnectorsConnectionState *_draft;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _draft = [[MSGraphExternalConnectorsConnectionState alloc] init];
        _draft.enumValue = MSGraphExternalConnectorsConnectionStateDraft;
    });
    return _draft;
}
+ (MSGraphExternalConnectorsConnectionState*) ready {
    static MSGraphExternalConnectorsConnectionState *_ready;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _ready = [[MSGraphExternalConnectorsConnectionState alloc] init];
        _ready.enumValue = MSGraphExternalConnectorsConnectionStateReady;
    });
    return _ready;
}
+ (MSGraphExternalConnectorsConnectionState*) obsolete {
    static MSGraphExternalConnectorsConnectionState *_obsolete;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _obsolete = [[MSGraphExternalConnectorsConnectionState alloc] init];
        _obsolete.enumValue = MSGraphExternalConnectorsConnectionStateObsolete;
    });
    return _obsolete;
}
+ (MSGraphExternalConnectorsConnectionState*) limitExceeded {
    static MSGraphExternalConnectorsConnectionState *_limitExceeded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _limitExceeded = [[MSGraphExternalConnectorsConnectionState alloc] init];
        _limitExceeded.enumValue = MSGraphExternalConnectorsConnectionStateLimitExceeded;
    });
    return _limitExceeded;
}
+ (MSGraphExternalConnectorsConnectionState*) unknownFutureValue {
    static MSGraphExternalConnectorsConnectionState *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphExternalConnectorsConnectionState alloc] init];
        _unknownFutureValue.enumValue = MSGraphExternalConnectorsConnectionStateUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphExternalConnectorsConnectionState*) UnknownEnumValue {
    static MSGraphExternalConnectorsConnectionState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphExternalConnectorsConnectionState alloc] init];
        _unknownValue.enumValue = MSGraphExternalConnectorsConnectionStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphExternalConnectorsConnectionState*) connectionStateWithEnumValue:(MSGraphExternalConnectorsConnectionStateValue)val {

    switch(val)
    {
        case MSGraphExternalConnectorsConnectionStateDraft:
            return [MSGraphExternalConnectorsConnectionState draft];
        case MSGraphExternalConnectorsConnectionStateReady:
            return [MSGraphExternalConnectorsConnectionState ready];
        case MSGraphExternalConnectorsConnectionStateObsolete:
            return [MSGraphExternalConnectorsConnectionState obsolete];
        case MSGraphExternalConnectorsConnectionStateLimitExceeded:
            return [MSGraphExternalConnectorsConnectionState limitExceeded];
        case MSGraphExternalConnectorsConnectionStateUnknownFutureValue:
            return [MSGraphExternalConnectorsConnectionState unknownFutureValue];
        case MSGraphExternalConnectorsConnectionStateEndOfEnum:
        default:
            return [MSGraphExternalConnectorsConnectionState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphExternalConnectorsConnectionStateDraft:
            return @"draft";
        case MSGraphExternalConnectorsConnectionStateReady:
            return @"ready";
        case MSGraphExternalConnectorsConnectionStateObsolete:
            return @"obsolete";
        case MSGraphExternalConnectorsConnectionStateLimitExceeded:
            return @"limitExceeded";
        case MSGraphExternalConnectorsConnectionStateUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphExternalConnectorsConnectionStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphExternalConnectorsConnectionStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphExternalConnectorsConnectionState)

- (MSGraphExternalConnectorsConnectionState*) toMSGraphExternalConnectorsConnectionState{

    if([self isEqualToString:@"draft"])
    {
          return [MSGraphExternalConnectorsConnectionState draft];
    }
    else if([self isEqualToString:@"ready"])
    {
          return [MSGraphExternalConnectorsConnectionState ready];
    }
    else if([self isEqualToString:@"obsolete"])
    {
          return [MSGraphExternalConnectorsConnectionState obsolete];
    }
    else if([self isEqualToString:@"limitExceeded"])
    {
          return [MSGraphExternalConnectorsConnectionState limitExceeded];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphExternalConnectorsConnectionState unknownFutureValue];
    }
    else {
        return [MSGraphExternalConnectorsConnectionState UnknownEnumValue];
    }
}

@end
