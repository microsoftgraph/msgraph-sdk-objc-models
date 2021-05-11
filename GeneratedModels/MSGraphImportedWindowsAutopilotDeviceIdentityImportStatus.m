// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus.h"

@interface MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus () {
    MSGraphImportedWindowsAutopilotDeviceIdentityImportStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphImportedWindowsAutopilotDeviceIdentityImportStatusValue enumValue;
@end

@implementation MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus

+ (MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus*) unknown {
    static MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus alloc] init];
        _unknown.enumValue = MSGraphImportedWindowsAutopilotDeviceIdentityImportStatusUnknown;
    });
    return _unknown;
}
+ (MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus*) pending {
    static MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus *_pending;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _pending = [[MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus alloc] init];
        _pending.enumValue = MSGraphImportedWindowsAutopilotDeviceIdentityImportStatusPending;
    });
    return _pending;
}
+ (MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus*) partial {
    static MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus *_partial;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _partial = [[MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus alloc] init];
        _partial.enumValue = MSGraphImportedWindowsAutopilotDeviceIdentityImportStatusPartial;
    });
    return _partial;
}
+ (MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus*) complete {
    static MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus *_complete;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _complete = [[MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus alloc] init];
        _complete.enumValue = MSGraphImportedWindowsAutopilotDeviceIdentityImportStatusComplete;
    });
    return _complete;
}
+ (MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus*) error {
    static MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus *_error;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _error = [[MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus alloc] init];
        _error.enumValue = MSGraphImportedWindowsAutopilotDeviceIdentityImportStatusError;
    });
    return _error;
}

+ (MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus*) UnknownEnumValue {
    static MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus alloc] init];
        _unknownValue.enumValue = MSGraphImportedWindowsAutopilotDeviceIdentityImportStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus*) importedWindowsAutopilotDeviceIdentityImportStatusWithEnumValue:(MSGraphImportedWindowsAutopilotDeviceIdentityImportStatusValue)val {

    switch(val)
    {
        case MSGraphImportedWindowsAutopilotDeviceIdentityImportStatusUnknown:
            return [MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus unknown];
        case MSGraphImportedWindowsAutopilotDeviceIdentityImportStatusPending:
            return [MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus pending];
        case MSGraphImportedWindowsAutopilotDeviceIdentityImportStatusPartial:
            return [MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus partial];
        case MSGraphImportedWindowsAutopilotDeviceIdentityImportStatusComplete:
            return [MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus complete];
        case MSGraphImportedWindowsAutopilotDeviceIdentityImportStatusError:
            return [MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus error];
        case MSGraphImportedWindowsAutopilotDeviceIdentityImportStatusEndOfEnum:
        default:
            return [MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphImportedWindowsAutopilotDeviceIdentityImportStatusUnknown:
            return @"unknown";
        case MSGraphImportedWindowsAutopilotDeviceIdentityImportStatusPending:
            return @"pending";
        case MSGraphImportedWindowsAutopilotDeviceIdentityImportStatusPartial:
            return @"partial";
        case MSGraphImportedWindowsAutopilotDeviceIdentityImportStatusComplete:
            return @"complete";
        case MSGraphImportedWindowsAutopilotDeviceIdentityImportStatusError:
            return @"error";
        case MSGraphImportedWindowsAutopilotDeviceIdentityImportStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphImportedWindowsAutopilotDeviceIdentityImportStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus)

- (MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus*) toMSGraphImportedWindowsAutopilotDeviceIdentityImportStatus{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus unknown];
    }
    else if([self isEqualToString:@"pending"])
    {
          return [MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus pending];
    }
    else if([self isEqualToString:@"partial"])
    {
          return [MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus partial];
    }
    else if([self isEqualToString:@"complete"])
    {
          return [MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus complete];
    }
    else if([self isEqualToString:@"error"])
    {
          return [MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus error];
    }
    else {
        return [MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus UnknownEnumValue];
    }
}

@end
