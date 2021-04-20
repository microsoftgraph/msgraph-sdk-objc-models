// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAccessReviewInstanceFilterByCurrentUserOptions.h"

@interface MSGraphAccessReviewInstanceFilterByCurrentUserOptions () {
    MSGraphAccessReviewInstanceFilterByCurrentUserOptionsValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAccessReviewInstanceFilterByCurrentUserOptionsValue enumValue;
@end

@implementation MSGraphAccessReviewInstanceFilterByCurrentUserOptions

+ (MSGraphAccessReviewInstanceFilterByCurrentUserOptions*) reviewer {
    static MSGraphAccessReviewInstanceFilterByCurrentUserOptions *_reviewer;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _reviewer = [[MSGraphAccessReviewInstanceFilterByCurrentUserOptions alloc] init];
        _reviewer.enumValue = MSGraphAccessReviewInstanceFilterByCurrentUserOptionsReviewer;
    });
    return _reviewer;
}
+ (MSGraphAccessReviewInstanceFilterByCurrentUserOptions*) unknownFutureValue {
    static MSGraphAccessReviewInstanceFilterByCurrentUserOptions *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphAccessReviewInstanceFilterByCurrentUserOptions alloc] init];
        _unknownFutureValue.enumValue = MSGraphAccessReviewInstanceFilterByCurrentUserOptionsUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphAccessReviewInstanceFilterByCurrentUserOptions*) UnknownEnumValue {
    static MSGraphAccessReviewInstanceFilterByCurrentUserOptions *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAccessReviewInstanceFilterByCurrentUserOptions alloc] init];
        _unknownValue.enumValue = MSGraphAccessReviewInstanceFilterByCurrentUserOptionsEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAccessReviewInstanceFilterByCurrentUserOptions*) accessReviewInstanceFilterByCurrentUserOptionsWithEnumValue:(MSGraphAccessReviewInstanceFilterByCurrentUserOptionsValue)val {

    switch(val)
    {
        case MSGraphAccessReviewInstanceFilterByCurrentUserOptionsReviewer:
            return [MSGraphAccessReviewInstanceFilterByCurrentUserOptions reviewer];
        case MSGraphAccessReviewInstanceFilterByCurrentUserOptionsUnknownFutureValue:
            return [MSGraphAccessReviewInstanceFilterByCurrentUserOptions unknownFutureValue];
        case MSGraphAccessReviewInstanceFilterByCurrentUserOptionsEndOfEnum:
        default:
            return [MSGraphAccessReviewInstanceFilterByCurrentUserOptions UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAccessReviewInstanceFilterByCurrentUserOptionsReviewer:
            return @"reviewer";
        case MSGraphAccessReviewInstanceFilterByCurrentUserOptionsUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphAccessReviewInstanceFilterByCurrentUserOptionsEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAccessReviewInstanceFilterByCurrentUserOptionsValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAccessReviewInstanceFilterByCurrentUserOptions)

- (MSGraphAccessReviewInstanceFilterByCurrentUserOptions*) toMSGraphAccessReviewInstanceFilterByCurrentUserOptions{

    if([self isEqualToString:@"reviewer"])
    {
          return [MSGraphAccessReviewInstanceFilterByCurrentUserOptions reviewer];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphAccessReviewInstanceFilterByCurrentUserOptions unknownFutureValue];
    }
    else {
        return [MSGraphAccessReviewInstanceFilterByCurrentUserOptions UnknownEnumValue];
    }
}

@end
