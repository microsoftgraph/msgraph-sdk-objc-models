// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphEdiscoveryCaseStatus.h"

@interface MSGraphEdiscoveryCaseStatus () {
    MSGraphEdiscoveryCaseStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphEdiscoveryCaseStatusValue enumValue;
@end

@implementation MSGraphEdiscoveryCaseStatus

+ (MSGraphEdiscoveryCaseStatus*) unknown {
    static MSGraphEdiscoveryCaseStatus *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphEdiscoveryCaseStatus alloc] init];
        _unknown.enumValue = MSGraphEdiscoveryCaseStatusUnknown;
    });
    return _unknown;
}
+ (MSGraphEdiscoveryCaseStatus*) active {
    static MSGraphEdiscoveryCaseStatus *_active;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _active = [[MSGraphEdiscoveryCaseStatus alloc] init];
        _active.enumValue = MSGraphEdiscoveryCaseStatusActive;
    });
    return _active;
}
+ (MSGraphEdiscoveryCaseStatus*) pendingDelete {
    static MSGraphEdiscoveryCaseStatus *_pendingDelete;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _pendingDelete = [[MSGraphEdiscoveryCaseStatus alloc] init];
        _pendingDelete.enumValue = MSGraphEdiscoveryCaseStatusPendingDelete;
    });
    return _pendingDelete;
}
+ (MSGraphEdiscoveryCaseStatus*) closing {
    static MSGraphEdiscoveryCaseStatus *_closing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _closing = [[MSGraphEdiscoveryCaseStatus alloc] init];
        _closing.enumValue = MSGraphEdiscoveryCaseStatusClosing;
    });
    return _closing;
}
+ (MSGraphEdiscoveryCaseStatus*) closed {
    static MSGraphEdiscoveryCaseStatus *_closed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _closed = [[MSGraphEdiscoveryCaseStatus alloc] init];
        _closed.enumValue = MSGraphEdiscoveryCaseStatusClosed;
    });
    return _closed;
}
+ (MSGraphEdiscoveryCaseStatus*) closedWithError {
    static MSGraphEdiscoveryCaseStatus *_closedWithError;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _closedWithError = [[MSGraphEdiscoveryCaseStatus alloc] init];
        _closedWithError.enumValue = MSGraphEdiscoveryCaseStatusClosedWithError;
    });
    return _closedWithError;
}

+ (MSGraphEdiscoveryCaseStatus*) UnknownEnumValue {
    static MSGraphEdiscoveryCaseStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphEdiscoveryCaseStatus alloc] init];
        _unknownValue.enumValue = MSGraphEdiscoveryCaseStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphEdiscoveryCaseStatus*) caseStatusWithEnumValue:(MSGraphEdiscoveryCaseStatusValue)val {

    switch(val)
    {
        case MSGraphEdiscoveryCaseStatusUnknown:
            return [MSGraphEdiscoveryCaseStatus unknown];
        case MSGraphEdiscoveryCaseStatusActive:
            return [MSGraphEdiscoveryCaseStatus active];
        case MSGraphEdiscoveryCaseStatusPendingDelete:
            return [MSGraphEdiscoveryCaseStatus pendingDelete];
        case MSGraphEdiscoveryCaseStatusClosing:
            return [MSGraphEdiscoveryCaseStatus closing];
        case MSGraphEdiscoveryCaseStatusClosed:
            return [MSGraphEdiscoveryCaseStatus closed];
        case MSGraphEdiscoveryCaseStatusClosedWithError:
            return [MSGraphEdiscoveryCaseStatus closedWithError];
        case MSGraphEdiscoveryCaseStatusEndOfEnum:
        default:
            return [MSGraphEdiscoveryCaseStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphEdiscoveryCaseStatusUnknown:
            return @"unknown";
        case MSGraphEdiscoveryCaseStatusActive:
            return @"active";
        case MSGraphEdiscoveryCaseStatusPendingDelete:
            return @"pendingDelete";
        case MSGraphEdiscoveryCaseStatusClosing:
            return @"closing";
        case MSGraphEdiscoveryCaseStatusClosed:
            return @"closed";
        case MSGraphEdiscoveryCaseStatusClosedWithError:
            return @"closedWithError";
        case MSGraphEdiscoveryCaseStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphEdiscoveryCaseStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphEdiscoveryCaseStatus)

- (MSGraphEdiscoveryCaseStatus*) toMSGraphEdiscoveryCaseStatus{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphEdiscoveryCaseStatus unknown];
    }
    else if([self isEqualToString:@"active"])
    {
          return [MSGraphEdiscoveryCaseStatus active];
    }
    else if([self isEqualToString:@"pendingDelete"])
    {
          return [MSGraphEdiscoveryCaseStatus pendingDelete];
    }
    else if([self isEqualToString:@"closing"])
    {
          return [MSGraphEdiscoveryCaseStatus closing];
    }
    else if([self isEqualToString:@"closed"])
    {
          return [MSGraphEdiscoveryCaseStatus closed];
    }
    else if([self isEqualToString:@"closedWithError"])
    {
          return [MSGraphEdiscoveryCaseStatus closedWithError];
    }
    else {
        return [MSGraphEdiscoveryCaseStatus UnknownEnumValue];
    }
}

@end
