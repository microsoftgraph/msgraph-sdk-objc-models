// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphOnlineMeetingProviderType.h"

@interface MSGraphOnlineMeetingProviderType () {
    MSGraphOnlineMeetingProviderTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphOnlineMeetingProviderTypeValue enumValue;
@end

@implementation MSGraphOnlineMeetingProviderType

+ (MSGraphOnlineMeetingProviderType*) unknown {
    static MSGraphOnlineMeetingProviderType *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphOnlineMeetingProviderType alloc] init];
        _unknown.enumValue = MSGraphOnlineMeetingProviderTypeUnknown;
    });
    return _unknown;
}
+ (MSGraphOnlineMeetingProviderType*) skypeForBusiness {
    static MSGraphOnlineMeetingProviderType *_skypeForBusiness;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _skypeForBusiness = [[MSGraphOnlineMeetingProviderType alloc] init];
        _skypeForBusiness.enumValue = MSGraphOnlineMeetingProviderTypeSkypeForBusiness;
    });
    return _skypeForBusiness;
}
+ (MSGraphOnlineMeetingProviderType*) skypeForConsumer {
    static MSGraphOnlineMeetingProviderType *_skypeForConsumer;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _skypeForConsumer = [[MSGraphOnlineMeetingProviderType alloc] init];
        _skypeForConsumer.enumValue = MSGraphOnlineMeetingProviderTypeSkypeForConsumer;
    });
    return _skypeForConsumer;
}
+ (MSGraphOnlineMeetingProviderType*) teamsForBusiness {
    static MSGraphOnlineMeetingProviderType *_teamsForBusiness;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _teamsForBusiness = [[MSGraphOnlineMeetingProviderType alloc] init];
        _teamsForBusiness.enumValue = MSGraphOnlineMeetingProviderTypeTeamsForBusiness;
    });
    return _teamsForBusiness;
}

+ (MSGraphOnlineMeetingProviderType*) UnknownEnumValue {
    static MSGraphOnlineMeetingProviderType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphOnlineMeetingProviderType alloc] init];
        _unknownValue.enumValue = MSGraphOnlineMeetingProviderTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphOnlineMeetingProviderType*) onlineMeetingProviderTypeWithEnumValue:(MSGraphOnlineMeetingProviderTypeValue)val {

    switch(val)
    {
        case MSGraphOnlineMeetingProviderTypeUnknown:
            return [MSGraphOnlineMeetingProviderType unknown];
        case MSGraphOnlineMeetingProviderTypeSkypeForBusiness:
            return [MSGraphOnlineMeetingProviderType skypeForBusiness];
        case MSGraphOnlineMeetingProviderTypeSkypeForConsumer:
            return [MSGraphOnlineMeetingProviderType skypeForConsumer];
        case MSGraphOnlineMeetingProviderTypeTeamsForBusiness:
            return [MSGraphOnlineMeetingProviderType teamsForBusiness];
        case MSGraphOnlineMeetingProviderTypeEndOfEnum:
        default:
            return [MSGraphOnlineMeetingProviderType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphOnlineMeetingProviderTypeUnknown:
            return @"unknown";
        case MSGraphOnlineMeetingProviderTypeSkypeForBusiness:
            return @"skypeForBusiness";
        case MSGraphOnlineMeetingProviderTypeSkypeForConsumer:
            return @"skypeForConsumer";
        case MSGraphOnlineMeetingProviderTypeTeamsForBusiness:
            return @"teamsForBusiness";
        case MSGraphOnlineMeetingProviderTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphOnlineMeetingProviderTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphOnlineMeetingProviderType)

- (MSGraphOnlineMeetingProviderType*) toMSGraphOnlineMeetingProviderType{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphOnlineMeetingProviderType unknown];
    }
    else if([self isEqualToString:@"skypeForBusiness"])
    {
          return [MSGraphOnlineMeetingProviderType skypeForBusiness];
    }
    else if([self isEqualToString:@"skypeForConsumer"])
    {
          return [MSGraphOnlineMeetingProviderType skypeForConsumer];
    }
    else if([self isEqualToString:@"teamsForBusiness"])
    {
          return [MSGraphOnlineMeetingProviderType teamsForBusiness];
    }
    else {
        return [MSGraphOnlineMeetingProviderType UnknownEnumValue];
    }
}

@end
