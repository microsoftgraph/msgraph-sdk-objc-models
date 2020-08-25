// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphConditionalAccessGrantControl.h"

@interface MSGraphConditionalAccessGrantControl () {
    MSGraphConditionalAccessGrantControlValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphConditionalAccessGrantControlValue enumValue;
@end

@implementation MSGraphConditionalAccessGrantControl

+ (MSGraphConditionalAccessGrantControl*) block {
    static MSGraphConditionalAccessGrantControl *_block;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _block = [[MSGraphConditionalAccessGrantControl alloc] init];
        _block.enumValue = MSGraphConditionalAccessGrantControlBlock;
    });
    return _block;
}
+ (MSGraphConditionalAccessGrantControl*) mfa {
    static MSGraphConditionalAccessGrantControl *_mfa;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mfa = [[MSGraphConditionalAccessGrantControl alloc] init];
        _mfa.enumValue = MSGraphConditionalAccessGrantControlMfa;
    });
    return _mfa;
}
+ (MSGraphConditionalAccessGrantControl*) compliantDevice {
    static MSGraphConditionalAccessGrantControl *_compliantDevice;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _compliantDevice = [[MSGraphConditionalAccessGrantControl alloc] init];
        _compliantDevice.enumValue = MSGraphConditionalAccessGrantControlCompliantDevice;
    });
    return _compliantDevice;
}
+ (MSGraphConditionalAccessGrantControl*) domainJoinedDevice {
    static MSGraphConditionalAccessGrantControl *_domainJoinedDevice;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _domainJoinedDevice = [[MSGraphConditionalAccessGrantControl alloc] init];
        _domainJoinedDevice.enumValue = MSGraphConditionalAccessGrantControlDomainJoinedDevice;
    });
    return _domainJoinedDevice;
}
+ (MSGraphConditionalAccessGrantControl*) approvedApplication {
    static MSGraphConditionalAccessGrantControl *_approvedApplication;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _approvedApplication = [[MSGraphConditionalAccessGrantControl alloc] init];
        _approvedApplication.enumValue = MSGraphConditionalAccessGrantControlApprovedApplication;
    });
    return _approvedApplication;
}
+ (MSGraphConditionalAccessGrantControl*) compliantApplication {
    static MSGraphConditionalAccessGrantControl *_compliantApplication;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _compliantApplication = [[MSGraphConditionalAccessGrantControl alloc] init];
        _compliantApplication.enumValue = MSGraphConditionalAccessGrantControlCompliantApplication;
    });
    return _compliantApplication;
}
+ (MSGraphConditionalAccessGrantControl*) unknownFutureValue {
    static MSGraphConditionalAccessGrantControl *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphConditionalAccessGrantControl alloc] init];
        _unknownFutureValue.enumValue = MSGraphConditionalAccessGrantControlUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphConditionalAccessGrantControl*) UnknownEnumValue {
    static MSGraphConditionalAccessGrantControl *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphConditionalAccessGrantControl alloc] init];
        _unknownValue.enumValue = MSGraphConditionalAccessGrantControlEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphConditionalAccessGrantControl*) conditionalAccessGrantControlWithEnumValue:(MSGraphConditionalAccessGrantControlValue)val {

    switch(val)
    {
        case MSGraphConditionalAccessGrantControlBlock:
            return [MSGraphConditionalAccessGrantControl block];
        case MSGraphConditionalAccessGrantControlMfa:
            return [MSGraphConditionalAccessGrantControl mfa];
        case MSGraphConditionalAccessGrantControlCompliantDevice:
            return [MSGraphConditionalAccessGrantControl compliantDevice];
        case MSGraphConditionalAccessGrantControlDomainJoinedDevice:
            return [MSGraphConditionalAccessGrantControl domainJoinedDevice];
        case MSGraphConditionalAccessGrantControlApprovedApplication:
            return [MSGraphConditionalAccessGrantControl approvedApplication];
        case MSGraphConditionalAccessGrantControlCompliantApplication:
            return [MSGraphConditionalAccessGrantControl compliantApplication];
        case MSGraphConditionalAccessGrantControlUnknownFutureValue:
            return [MSGraphConditionalAccessGrantControl unknownFutureValue];
        case MSGraphConditionalAccessGrantControlEndOfEnum:
        default:
            return [MSGraphConditionalAccessGrantControl UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphConditionalAccessGrantControlBlock:
            return @"block";
        case MSGraphConditionalAccessGrantControlMfa:
            return @"mfa";
        case MSGraphConditionalAccessGrantControlCompliantDevice:
            return @"compliantDevice";
        case MSGraphConditionalAccessGrantControlDomainJoinedDevice:
            return @"domainJoinedDevice";
        case MSGraphConditionalAccessGrantControlApprovedApplication:
            return @"approvedApplication";
        case MSGraphConditionalAccessGrantControlCompliantApplication:
            return @"compliantApplication";
        case MSGraphConditionalAccessGrantControlUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphConditionalAccessGrantControlEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphConditionalAccessGrantControlValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphConditionalAccessGrantControl)

- (MSGraphConditionalAccessGrantControl*) toMSGraphConditionalAccessGrantControl{

    if([self isEqualToString:@"block"])
    {
          return [MSGraphConditionalAccessGrantControl block];
    }
    else if([self isEqualToString:@"mfa"])
    {
          return [MSGraphConditionalAccessGrantControl mfa];
    }
    else if([self isEqualToString:@"compliantDevice"])
    {
          return [MSGraphConditionalAccessGrantControl compliantDevice];
    }
    else if([self isEqualToString:@"domainJoinedDevice"])
    {
          return [MSGraphConditionalAccessGrantControl domainJoinedDevice];
    }
    else if([self isEqualToString:@"approvedApplication"])
    {
          return [MSGraphConditionalAccessGrantControl approvedApplication];
    }
    else if([self isEqualToString:@"compliantApplication"])
    {
          return [MSGraphConditionalAccessGrantControl compliantApplication];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphConditionalAccessGrantControl unknownFutureValue];
    }
    else {
        return [MSGraphConditionalAccessGrantControl UnknownEnumValue];
    }
}

@end
