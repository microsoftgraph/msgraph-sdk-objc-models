// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWorkforceIntegrationSupportedEntities.h"

@interface MSGraphWorkforceIntegrationSupportedEntities () {
    MSGraphWorkforceIntegrationSupportedEntitiesValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphWorkforceIntegrationSupportedEntitiesValue enumValue;
@end

@implementation MSGraphWorkforceIntegrationSupportedEntities

+ (MSGraphWorkforceIntegrationSupportedEntities*) none {
    static MSGraphWorkforceIntegrationSupportedEntities *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphWorkforceIntegrationSupportedEntities alloc] init];
        _none.enumValue = MSGraphWorkforceIntegrationSupportedEntitiesNone;
    });
    return _none;
}
+ (MSGraphWorkforceIntegrationSupportedEntities*) shift {
    static MSGraphWorkforceIntegrationSupportedEntities *_shift;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _shift = [[MSGraphWorkforceIntegrationSupportedEntities alloc] init];
        _shift.enumValue = MSGraphWorkforceIntegrationSupportedEntitiesShift;
    });
    return _shift;
}
+ (MSGraphWorkforceIntegrationSupportedEntities*) swapRequest {
    static MSGraphWorkforceIntegrationSupportedEntities *_swapRequest;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _swapRequest = [[MSGraphWorkforceIntegrationSupportedEntities alloc] init];
        _swapRequest.enumValue = MSGraphWorkforceIntegrationSupportedEntitiesSwapRequest;
    });
    return _swapRequest;
}
+ (MSGraphWorkforceIntegrationSupportedEntities*) userShiftPreferences {
    static MSGraphWorkforceIntegrationSupportedEntities *_userShiftPreferences;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userShiftPreferences = [[MSGraphWorkforceIntegrationSupportedEntities alloc] init];
        _userShiftPreferences.enumValue = MSGraphWorkforceIntegrationSupportedEntitiesUserShiftPreferences;
    });
    return _userShiftPreferences;
}
+ (MSGraphWorkforceIntegrationSupportedEntities*) openShift {
    static MSGraphWorkforceIntegrationSupportedEntities *_openShift;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _openShift = [[MSGraphWorkforceIntegrationSupportedEntities alloc] init];
        _openShift.enumValue = MSGraphWorkforceIntegrationSupportedEntitiesOpenShift;
    });
    return _openShift;
}
+ (MSGraphWorkforceIntegrationSupportedEntities*) openShiftRequest {
    static MSGraphWorkforceIntegrationSupportedEntities *_openShiftRequest;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _openShiftRequest = [[MSGraphWorkforceIntegrationSupportedEntities alloc] init];
        _openShiftRequest.enumValue = MSGraphWorkforceIntegrationSupportedEntitiesOpenShiftRequest;
    });
    return _openShiftRequest;
}
+ (MSGraphWorkforceIntegrationSupportedEntities*) offerShiftRequest {
    static MSGraphWorkforceIntegrationSupportedEntities *_offerShiftRequest;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _offerShiftRequest = [[MSGraphWorkforceIntegrationSupportedEntities alloc] init];
        _offerShiftRequest.enumValue = MSGraphWorkforceIntegrationSupportedEntitiesOfferShiftRequest;
    });
    return _offerShiftRequest;
}
+ (MSGraphWorkforceIntegrationSupportedEntities*) unknownFutureValue {
    static MSGraphWorkforceIntegrationSupportedEntities *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphWorkforceIntegrationSupportedEntities alloc] init];
        _unknownFutureValue.enumValue = MSGraphWorkforceIntegrationSupportedEntitiesUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphWorkforceIntegrationSupportedEntities*) UnknownEnumValue {
    static MSGraphWorkforceIntegrationSupportedEntities *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphWorkforceIntegrationSupportedEntities alloc] init];
        _unknownValue.enumValue = MSGraphWorkforceIntegrationSupportedEntitiesEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphWorkforceIntegrationSupportedEntities*) workforceIntegrationSupportedEntitiesWithEnumValue:(MSGraphWorkforceIntegrationSupportedEntitiesValue)val {

    switch(val)
    {
        case MSGraphWorkforceIntegrationSupportedEntitiesNone:
            return [MSGraphWorkforceIntegrationSupportedEntities none];
        case MSGraphWorkforceIntegrationSupportedEntitiesShift:
            return [MSGraphWorkforceIntegrationSupportedEntities shift];
        case MSGraphWorkforceIntegrationSupportedEntitiesSwapRequest:
            return [MSGraphWorkforceIntegrationSupportedEntities swapRequest];
        case MSGraphWorkforceIntegrationSupportedEntitiesUserShiftPreferences:
            return [MSGraphWorkforceIntegrationSupportedEntities userShiftPreferences];
        case MSGraphWorkforceIntegrationSupportedEntitiesOpenShift:
            return [MSGraphWorkforceIntegrationSupportedEntities openShift];
        case MSGraphWorkforceIntegrationSupportedEntitiesOpenShiftRequest:
            return [MSGraphWorkforceIntegrationSupportedEntities openShiftRequest];
        case MSGraphWorkforceIntegrationSupportedEntitiesOfferShiftRequest:
            return [MSGraphWorkforceIntegrationSupportedEntities offerShiftRequest];
        case MSGraphWorkforceIntegrationSupportedEntitiesUnknownFutureValue:
            return [MSGraphWorkforceIntegrationSupportedEntities unknownFutureValue];
        case MSGraphWorkforceIntegrationSupportedEntitiesEndOfEnum:
        default:
            return [MSGraphWorkforceIntegrationSupportedEntities UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphWorkforceIntegrationSupportedEntitiesNone:
            return @"none";
        case MSGraphWorkforceIntegrationSupportedEntitiesShift:
            return @"shift";
        case MSGraphWorkforceIntegrationSupportedEntitiesSwapRequest:
            return @"swapRequest";
        case MSGraphWorkforceIntegrationSupportedEntitiesUserShiftPreferences:
            return @"userShiftPreferences";
        case MSGraphWorkforceIntegrationSupportedEntitiesOpenShift:
            return @"openShift";
        case MSGraphWorkforceIntegrationSupportedEntitiesOpenShiftRequest:
            return @"openShiftRequest";
        case MSGraphWorkforceIntegrationSupportedEntitiesOfferShiftRequest:
            return @"offerShiftRequest";
        case MSGraphWorkforceIntegrationSupportedEntitiesUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphWorkforceIntegrationSupportedEntitiesEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphWorkforceIntegrationSupportedEntitiesValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphWorkforceIntegrationSupportedEntities)

- (MSGraphWorkforceIntegrationSupportedEntities*) toMSGraphWorkforceIntegrationSupportedEntities{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphWorkforceIntegrationSupportedEntities none];
    }
    else if([self isEqualToString:@"shift"])
    {
          return [MSGraphWorkforceIntegrationSupportedEntities shift];
    }
    else if([self isEqualToString:@"swapRequest"])
    {
          return [MSGraphWorkforceIntegrationSupportedEntities swapRequest];
    }
    else if([self isEqualToString:@"userShiftPreferences"])
    {
          return [MSGraphWorkforceIntegrationSupportedEntities userShiftPreferences];
    }
    else if([self isEqualToString:@"openShift"])
    {
          return [MSGraphWorkforceIntegrationSupportedEntities openShift];
    }
    else if([self isEqualToString:@"openShiftRequest"])
    {
          return [MSGraphWorkforceIntegrationSupportedEntities openShiftRequest];
    }
    else if([self isEqualToString:@"offerShiftRequest"])
    {
          return [MSGraphWorkforceIntegrationSupportedEntities offerShiftRequest];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphWorkforceIntegrationSupportedEntities unknownFutureValue];
    }
    else {
        return [MSGraphWorkforceIntegrationSupportedEntities UnknownEnumValue];
    }
}

@end
