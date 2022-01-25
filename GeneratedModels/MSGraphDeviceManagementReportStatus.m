// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphDeviceManagementReportStatus.h"

@interface MSGraphDeviceManagementReportStatus () {
    MSGraphDeviceManagementReportStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphDeviceManagementReportStatusValue enumValue;
@end

@implementation MSGraphDeviceManagementReportStatus

+ (MSGraphDeviceManagementReportStatus*) unknown {
    static MSGraphDeviceManagementReportStatus *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphDeviceManagementReportStatus alloc] init];
        _unknown.enumValue = MSGraphDeviceManagementReportStatusUnknown;
    });
    return _unknown;
}
+ (MSGraphDeviceManagementReportStatus*) notStarted {
    static MSGraphDeviceManagementReportStatus *_notStarted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notStarted = [[MSGraphDeviceManagementReportStatus alloc] init];
        _notStarted.enumValue = MSGraphDeviceManagementReportStatusNotStarted;
    });
    return _notStarted;
}
+ (MSGraphDeviceManagementReportStatus*) inProgress {
    static MSGraphDeviceManagementReportStatus *_inProgress;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inProgress = [[MSGraphDeviceManagementReportStatus alloc] init];
        _inProgress.enumValue = MSGraphDeviceManagementReportStatusInProgress;
    });
    return _inProgress;
}
+ (MSGraphDeviceManagementReportStatus*) completed {
    static MSGraphDeviceManagementReportStatus *_completed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _completed = [[MSGraphDeviceManagementReportStatus alloc] init];
        _completed.enumValue = MSGraphDeviceManagementReportStatusCompleted;
    });
    return _completed;
}
+ (MSGraphDeviceManagementReportStatus*) failed {
    static MSGraphDeviceManagementReportStatus *_failed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _failed = [[MSGraphDeviceManagementReportStatus alloc] init];
        _failed.enumValue = MSGraphDeviceManagementReportStatusFailed;
    });
    return _failed;
}

+ (MSGraphDeviceManagementReportStatus*) UnknownEnumValue {
    static MSGraphDeviceManagementReportStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphDeviceManagementReportStatus alloc] init];
        _unknownValue.enumValue = MSGraphDeviceManagementReportStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphDeviceManagementReportStatus*) deviceManagementReportStatusWithEnumValue:(MSGraphDeviceManagementReportStatusValue)val {

    switch(val)
    {
        case MSGraphDeviceManagementReportStatusUnknown:
            return [MSGraphDeviceManagementReportStatus unknown];
        case MSGraphDeviceManagementReportStatusNotStarted:
            return [MSGraphDeviceManagementReportStatus notStarted];
        case MSGraphDeviceManagementReportStatusInProgress:
            return [MSGraphDeviceManagementReportStatus inProgress];
        case MSGraphDeviceManagementReportStatusCompleted:
            return [MSGraphDeviceManagementReportStatus completed];
        case MSGraphDeviceManagementReportStatusFailed:
            return [MSGraphDeviceManagementReportStatus failed];
        case MSGraphDeviceManagementReportStatusEndOfEnum:
        default:
            return [MSGraphDeviceManagementReportStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphDeviceManagementReportStatusUnknown:
            return @"unknown";
        case MSGraphDeviceManagementReportStatusNotStarted:
            return @"notStarted";
        case MSGraphDeviceManagementReportStatusInProgress:
            return @"inProgress";
        case MSGraphDeviceManagementReportStatusCompleted:
            return @"completed";
        case MSGraphDeviceManagementReportStatusFailed:
            return @"failed";
        case MSGraphDeviceManagementReportStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphDeviceManagementReportStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphDeviceManagementReportStatus)

- (MSGraphDeviceManagementReportStatus*) toMSGraphDeviceManagementReportStatus{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphDeviceManagementReportStatus unknown];
    }
    else if([self isEqualToString:@"notStarted"])
    {
          return [MSGraphDeviceManagementReportStatus notStarted];
    }
    else if([self isEqualToString:@"inProgress"])
    {
          return [MSGraphDeviceManagementReportStatus inProgress];
    }
    else if([self isEqualToString:@"completed"])
    {
          return [MSGraphDeviceManagementReportStatus completed];
    }
    else if([self isEqualToString:@"failed"])
    {
          return [MSGraphDeviceManagementReportStatus failed];
    }
    else {
        return [MSGraphDeviceManagementReportStatus UnknownEnumValue];
    }
}

@end
