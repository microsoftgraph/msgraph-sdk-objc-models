// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWindowsAutopilotDeviceDeletionState.h"

@interface MSGraphWindowsAutopilotDeviceDeletionState () {
    MSGraphWindowsAutopilotDeviceDeletionStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphWindowsAutopilotDeviceDeletionStateValue enumValue;
@end

@implementation MSGraphWindowsAutopilotDeviceDeletionState

+ (MSGraphWindowsAutopilotDeviceDeletionState*) unknown {
    static MSGraphWindowsAutopilotDeviceDeletionState *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphWindowsAutopilotDeviceDeletionState alloc] init];
        _unknown.enumValue = MSGraphWindowsAutopilotDeviceDeletionStateUnknown;
    });
    return _unknown;
}
+ (MSGraphWindowsAutopilotDeviceDeletionState*) failed {
    static MSGraphWindowsAutopilotDeviceDeletionState *_failed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _failed = [[MSGraphWindowsAutopilotDeviceDeletionState alloc] init];
        _failed.enumValue = MSGraphWindowsAutopilotDeviceDeletionStateFailed;
    });
    return _failed;
}
+ (MSGraphWindowsAutopilotDeviceDeletionState*) accepted {
    static MSGraphWindowsAutopilotDeviceDeletionState *_accepted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _accepted = [[MSGraphWindowsAutopilotDeviceDeletionState alloc] init];
        _accepted.enumValue = MSGraphWindowsAutopilotDeviceDeletionStateAccepted;
    });
    return _accepted;
}
+ (MSGraphWindowsAutopilotDeviceDeletionState*) error {
    static MSGraphWindowsAutopilotDeviceDeletionState *_error;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _error = [[MSGraphWindowsAutopilotDeviceDeletionState alloc] init];
        _error.enumValue = MSGraphWindowsAutopilotDeviceDeletionStateError;
    });
    return _error;
}

+ (MSGraphWindowsAutopilotDeviceDeletionState*) UnknownEnumValue {
    static MSGraphWindowsAutopilotDeviceDeletionState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphWindowsAutopilotDeviceDeletionState alloc] init];
        _unknownValue.enumValue = MSGraphWindowsAutopilotDeviceDeletionStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphWindowsAutopilotDeviceDeletionState*) windowsAutopilotDeviceDeletionStateWithEnumValue:(MSGraphWindowsAutopilotDeviceDeletionStateValue)val {

    switch(val)
    {
        case MSGraphWindowsAutopilotDeviceDeletionStateUnknown:
            return [MSGraphWindowsAutopilotDeviceDeletionState unknown];
        case MSGraphWindowsAutopilotDeviceDeletionStateFailed:
            return [MSGraphWindowsAutopilotDeviceDeletionState failed];
        case MSGraphWindowsAutopilotDeviceDeletionStateAccepted:
            return [MSGraphWindowsAutopilotDeviceDeletionState accepted];
        case MSGraphWindowsAutopilotDeviceDeletionStateError:
            return [MSGraphWindowsAutopilotDeviceDeletionState error];
        case MSGraphWindowsAutopilotDeviceDeletionStateEndOfEnum:
        default:
            return [MSGraphWindowsAutopilotDeviceDeletionState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphWindowsAutopilotDeviceDeletionStateUnknown:
            return @"unknown";
        case MSGraphWindowsAutopilotDeviceDeletionStateFailed:
            return @"failed";
        case MSGraphWindowsAutopilotDeviceDeletionStateAccepted:
            return @"accepted";
        case MSGraphWindowsAutopilotDeviceDeletionStateError:
            return @"error";
        case MSGraphWindowsAutopilotDeviceDeletionStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphWindowsAutopilotDeviceDeletionStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphWindowsAutopilotDeviceDeletionState)

- (MSGraphWindowsAutopilotDeviceDeletionState*) toMSGraphWindowsAutopilotDeviceDeletionState{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphWindowsAutopilotDeviceDeletionState unknown];
    }
    else if([self isEqualToString:@"failed"])
    {
          return [MSGraphWindowsAutopilotDeviceDeletionState failed];
    }
    else if([self isEqualToString:@"accepted"])
    {
          return [MSGraphWindowsAutopilotDeviceDeletionState accepted];
    }
    else if([self isEqualToString:@"error"])
    {
          return [MSGraphWindowsAutopilotDeviceDeletionState error];
    }
    else {
        return [MSGraphWindowsAutopilotDeviceDeletionState UnknownEnumValue];
    }
}

@end
