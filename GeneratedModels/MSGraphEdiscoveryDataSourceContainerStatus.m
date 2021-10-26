// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphEdiscoveryDataSourceContainerStatus.h"

@interface MSGraphEdiscoveryDataSourceContainerStatus () {
    MSGraphEdiscoveryDataSourceContainerStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphEdiscoveryDataSourceContainerStatusValue enumValue;
@end

@implementation MSGraphEdiscoveryDataSourceContainerStatus

+ (MSGraphEdiscoveryDataSourceContainerStatus*) active {
    static MSGraphEdiscoveryDataSourceContainerStatus *_active;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _active = [[MSGraphEdiscoveryDataSourceContainerStatus alloc] init];
        _active.enumValue = MSGraphEdiscoveryDataSourceContainerStatusActive;
    });
    return _active;
}
+ (MSGraphEdiscoveryDataSourceContainerStatus*) released {
    static MSGraphEdiscoveryDataSourceContainerStatus *_released;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _released = [[MSGraphEdiscoveryDataSourceContainerStatus alloc] init];
        _released.enumValue = MSGraphEdiscoveryDataSourceContainerStatusReleased;
    });
    return _released;
}
+ (MSGraphEdiscoveryDataSourceContainerStatus*) unknownFutureValue {
    static MSGraphEdiscoveryDataSourceContainerStatus *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphEdiscoveryDataSourceContainerStatus alloc] init];
        _unknownFutureValue.enumValue = MSGraphEdiscoveryDataSourceContainerStatusUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphEdiscoveryDataSourceContainerStatus*) UnknownEnumValue {
    static MSGraphEdiscoveryDataSourceContainerStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphEdiscoveryDataSourceContainerStatus alloc] init];
        _unknownValue.enumValue = MSGraphEdiscoveryDataSourceContainerStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphEdiscoveryDataSourceContainerStatus*) dataSourceContainerStatusWithEnumValue:(MSGraphEdiscoveryDataSourceContainerStatusValue)val {

    switch(val)
    {
        case MSGraphEdiscoveryDataSourceContainerStatusActive:
            return [MSGraphEdiscoveryDataSourceContainerStatus active];
        case MSGraphEdiscoveryDataSourceContainerStatusReleased:
            return [MSGraphEdiscoveryDataSourceContainerStatus released];
        case MSGraphEdiscoveryDataSourceContainerStatusUnknownFutureValue:
            return [MSGraphEdiscoveryDataSourceContainerStatus unknownFutureValue];
        case MSGraphEdiscoveryDataSourceContainerStatusEndOfEnum:
        default:
            return [MSGraphEdiscoveryDataSourceContainerStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphEdiscoveryDataSourceContainerStatusActive:
            return @"Active";
        case MSGraphEdiscoveryDataSourceContainerStatusReleased:
            return @"Released";
        case MSGraphEdiscoveryDataSourceContainerStatusUnknownFutureValue:
            return @"UnknownFutureValue";
        case MSGraphEdiscoveryDataSourceContainerStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphEdiscoveryDataSourceContainerStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphEdiscoveryDataSourceContainerStatus)

- (MSGraphEdiscoveryDataSourceContainerStatus*) toMSGraphEdiscoveryDataSourceContainerStatus{

    if([self isEqualToString:@"Active"])
    {
          return [MSGraphEdiscoveryDataSourceContainerStatus active];
    }
    else if([self isEqualToString:@"Released"])
    {
          return [MSGraphEdiscoveryDataSourceContainerStatus released];
    }
    else if([self isEqualToString:@"UnknownFutureValue"])
    {
          return [MSGraphEdiscoveryDataSourceContainerStatus unknownFutureValue];
    }
    else {
        return [MSGraphEdiscoveryDataSourceContainerStatus UnknownEnumValue];
    }
}

@end
