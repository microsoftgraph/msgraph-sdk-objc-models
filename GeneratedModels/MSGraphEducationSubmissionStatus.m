// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphEducationSubmissionStatus.h"

@interface MSGraphEducationSubmissionStatus () {
    MSGraphEducationSubmissionStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphEducationSubmissionStatusValue enumValue;
@end

@implementation MSGraphEducationSubmissionStatus

+ (MSGraphEducationSubmissionStatus*) working {
    static MSGraphEducationSubmissionStatus *_working;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _working = [[MSGraphEducationSubmissionStatus alloc] init];
        _working.enumValue = MSGraphEducationSubmissionStatusWorking;
    });
    return _working;
}
+ (MSGraphEducationSubmissionStatus*) submitted {
    static MSGraphEducationSubmissionStatus *_submitted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _submitted = [[MSGraphEducationSubmissionStatus alloc] init];
        _submitted.enumValue = MSGraphEducationSubmissionStatusSubmitted;
    });
    return _submitted;
}
+ (MSGraphEducationSubmissionStatus*) released {
    static MSGraphEducationSubmissionStatus *_released;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _released = [[MSGraphEducationSubmissionStatus alloc] init];
        _released.enumValue = MSGraphEducationSubmissionStatusReleased;
    });
    return _released;
}
+ (MSGraphEducationSubmissionStatus*) returned {
    static MSGraphEducationSubmissionStatus *_returned;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _returned = [[MSGraphEducationSubmissionStatus alloc] init];
        _returned.enumValue = MSGraphEducationSubmissionStatusReturned;
    });
    return _returned;
}
+ (MSGraphEducationSubmissionStatus*) unknownFutureValue {
    static MSGraphEducationSubmissionStatus *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphEducationSubmissionStatus alloc] init];
        _unknownFutureValue.enumValue = MSGraphEducationSubmissionStatusUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphEducationSubmissionStatus*) UnknownEnumValue {
    static MSGraphEducationSubmissionStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphEducationSubmissionStatus alloc] init];
        _unknownValue.enumValue = MSGraphEducationSubmissionStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphEducationSubmissionStatus*) educationSubmissionStatusWithEnumValue:(MSGraphEducationSubmissionStatusValue)val {

    switch(val)
    {
        case MSGraphEducationSubmissionStatusWorking:
            return [MSGraphEducationSubmissionStatus working];
        case MSGraphEducationSubmissionStatusSubmitted:
            return [MSGraphEducationSubmissionStatus submitted];
        case MSGraphEducationSubmissionStatusReleased:
            return [MSGraphEducationSubmissionStatus released];
        case MSGraphEducationSubmissionStatusReturned:
            return [MSGraphEducationSubmissionStatus returned];
        case MSGraphEducationSubmissionStatusUnknownFutureValue:
            return [MSGraphEducationSubmissionStatus unknownFutureValue];
        case MSGraphEducationSubmissionStatusEndOfEnum:
        default:
            return [MSGraphEducationSubmissionStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphEducationSubmissionStatusWorking:
            return @"working";
        case MSGraphEducationSubmissionStatusSubmitted:
            return @"submitted";
        case MSGraphEducationSubmissionStatusReleased:
            return @"released";
        case MSGraphEducationSubmissionStatusReturned:
            return @"returned";
        case MSGraphEducationSubmissionStatusUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphEducationSubmissionStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphEducationSubmissionStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphEducationSubmissionStatus)

- (MSGraphEducationSubmissionStatus*) toMSGraphEducationSubmissionStatus{

    if([self isEqualToString:@"working"])
    {
          return [MSGraphEducationSubmissionStatus working];
    }
    else if([self isEqualToString:@"submitted"])
    {
          return [MSGraphEducationSubmissionStatus submitted];
    }
    else if([self isEqualToString:@"released"])
    {
          return [MSGraphEducationSubmissionStatus released];
    }
    else if([self isEqualToString:@"returned"])
    {
          return [MSGraphEducationSubmissionStatus returned];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphEducationSubmissionStatus unknownFutureValue];
    }
    else {
        return [MSGraphEducationSubmissionStatus UnknownEnumValue];
    }
}

@end
