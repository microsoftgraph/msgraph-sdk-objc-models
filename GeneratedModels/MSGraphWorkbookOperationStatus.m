// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWorkbookOperationStatus.h"

@interface MSGraphWorkbookOperationStatus () {
    MSGraphWorkbookOperationStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphWorkbookOperationStatusValue enumValue;
@end

@implementation MSGraphWorkbookOperationStatus

+ (MSGraphWorkbookOperationStatus*) notStarted {
    static MSGraphWorkbookOperationStatus *_notStarted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notStarted = [[MSGraphWorkbookOperationStatus alloc] init];
        _notStarted.enumValue = MSGraphWorkbookOperationStatusNotStarted;
    });
    return _notStarted;
}
+ (MSGraphWorkbookOperationStatus*) running {
    static MSGraphWorkbookOperationStatus *_running;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _running = [[MSGraphWorkbookOperationStatus alloc] init];
        _running.enumValue = MSGraphWorkbookOperationStatusRunning;
    });
    return _running;
}
+ (MSGraphWorkbookOperationStatus*) succeeded {
    static MSGraphWorkbookOperationStatus *_succeeded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _succeeded = [[MSGraphWorkbookOperationStatus alloc] init];
        _succeeded.enumValue = MSGraphWorkbookOperationStatusSucceeded;
    });
    return _succeeded;
}
+ (MSGraphWorkbookOperationStatus*) failed {
    static MSGraphWorkbookOperationStatus *_failed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _failed = [[MSGraphWorkbookOperationStatus alloc] init];
        _failed.enumValue = MSGraphWorkbookOperationStatusFailed;
    });
    return _failed;
}

+ (MSGraphWorkbookOperationStatus*) UnknownEnumValue {
    static MSGraphWorkbookOperationStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphWorkbookOperationStatus alloc] init];
        _unknownValue.enumValue = MSGraphWorkbookOperationStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphWorkbookOperationStatus*) workbookOperationStatusWithEnumValue:(MSGraphWorkbookOperationStatusValue)val {

    switch(val)
    {
        case MSGraphWorkbookOperationStatusNotStarted:
            return [MSGraphWorkbookOperationStatus notStarted];
        case MSGraphWorkbookOperationStatusRunning:
            return [MSGraphWorkbookOperationStatus running];
        case MSGraphWorkbookOperationStatusSucceeded:
            return [MSGraphWorkbookOperationStatus succeeded];
        case MSGraphWorkbookOperationStatusFailed:
            return [MSGraphWorkbookOperationStatus failed];
        case MSGraphWorkbookOperationStatusEndOfEnum:
        default:
            return [MSGraphWorkbookOperationStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphWorkbookOperationStatusNotStarted:
            return @"notStarted";
        case MSGraphWorkbookOperationStatusRunning:
            return @"running";
        case MSGraphWorkbookOperationStatusSucceeded:
            return @"succeeded";
        case MSGraphWorkbookOperationStatusFailed:
            return @"failed";
        case MSGraphWorkbookOperationStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphWorkbookOperationStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphWorkbookOperationStatus)

- (MSGraphWorkbookOperationStatus*) toMSGraphWorkbookOperationStatus{

    if([self isEqualToString:@"notStarted"])
    {
          return [MSGraphWorkbookOperationStatus notStarted];
    }
    else if([self isEqualToString:@"running"])
    {
          return [MSGraphWorkbookOperationStatus running];
    }
    else if([self isEqualToString:@"succeeded"])
    {
          return [MSGraphWorkbookOperationStatus succeeded];
    }
    else if([self isEqualToString:@"failed"])
    {
          return [MSGraphWorkbookOperationStatus failed];
    }
    else {
        return [MSGraphWorkbookOperationStatus UnknownEnumValue];
    }
}

@end
