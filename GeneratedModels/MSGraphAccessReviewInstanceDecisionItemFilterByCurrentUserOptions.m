// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptions.h"

@interface MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptions () {
    MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptionsValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptionsValue enumValue;
@end

@implementation MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptions

+ (MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptions*) reviewer {
    static MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptions *_reviewer;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _reviewer = [[MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptions alloc] init];
        _reviewer.enumValue = MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptionsReviewer;
    });
    return _reviewer;
}
+ (MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptions*) unknownFutureValue {
    static MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptions *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptions alloc] init];
        _unknownFutureValue.enumValue = MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptionsUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptions*) UnknownEnumValue {
    static MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptions *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptions alloc] init];
        _unknownValue.enumValue = MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptionsEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptions*) accessReviewInstanceDecisionItemFilterByCurrentUserOptionsWithEnumValue:(MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptionsValue)val {

    switch(val)
    {
        case MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptionsReviewer:
            return [MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptions reviewer];
        case MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptionsUnknownFutureValue:
            return [MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptions unknownFutureValue];
        case MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptionsEndOfEnum:
        default:
            return [MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptions UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptionsReviewer:
            return @"reviewer";
        case MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptionsUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptionsEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptionsValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptions)

- (MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptions*) toMSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptions{

    if([self isEqualToString:@"reviewer"])
    {
          return [MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptions reviewer];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptions unknownFutureValue];
    }
    else {
        return [MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptions UnknownEnumValue];
    }
}

@end
