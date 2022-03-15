// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAccessReviewHistoryDecisionFilter.h"

@interface MSGraphAccessReviewHistoryDecisionFilter () {
    MSGraphAccessReviewHistoryDecisionFilterValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAccessReviewHistoryDecisionFilterValue enumValue;
@end

@implementation MSGraphAccessReviewHistoryDecisionFilter

+ (MSGraphAccessReviewHistoryDecisionFilter*) approve {
    static MSGraphAccessReviewHistoryDecisionFilter *_approve;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _approve = [[MSGraphAccessReviewHistoryDecisionFilter alloc] init];
        _approve.enumValue = MSGraphAccessReviewHistoryDecisionFilterApprove;
    });
    return _approve;
}
+ (MSGraphAccessReviewHistoryDecisionFilter*) deny {
    static MSGraphAccessReviewHistoryDecisionFilter *_deny;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _deny = [[MSGraphAccessReviewHistoryDecisionFilter alloc] init];
        _deny.enumValue = MSGraphAccessReviewHistoryDecisionFilterDeny;
    });
    return _deny;
}
+ (MSGraphAccessReviewHistoryDecisionFilter*) notReviewed {
    static MSGraphAccessReviewHistoryDecisionFilter *_notReviewed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notReviewed = [[MSGraphAccessReviewHistoryDecisionFilter alloc] init];
        _notReviewed.enumValue = MSGraphAccessReviewHistoryDecisionFilterNotReviewed;
    });
    return _notReviewed;
}
+ (MSGraphAccessReviewHistoryDecisionFilter*) dontKnow {
    static MSGraphAccessReviewHistoryDecisionFilter *_dontKnow;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dontKnow = [[MSGraphAccessReviewHistoryDecisionFilter alloc] init];
        _dontKnow.enumValue = MSGraphAccessReviewHistoryDecisionFilterDontKnow;
    });
    return _dontKnow;
}
+ (MSGraphAccessReviewHistoryDecisionFilter*) notNotified {
    static MSGraphAccessReviewHistoryDecisionFilter *_notNotified;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notNotified = [[MSGraphAccessReviewHistoryDecisionFilter alloc] init];
        _notNotified.enumValue = MSGraphAccessReviewHistoryDecisionFilterNotNotified;
    });
    return _notNotified;
}
+ (MSGraphAccessReviewHistoryDecisionFilter*) unknownFutureValue {
    static MSGraphAccessReviewHistoryDecisionFilter *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphAccessReviewHistoryDecisionFilter alloc] init];
        _unknownFutureValue.enumValue = MSGraphAccessReviewHistoryDecisionFilterUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphAccessReviewHistoryDecisionFilter*) UnknownEnumValue {
    static MSGraphAccessReviewHistoryDecisionFilter *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAccessReviewHistoryDecisionFilter alloc] init];
        _unknownValue.enumValue = MSGraphAccessReviewHistoryDecisionFilterEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAccessReviewHistoryDecisionFilter*) accessReviewHistoryDecisionFilterWithEnumValue:(MSGraphAccessReviewHistoryDecisionFilterValue)val {

    switch(val)
    {
        case MSGraphAccessReviewHistoryDecisionFilterApprove:
            return [MSGraphAccessReviewHistoryDecisionFilter approve];
        case MSGraphAccessReviewHistoryDecisionFilterDeny:
            return [MSGraphAccessReviewHistoryDecisionFilter deny];
        case MSGraphAccessReviewHistoryDecisionFilterNotReviewed:
            return [MSGraphAccessReviewHistoryDecisionFilter notReviewed];
        case MSGraphAccessReviewHistoryDecisionFilterDontKnow:
            return [MSGraphAccessReviewHistoryDecisionFilter dontKnow];
        case MSGraphAccessReviewHistoryDecisionFilterNotNotified:
            return [MSGraphAccessReviewHistoryDecisionFilter notNotified];
        case MSGraphAccessReviewHistoryDecisionFilterUnknownFutureValue:
            return [MSGraphAccessReviewHistoryDecisionFilter unknownFutureValue];
        case MSGraphAccessReviewHistoryDecisionFilterEndOfEnum:
        default:
            return [MSGraphAccessReviewHistoryDecisionFilter UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAccessReviewHistoryDecisionFilterApprove:
            return @"approve";
        case MSGraphAccessReviewHistoryDecisionFilterDeny:
            return @"deny";
        case MSGraphAccessReviewHistoryDecisionFilterNotReviewed:
            return @"notReviewed";
        case MSGraphAccessReviewHistoryDecisionFilterDontKnow:
            return @"dontKnow";
        case MSGraphAccessReviewHistoryDecisionFilterNotNotified:
            return @"notNotified";
        case MSGraphAccessReviewHistoryDecisionFilterUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphAccessReviewHistoryDecisionFilterEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAccessReviewHistoryDecisionFilterValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAccessReviewHistoryDecisionFilter)

- (MSGraphAccessReviewHistoryDecisionFilter*) toMSGraphAccessReviewHistoryDecisionFilter{

    if([self isEqualToString:@"approve"])
    {
          return [MSGraphAccessReviewHistoryDecisionFilter approve];
    }
    else if([self isEqualToString:@"deny"])
    {
          return [MSGraphAccessReviewHistoryDecisionFilter deny];
    }
    else if([self isEqualToString:@"notReviewed"])
    {
          return [MSGraphAccessReviewHistoryDecisionFilter notReviewed];
    }
    else if([self isEqualToString:@"dontKnow"])
    {
          return [MSGraphAccessReviewHistoryDecisionFilter dontKnow];
    }
    else if([self isEqualToString:@"notNotified"])
    {
          return [MSGraphAccessReviewHistoryDecisionFilter notNotified];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphAccessReviewHistoryDecisionFilter unknownFutureValue];
    }
    else {
        return [MSGraphAccessReviewHistoryDecisionFilter UnknownEnumValue];
    }
}

@end
