// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAccessReviewHistoryStatus.h"

@interface MSGraphAccessReviewHistoryStatus () {
    MSGraphAccessReviewHistoryStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAccessReviewHistoryStatusValue enumValue;
@end

@implementation MSGraphAccessReviewHistoryStatus

+ (MSGraphAccessReviewHistoryStatus*) done {
    static MSGraphAccessReviewHistoryStatus *_done;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _done = [[MSGraphAccessReviewHistoryStatus alloc] init];
        _done.enumValue = MSGraphAccessReviewHistoryStatusDone;
    });
    return _done;
}
+ (MSGraphAccessReviewHistoryStatus*) inprogress {
    static MSGraphAccessReviewHistoryStatus *_inprogress;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inprogress = [[MSGraphAccessReviewHistoryStatus alloc] init];
        _inprogress.enumValue = MSGraphAccessReviewHistoryStatusInprogress;
    });
    return _inprogress;
}
+ (MSGraphAccessReviewHistoryStatus*) error {
    static MSGraphAccessReviewHistoryStatus *_error;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _error = [[MSGraphAccessReviewHistoryStatus alloc] init];
        _error.enumValue = MSGraphAccessReviewHistoryStatusError;
    });
    return _error;
}
+ (MSGraphAccessReviewHistoryStatus*) requested {
    static MSGraphAccessReviewHistoryStatus *_requested;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _requested = [[MSGraphAccessReviewHistoryStatus alloc] init];
        _requested.enumValue = MSGraphAccessReviewHistoryStatusRequested;
    });
    return _requested;
}
+ (MSGraphAccessReviewHistoryStatus*) unknownFutureValue {
    static MSGraphAccessReviewHistoryStatus *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphAccessReviewHistoryStatus alloc] init];
        _unknownFutureValue.enumValue = MSGraphAccessReviewHistoryStatusUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphAccessReviewHistoryStatus*) UnknownEnumValue {
    static MSGraphAccessReviewHistoryStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAccessReviewHistoryStatus alloc] init];
        _unknownValue.enumValue = MSGraphAccessReviewHistoryStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAccessReviewHistoryStatus*) accessReviewHistoryStatusWithEnumValue:(MSGraphAccessReviewHistoryStatusValue)val {

    switch(val)
    {
        case MSGraphAccessReviewHistoryStatusDone:
            return [MSGraphAccessReviewHistoryStatus done];
        case MSGraphAccessReviewHistoryStatusInprogress:
            return [MSGraphAccessReviewHistoryStatus inprogress];
        case MSGraphAccessReviewHistoryStatusError:
            return [MSGraphAccessReviewHistoryStatus error];
        case MSGraphAccessReviewHistoryStatusRequested:
            return [MSGraphAccessReviewHistoryStatus requested];
        case MSGraphAccessReviewHistoryStatusUnknownFutureValue:
            return [MSGraphAccessReviewHistoryStatus unknownFutureValue];
        case MSGraphAccessReviewHistoryStatusEndOfEnum:
        default:
            return [MSGraphAccessReviewHistoryStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAccessReviewHistoryStatusDone:
            return @"done";
        case MSGraphAccessReviewHistoryStatusInprogress:
            return @"inprogress";
        case MSGraphAccessReviewHistoryStatusError:
            return @"error";
        case MSGraphAccessReviewHistoryStatusRequested:
            return @"requested";
        case MSGraphAccessReviewHistoryStatusUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphAccessReviewHistoryStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAccessReviewHistoryStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAccessReviewHistoryStatus)

- (MSGraphAccessReviewHistoryStatus*) toMSGraphAccessReviewHistoryStatus{

    if([self isEqualToString:@"done"])
    {
          return [MSGraphAccessReviewHistoryStatus done];
    }
    else if([self isEqualToString:@"inprogress"])
    {
          return [MSGraphAccessReviewHistoryStatus inprogress];
    }
    else if([self isEqualToString:@"error"])
    {
          return [MSGraphAccessReviewHistoryStatus error];
    }
    else if([self isEqualToString:@"requested"])
    {
          return [MSGraphAccessReviewHistoryStatus requested];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphAccessReviewHistoryStatus unknownFutureValue];
    }
    else {
        return [MSGraphAccessReviewHistoryStatus UnknownEnumValue];
    }
}

@end
