// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphSubjectRightsRequestStageStatus.h"

@interface MSGraphSubjectRightsRequestStageStatus () {
    MSGraphSubjectRightsRequestStageStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphSubjectRightsRequestStageStatusValue enumValue;
@end

@implementation MSGraphSubjectRightsRequestStageStatus

+ (MSGraphSubjectRightsRequestStageStatus*) notStarted {
    static MSGraphSubjectRightsRequestStageStatus *_notStarted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notStarted = [[MSGraphSubjectRightsRequestStageStatus alloc] init];
        _notStarted.enumValue = MSGraphSubjectRightsRequestStageStatusNotStarted;
    });
    return _notStarted;
}
+ (MSGraphSubjectRightsRequestStageStatus*) current {
    static MSGraphSubjectRightsRequestStageStatus *_current;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _current = [[MSGraphSubjectRightsRequestStageStatus alloc] init];
        _current.enumValue = MSGraphSubjectRightsRequestStageStatusCurrent;
    });
    return _current;
}
+ (MSGraphSubjectRightsRequestStageStatus*) completed {
    static MSGraphSubjectRightsRequestStageStatus *_completed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _completed = [[MSGraphSubjectRightsRequestStageStatus alloc] init];
        _completed.enumValue = MSGraphSubjectRightsRequestStageStatusCompleted;
    });
    return _completed;
}
+ (MSGraphSubjectRightsRequestStageStatus*) failed {
    static MSGraphSubjectRightsRequestStageStatus *_failed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _failed = [[MSGraphSubjectRightsRequestStageStatus alloc] init];
        _failed.enumValue = MSGraphSubjectRightsRequestStageStatusFailed;
    });
    return _failed;
}
+ (MSGraphSubjectRightsRequestStageStatus*) unknownFutureValue {
    static MSGraphSubjectRightsRequestStageStatus *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphSubjectRightsRequestStageStatus alloc] init];
        _unknownFutureValue.enumValue = MSGraphSubjectRightsRequestStageStatusUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphSubjectRightsRequestStageStatus*) UnknownEnumValue {
    static MSGraphSubjectRightsRequestStageStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphSubjectRightsRequestStageStatus alloc] init];
        _unknownValue.enumValue = MSGraphSubjectRightsRequestStageStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphSubjectRightsRequestStageStatus*) subjectRightsRequestStageStatusWithEnumValue:(MSGraphSubjectRightsRequestStageStatusValue)val {

    switch(val)
    {
        case MSGraphSubjectRightsRequestStageStatusNotStarted:
            return [MSGraphSubjectRightsRequestStageStatus notStarted];
        case MSGraphSubjectRightsRequestStageStatusCurrent:
            return [MSGraphSubjectRightsRequestStageStatus current];
        case MSGraphSubjectRightsRequestStageStatusCompleted:
            return [MSGraphSubjectRightsRequestStageStatus completed];
        case MSGraphSubjectRightsRequestStageStatusFailed:
            return [MSGraphSubjectRightsRequestStageStatus failed];
        case MSGraphSubjectRightsRequestStageStatusUnknownFutureValue:
            return [MSGraphSubjectRightsRequestStageStatus unknownFutureValue];
        case MSGraphSubjectRightsRequestStageStatusEndOfEnum:
        default:
            return [MSGraphSubjectRightsRequestStageStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphSubjectRightsRequestStageStatusNotStarted:
            return @"notStarted";
        case MSGraphSubjectRightsRequestStageStatusCurrent:
            return @"current";
        case MSGraphSubjectRightsRequestStageStatusCompleted:
            return @"completed";
        case MSGraphSubjectRightsRequestStageStatusFailed:
            return @"failed";
        case MSGraphSubjectRightsRequestStageStatusUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphSubjectRightsRequestStageStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphSubjectRightsRequestStageStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphSubjectRightsRequestStageStatus)

- (MSGraphSubjectRightsRequestStageStatus*) toMSGraphSubjectRightsRequestStageStatus{

    if([self isEqualToString:@"notStarted"])
    {
          return [MSGraphSubjectRightsRequestStageStatus notStarted];
    }
    else if([self isEqualToString:@"current"])
    {
          return [MSGraphSubjectRightsRequestStageStatus current];
    }
    else if([self isEqualToString:@"completed"])
    {
          return [MSGraphSubjectRightsRequestStageStatus completed];
    }
    else if([self isEqualToString:@"failed"])
    {
          return [MSGraphSubjectRightsRequestStageStatus failed];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphSubjectRightsRequestStageStatus unknownFutureValue];
    }
    else {
        return [MSGraphSubjectRightsRequestStageStatus UnknownEnumValue];
    }
}

@end
