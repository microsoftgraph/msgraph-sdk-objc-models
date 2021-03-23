// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphConsentRequestFilterByCurrentUserOptions.h"

@interface MSGraphConsentRequestFilterByCurrentUserOptions () {
    MSGraphConsentRequestFilterByCurrentUserOptionsValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphConsentRequestFilterByCurrentUserOptionsValue enumValue;
@end

@implementation MSGraphConsentRequestFilterByCurrentUserOptions

+ (MSGraphConsentRequestFilterByCurrentUserOptions*) reviewer {
    static MSGraphConsentRequestFilterByCurrentUserOptions *_reviewer;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _reviewer = [[MSGraphConsentRequestFilterByCurrentUserOptions alloc] init];
        _reviewer.enumValue = MSGraphConsentRequestFilterByCurrentUserOptionsReviewer;
    });
    return _reviewer;
}
+ (MSGraphConsentRequestFilterByCurrentUserOptions*) unknownFutureValue {
    static MSGraphConsentRequestFilterByCurrentUserOptions *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphConsentRequestFilterByCurrentUserOptions alloc] init];
        _unknownFutureValue.enumValue = MSGraphConsentRequestFilterByCurrentUserOptionsUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphConsentRequestFilterByCurrentUserOptions*) UnknownEnumValue {
    static MSGraphConsentRequestFilterByCurrentUserOptions *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphConsentRequestFilterByCurrentUserOptions alloc] init];
        _unknownValue.enumValue = MSGraphConsentRequestFilterByCurrentUserOptionsEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphConsentRequestFilterByCurrentUserOptions*) consentRequestFilterByCurrentUserOptionsWithEnumValue:(MSGraphConsentRequestFilterByCurrentUserOptionsValue)val {

    switch(val)
    {
        case MSGraphConsentRequestFilterByCurrentUserOptionsReviewer:
            return [MSGraphConsentRequestFilterByCurrentUserOptions reviewer];
        case MSGraphConsentRequestFilterByCurrentUserOptionsUnknownFutureValue:
            return [MSGraphConsentRequestFilterByCurrentUserOptions unknownFutureValue];
        case MSGraphConsentRequestFilterByCurrentUserOptionsEndOfEnum:
        default:
            return [MSGraphConsentRequestFilterByCurrentUserOptions UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphConsentRequestFilterByCurrentUserOptionsReviewer:
            return @"reviewer";
        case MSGraphConsentRequestFilterByCurrentUserOptionsUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphConsentRequestFilterByCurrentUserOptionsEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphConsentRequestFilterByCurrentUserOptionsValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphConsentRequestFilterByCurrentUserOptions)

- (MSGraphConsentRequestFilterByCurrentUserOptions*) toMSGraphConsentRequestFilterByCurrentUserOptions{

    if([self isEqualToString:@"reviewer"])
    {
          return [MSGraphConsentRequestFilterByCurrentUserOptions reviewer];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphConsentRequestFilterByCurrentUserOptions unknownFutureValue];
    }
    else {
        return [MSGraphConsentRequestFilterByCurrentUserOptions UnknownEnumValue];
    }
}

@end
