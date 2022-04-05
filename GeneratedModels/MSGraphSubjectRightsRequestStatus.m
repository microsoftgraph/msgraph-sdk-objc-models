// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphSubjectRightsRequestStatus.h"

@interface MSGraphSubjectRightsRequestStatus () {
    MSGraphSubjectRightsRequestStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphSubjectRightsRequestStatusValue enumValue;
@end

@implementation MSGraphSubjectRightsRequestStatus

+ (MSGraphSubjectRightsRequestStatus*) active {
    static MSGraphSubjectRightsRequestStatus *_active;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _active = [[MSGraphSubjectRightsRequestStatus alloc] init];
        _active.enumValue = MSGraphSubjectRightsRequestStatusActive;
    });
    return _active;
}
+ (MSGraphSubjectRightsRequestStatus*) closed {
    static MSGraphSubjectRightsRequestStatus *_closed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _closed = [[MSGraphSubjectRightsRequestStatus alloc] init];
        _closed.enumValue = MSGraphSubjectRightsRequestStatusClosed;
    });
    return _closed;
}
+ (MSGraphSubjectRightsRequestStatus*) unknownFutureValue {
    static MSGraphSubjectRightsRequestStatus *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphSubjectRightsRequestStatus alloc] init];
        _unknownFutureValue.enumValue = MSGraphSubjectRightsRequestStatusUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphSubjectRightsRequestStatus*) UnknownEnumValue {
    static MSGraphSubjectRightsRequestStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphSubjectRightsRequestStatus alloc] init];
        _unknownValue.enumValue = MSGraphSubjectRightsRequestStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphSubjectRightsRequestStatus*) subjectRightsRequestStatusWithEnumValue:(MSGraphSubjectRightsRequestStatusValue)val {

    switch(val)
    {
        case MSGraphSubjectRightsRequestStatusActive:
            return [MSGraphSubjectRightsRequestStatus active];
        case MSGraphSubjectRightsRequestStatusClosed:
            return [MSGraphSubjectRightsRequestStatus closed];
        case MSGraphSubjectRightsRequestStatusUnknownFutureValue:
            return [MSGraphSubjectRightsRequestStatus unknownFutureValue];
        case MSGraphSubjectRightsRequestStatusEndOfEnum:
        default:
            return [MSGraphSubjectRightsRequestStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphSubjectRightsRequestStatusActive:
            return @"active";
        case MSGraphSubjectRightsRequestStatusClosed:
            return @"closed";
        case MSGraphSubjectRightsRequestStatusUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphSubjectRightsRequestStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphSubjectRightsRequestStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphSubjectRightsRequestStatus)

- (MSGraphSubjectRightsRequestStatus*) toMSGraphSubjectRightsRequestStatus{

    if([self isEqualToString:@"active"])
    {
          return [MSGraphSubjectRightsRequestStatus active];
    }
    else if([self isEqualToString:@"closed"])
    {
          return [MSGraphSubjectRightsRequestStatus closed];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphSubjectRightsRequestStatus unknownFutureValue];
    }
    else {
        return [MSGraphSubjectRightsRequestStatus UnknownEnumValue];
    }
}

@end
