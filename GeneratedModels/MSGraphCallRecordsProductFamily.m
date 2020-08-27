// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphCallRecordsProductFamily.h"

@interface MSGraphCallRecordsProductFamily () {
    MSGraphCallRecordsProductFamilyValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphCallRecordsProductFamilyValue enumValue;
@end

@implementation MSGraphCallRecordsProductFamily

+ (MSGraphCallRecordsProductFamily*) unknown {
    static MSGraphCallRecordsProductFamily *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphCallRecordsProductFamily alloc] init];
        _unknown.enumValue = MSGraphCallRecordsProductFamilyUnknown;
    });
    return _unknown;
}
+ (MSGraphCallRecordsProductFamily*) teams {
    static MSGraphCallRecordsProductFamily *_teams;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _teams = [[MSGraphCallRecordsProductFamily alloc] init];
        _teams.enumValue = MSGraphCallRecordsProductFamilyTeams;
    });
    return _teams;
}
+ (MSGraphCallRecordsProductFamily*) skypeForBusiness {
    static MSGraphCallRecordsProductFamily *_skypeForBusiness;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _skypeForBusiness = [[MSGraphCallRecordsProductFamily alloc] init];
        _skypeForBusiness.enumValue = MSGraphCallRecordsProductFamilySkypeForBusiness;
    });
    return _skypeForBusiness;
}
+ (MSGraphCallRecordsProductFamily*) lync {
    static MSGraphCallRecordsProductFamily *_lync;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _lync = [[MSGraphCallRecordsProductFamily alloc] init];
        _lync.enumValue = MSGraphCallRecordsProductFamilyLync;
    });
    return _lync;
}
+ (MSGraphCallRecordsProductFamily*) unknownFutureValue {
    static MSGraphCallRecordsProductFamily *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphCallRecordsProductFamily alloc] init];
        _unknownFutureValue.enumValue = MSGraphCallRecordsProductFamilyUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphCallRecordsProductFamily*) UnknownEnumValue {
    static MSGraphCallRecordsProductFamily *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphCallRecordsProductFamily alloc] init];
        _unknownValue.enumValue = MSGraphCallRecordsProductFamilyEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphCallRecordsProductFamily*) productFamilyWithEnumValue:(MSGraphCallRecordsProductFamilyValue)val {

    switch(val)
    {
        case MSGraphCallRecordsProductFamilyUnknown:
            return [MSGraphCallRecordsProductFamily unknown];
        case MSGraphCallRecordsProductFamilyTeams:
            return [MSGraphCallRecordsProductFamily teams];
        case MSGraphCallRecordsProductFamilySkypeForBusiness:
            return [MSGraphCallRecordsProductFamily skypeForBusiness];
        case MSGraphCallRecordsProductFamilyLync:
            return [MSGraphCallRecordsProductFamily lync];
        case MSGraphCallRecordsProductFamilyUnknownFutureValue:
            return [MSGraphCallRecordsProductFamily unknownFutureValue];
        case MSGraphCallRecordsProductFamilyEndOfEnum:
        default:
            return [MSGraphCallRecordsProductFamily UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphCallRecordsProductFamilyUnknown:
            return @"unknown";
        case MSGraphCallRecordsProductFamilyTeams:
            return @"teams";
        case MSGraphCallRecordsProductFamilySkypeForBusiness:
            return @"skypeForBusiness";
        case MSGraphCallRecordsProductFamilyLync:
            return @"lync";
        case MSGraphCallRecordsProductFamilyUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphCallRecordsProductFamilyEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphCallRecordsProductFamilyValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphCallRecordsProductFamily)

- (MSGraphCallRecordsProductFamily*) toMSGraphCallRecordsProductFamily{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphCallRecordsProductFamily unknown];
    }
    else if([self isEqualToString:@"teams"])
    {
          return [MSGraphCallRecordsProductFamily teams];
    }
    else if([self isEqualToString:@"skypeForBusiness"])
    {
          return [MSGraphCallRecordsProductFamily skypeForBusiness];
    }
    else if([self isEqualToString:@"lync"])
    {
          return [MSGraphCallRecordsProductFamily lync];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphCallRecordsProductFamily unknownFutureValue];
    }
    else {
        return [MSGraphCallRecordsProductFamily UnknownEnumValue];
    }
}

@end
