// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus.h"

@interface MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus () {
    MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatusValue enumValue;
@end

@implementation MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus

+ (MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus*) noUpload {
    static MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus *_noUpload;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _noUpload = [[MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus alloc] init];
        _noUpload.enumValue = MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatusNoUpload;
    });
    return _noUpload;
}
+ (MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus*) pending {
    static MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus *_pending;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _pending = [[MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus alloc] init];
        _pending.enumValue = MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatusPending;
    });
    return _pending;
}
+ (MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus*) complete {
    static MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus *_complete;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _complete = [[MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus alloc] init];
        _complete.enumValue = MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatusComplete;
    });
    return _complete;
}
+ (MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus*) error {
    static MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus *_error;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _error = [[MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus alloc] init];
        _error.enumValue = MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatusError;
    });
    return _error;
}

+ (MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus*) UnknownEnumValue {
    static MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus alloc] init];
        _unknownValue.enumValue = MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus*) importedWindowsAutopilotDeviceIdentityUploadStatusWithEnumValue:(MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatusValue)val {

    switch(val)
    {
        case MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatusNoUpload:
            return [MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus noUpload];
        case MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatusPending:
            return [MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus pending];
        case MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatusComplete:
            return [MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus complete];
        case MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatusError:
            return [MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus error];
        case MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatusEndOfEnum:
        default:
            return [MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatusNoUpload:
            return @"noUpload";
        case MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatusPending:
            return @"pending";
        case MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatusComplete:
            return @"complete";
        case MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatusError:
            return @"error";
        case MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus)

- (MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus*) toMSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus{

    if([self isEqualToString:@"noUpload"])
    {
          return [MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus noUpload];
    }
    else if([self isEqualToString:@"pending"])
    {
          return [MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus pending];
    }
    else if([self isEqualToString:@"complete"])
    {
          return [MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus complete];
    }
    else if([self isEqualToString:@"error"])
    {
          return [MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus error];
    }
    else {
        return [MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus UnknownEnumValue];
    }
}

@end
