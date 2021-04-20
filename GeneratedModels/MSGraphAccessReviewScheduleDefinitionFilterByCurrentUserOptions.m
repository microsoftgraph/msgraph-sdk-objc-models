// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptions.h"

@interface MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptions () {
    MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptionsValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptionsValue enumValue;
@end

@implementation MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptions

+ (MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptions*) reviewer {
    static MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptions *_reviewer;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _reviewer = [[MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptions alloc] init];
        _reviewer.enumValue = MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptionsReviewer;
    });
    return _reviewer;
}
+ (MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptions*) unknownFutureValue {
    static MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptions *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptions alloc] init];
        _unknownFutureValue.enumValue = MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptionsUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptions*) UnknownEnumValue {
    static MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptions *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptions alloc] init];
        _unknownValue.enumValue = MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptionsEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptions*) accessReviewScheduleDefinitionFilterByCurrentUserOptionsWithEnumValue:(MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptionsValue)val {

    switch(val)
    {
        case MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptionsReviewer:
            return [MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptions reviewer];
        case MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptionsUnknownFutureValue:
            return [MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptions unknownFutureValue];
        case MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptionsEndOfEnum:
        default:
            return [MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptions UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptionsReviewer:
            return @"reviewer";
        case MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptionsUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptionsEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptionsValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptions)

- (MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptions*) toMSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptions{

    if([self isEqualToString:@"reviewer"])
    {
          return [MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptions reviewer];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptions unknownFutureValue];
    }
    else {
        return [MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptions UnknownEnumValue];
    }
}

@end
