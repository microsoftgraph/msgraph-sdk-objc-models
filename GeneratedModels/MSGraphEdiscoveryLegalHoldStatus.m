// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphEdiscoveryLegalHoldStatus.h"

@interface MSGraphEdiscoveryLegalHoldStatus () {
    MSGraphEdiscoveryLegalHoldStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphEdiscoveryLegalHoldStatusValue enumValue;
@end

@implementation MSGraphEdiscoveryLegalHoldStatus

+ (MSGraphEdiscoveryLegalHoldStatus*) pending {
    static MSGraphEdiscoveryLegalHoldStatus *_pending;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _pending = [[MSGraphEdiscoveryLegalHoldStatus alloc] init];
        _pending.enumValue = MSGraphEdiscoveryLegalHoldStatusPending;
    });
    return _pending;
}
+ (MSGraphEdiscoveryLegalHoldStatus*) error {
    static MSGraphEdiscoveryLegalHoldStatus *_error;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _error = [[MSGraphEdiscoveryLegalHoldStatus alloc] init];
        _error.enumValue = MSGraphEdiscoveryLegalHoldStatusError;
    });
    return _error;
}
+ (MSGraphEdiscoveryLegalHoldStatus*) success {
    static MSGraphEdiscoveryLegalHoldStatus *_success;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _success = [[MSGraphEdiscoveryLegalHoldStatus alloc] init];
        _success.enumValue = MSGraphEdiscoveryLegalHoldStatusSuccess;
    });
    return _success;
}
+ (MSGraphEdiscoveryLegalHoldStatus*) unknownFutureValue {
    static MSGraphEdiscoveryLegalHoldStatus *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphEdiscoveryLegalHoldStatus alloc] init];
        _unknownFutureValue.enumValue = MSGraphEdiscoveryLegalHoldStatusUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphEdiscoveryLegalHoldStatus*) UnknownEnumValue {
    static MSGraphEdiscoveryLegalHoldStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphEdiscoveryLegalHoldStatus alloc] init];
        _unknownValue.enumValue = MSGraphEdiscoveryLegalHoldStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphEdiscoveryLegalHoldStatus*) legalHoldStatusWithEnumValue:(MSGraphEdiscoveryLegalHoldStatusValue)val {

    switch(val)
    {
        case MSGraphEdiscoveryLegalHoldStatusPending:
            return [MSGraphEdiscoveryLegalHoldStatus pending];
        case MSGraphEdiscoveryLegalHoldStatusError:
            return [MSGraphEdiscoveryLegalHoldStatus error];
        case MSGraphEdiscoveryLegalHoldStatusSuccess:
            return [MSGraphEdiscoveryLegalHoldStatus success];
        case MSGraphEdiscoveryLegalHoldStatusUnknownFutureValue:
            return [MSGraphEdiscoveryLegalHoldStatus unknownFutureValue];
        case MSGraphEdiscoveryLegalHoldStatusEndOfEnum:
        default:
            return [MSGraphEdiscoveryLegalHoldStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphEdiscoveryLegalHoldStatusPending:
            return @"Pending";
        case MSGraphEdiscoveryLegalHoldStatusError:
            return @"Error";
        case MSGraphEdiscoveryLegalHoldStatusSuccess:
            return @"Success";
        case MSGraphEdiscoveryLegalHoldStatusUnknownFutureValue:
            return @"UnknownFutureValue";
        case MSGraphEdiscoveryLegalHoldStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphEdiscoveryLegalHoldStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphEdiscoveryLegalHoldStatus)

- (MSGraphEdiscoveryLegalHoldStatus*) toMSGraphEdiscoveryLegalHoldStatus{

    if([self isEqualToString:@"Pending"])
    {
          return [MSGraphEdiscoveryLegalHoldStatus pending];
    }
    else if([self isEqualToString:@"Error"])
    {
          return [MSGraphEdiscoveryLegalHoldStatus error];
    }
    else if([self isEqualToString:@"Success"])
    {
          return [MSGraphEdiscoveryLegalHoldStatus success];
    }
    else if([self isEqualToString:@"UnknownFutureValue"])
    {
          return [MSGraphEdiscoveryLegalHoldStatus unknownFutureValue];
    }
    else {
        return [MSGraphEdiscoveryLegalHoldStatus UnknownEnumValue];
    }
}

@end
