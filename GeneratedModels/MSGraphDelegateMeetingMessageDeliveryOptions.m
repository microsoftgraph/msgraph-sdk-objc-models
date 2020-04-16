// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphDelegateMeetingMessageDeliveryOptions.h"

@interface MSGraphDelegateMeetingMessageDeliveryOptions () {
    MSGraphDelegateMeetingMessageDeliveryOptionsValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphDelegateMeetingMessageDeliveryOptionsValue enumValue;
@end

@implementation MSGraphDelegateMeetingMessageDeliveryOptions

+ (MSGraphDelegateMeetingMessageDeliveryOptions*) sendToDelegateAndInformationToPrincipal {
    static MSGraphDelegateMeetingMessageDeliveryOptions *_sendToDelegateAndInformationToPrincipal;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sendToDelegateAndInformationToPrincipal = [[MSGraphDelegateMeetingMessageDeliveryOptions alloc] init];
        _sendToDelegateAndInformationToPrincipal.enumValue = MSGraphDelegateMeetingMessageDeliveryOptionsSendToDelegateAndInformationToPrincipal;
    });
    return _sendToDelegateAndInformationToPrincipal;
}
+ (MSGraphDelegateMeetingMessageDeliveryOptions*) sendToDelegateAndPrincipal {
    static MSGraphDelegateMeetingMessageDeliveryOptions *_sendToDelegateAndPrincipal;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sendToDelegateAndPrincipal = [[MSGraphDelegateMeetingMessageDeliveryOptions alloc] init];
        _sendToDelegateAndPrincipal.enumValue = MSGraphDelegateMeetingMessageDeliveryOptionsSendToDelegateAndPrincipal;
    });
    return _sendToDelegateAndPrincipal;
}
+ (MSGraphDelegateMeetingMessageDeliveryOptions*) sendToDelegateOnly {
    static MSGraphDelegateMeetingMessageDeliveryOptions *_sendToDelegateOnly;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sendToDelegateOnly = [[MSGraphDelegateMeetingMessageDeliveryOptions alloc] init];
        _sendToDelegateOnly.enumValue = MSGraphDelegateMeetingMessageDeliveryOptionsSendToDelegateOnly;
    });
    return _sendToDelegateOnly;
}

+ (MSGraphDelegateMeetingMessageDeliveryOptions*) UnknownEnumValue {
    static MSGraphDelegateMeetingMessageDeliveryOptions *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphDelegateMeetingMessageDeliveryOptions alloc] init];
        _unknownValue.enumValue = MSGraphDelegateMeetingMessageDeliveryOptionsEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphDelegateMeetingMessageDeliveryOptions*) delegateMeetingMessageDeliveryOptionsWithEnumValue:(MSGraphDelegateMeetingMessageDeliveryOptionsValue)val {

    switch(val)
    {
        case MSGraphDelegateMeetingMessageDeliveryOptionsSendToDelegateAndInformationToPrincipal:
            return [MSGraphDelegateMeetingMessageDeliveryOptions sendToDelegateAndInformationToPrincipal];
        case MSGraphDelegateMeetingMessageDeliveryOptionsSendToDelegateAndPrincipal:
            return [MSGraphDelegateMeetingMessageDeliveryOptions sendToDelegateAndPrincipal];
        case MSGraphDelegateMeetingMessageDeliveryOptionsSendToDelegateOnly:
            return [MSGraphDelegateMeetingMessageDeliveryOptions sendToDelegateOnly];
        case MSGraphDelegateMeetingMessageDeliveryOptionsEndOfEnum:
        default:
            return [MSGraphDelegateMeetingMessageDeliveryOptions UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphDelegateMeetingMessageDeliveryOptionsSendToDelegateAndInformationToPrincipal:
            return @"sendToDelegateAndInformationToPrincipal";
        case MSGraphDelegateMeetingMessageDeliveryOptionsSendToDelegateAndPrincipal:
            return @"sendToDelegateAndPrincipal";
        case MSGraphDelegateMeetingMessageDeliveryOptionsSendToDelegateOnly:
            return @"sendToDelegateOnly";
        case MSGraphDelegateMeetingMessageDeliveryOptionsEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphDelegateMeetingMessageDeliveryOptionsValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphDelegateMeetingMessageDeliveryOptions)

- (MSGraphDelegateMeetingMessageDeliveryOptions*) toMSGraphDelegateMeetingMessageDeliveryOptions{

    if([self isEqualToString:@"sendToDelegateAndInformationToPrincipal"])
    {
          return [MSGraphDelegateMeetingMessageDeliveryOptions sendToDelegateAndInformationToPrincipal];
    }
    else if([self isEqualToString:@"sendToDelegateAndPrincipal"])
    {
          return [MSGraphDelegateMeetingMessageDeliveryOptions sendToDelegateAndPrincipal];
    }
    else if([self isEqualToString:@"sendToDelegateOnly"])
    {
          return [MSGraphDelegateMeetingMessageDeliveryOptions sendToDelegateOnly];
    }
    else {
        return [MSGraphDelegateMeetingMessageDeliveryOptions UnknownEnumValue];
    }
}

@end
