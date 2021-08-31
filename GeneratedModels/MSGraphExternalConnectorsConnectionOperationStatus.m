// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphExternalConnectorsConnectionOperationStatus.h"

@interface MSGraphExternalConnectorsConnectionOperationStatus () {
    MSGraphExternalConnectorsConnectionOperationStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphExternalConnectorsConnectionOperationStatusValue enumValue;
@end

@implementation MSGraphExternalConnectorsConnectionOperationStatus

+ (MSGraphExternalConnectorsConnectionOperationStatus*) unspecified {
    static MSGraphExternalConnectorsConnectionOperationStatus *_unspecified;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unspecified = [[MSGraphExternalConnectorsConnectionOperationStatus alloc] init];
        _unspecified.enumValue = MSGraphExternalConnectorsConnectionOperationStatusUnspecified;
    });
    return _unspecified;
}
+ (MSGraphExternalConnectorsConnectionOperationStatus*) inprogress {
    static MSGraphExternalConnectorsConnectionOperationStatus *_inprogress;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inprogress = [[MSGraphExternalConnectorsConnectionOperationStatus alloc] init];
        _inprogress.enumValue = MSGraphExternalConnectorsConnectionOperationStatusInprogress;
    });
    return _inprogress;
}
+ (MSGraphExternalConnectorsConnectionOperationStatus*) completed {
    static MSGraphExternalConnectorsConnectionOperationStatus *_completed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _completed = [[MSGraphExternalConnectorsConnectionOperationStatus alloc] init];
        _completed.enumValue = MSGraphExternalConnectorsConnectionOperationStatusCompleted;
    });
    return _completed;
}
+ (MSGraphExternalConnectorsConnectionOperationStatus*) failed {
    static MSGraphExternalConnectorsConnectionOperationStatus *_failed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _failed = [[MSGraphExternalConnectorsConnectionOperationStatus alloc] init];
        _failed.enumValue = MSGraphExternalConnectorsConnectionOperationStatusFailed;
    });
    return _failed;
}
+ (MSGraphExternalConnectorsConnectionOperationStatus*) unknownFutureValue {
    static MSGraphExternalConnectorsConnectionOperationStatus *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphExternalConnectorsConnectionOperationStatus alloc] init];
        _unknownFutureValue.enumValue = MSGraphExternalConnectorsConnectionOperationStatusUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphExternalConnectorsConnectionOperationStatus*) UnknownEnumValue {
    static MSGraphExternalConnectorsConnectionOperationStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphExternalConnectorsConnectionOperationStatus alloc] init];
        _unknownValue.enumValue = MSGraphExternalConnectorsConnectionOperationStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphExternalConnectorsConnectionOperationStatus*) connectionOperationStatusWithEnumValue:(MSGraphExternalConnectorsConnectionOperationStatusValue)val {

    switch(val)
    {
        case MSGraphExternalConnectorsConnectionOperationStatusUnspecified:
            return [MSGraphExternalConnectorsConnectionOperationStatus unspecified];
        case MSGraphExternalConnectorsConnectionOperationStatusInprogress:
            return [MSGraphExternalConnectorsConnectionOperationStatus inprogress];
        case MSGraphExternalConnectorsConnectionOperationStatusCompleted:
            return [MSGraphExternalConnectorsConnectionOperationStatus completed];
        case MSGraphExternalConnectorsConnectionOperationStatusFailed:
            return [MSGraphExternalConnectorsConnectionOperationStatus failed];
        case MSGraphExternalConnectorsConnectionOperationStatusUnknownFutureValue:
            return [MSGraphExternalConnectorsConnectionOperationStatus unknownFutureValue];
        case MSGraphExternalConnectorsConnectionOperationStatusEndOfEnum:
        default:
            return [MSGraphExternalConnectorsConnectionOperationStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphExternalConnectorsConnectionOperationStatusUnspecified:
            return @"unspecified";
        case MSGraphExternalConnectorsConnectionOperationStatusInprogress:
            return @"inprogress";
        case MSGraphExternalConnectorsConnectionOperationStatusCompleted:
            return @"completed";
        case MSGraphExternalConnectorsConnectionOperationStatusFailed:
            return @"failed";
        case MSGraphExternalConnectorsConnectionOperationStatusUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphExternalConnectorsConnectionOperationStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphExternalConnectorsConnectionOperationStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphExternalConnectorsConnectionOperationStatus)

- (MSGraphExternalConnectorsConnectionOperationStatus*) toMSGraphExternalConnectorsConnectionOperationStatus{

    if([self isEqualToString:@"unspecified"])
    {
          return [MSGraphExternalConnectorsConnectionOperationStatus unspecified];
    }
    else if([self isEqualToString:@"inprogress"])
    {
          return [MSGraphExternalConnectorsConnectionOperationStatus inprogress];
    }
    else if([self isEqualToString:@"completed"])
    {
          return [MSGraphExternalConnectorsConnectionOperationStatus completed];
    }
    else if([self isEqualToString:@"failed"])
    {
          return [MSGraphExternalConnectorsConnectionOperationStatus failed];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphExternalConnectorsConnectionOperationStatus unknownFutureValue];
    }
    else {
        return [MSGraphExternalConnectorsConnectionOperationStatus UnknownEnumValue];
    }
}

@end
