// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphEducationAddToCalendarOptions.h"

@interface MSGraphEducationAddToCalendarOptions () {
    MSGraphEducationAddToCalendarOptionsValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphEducationAddToCalendarOptionsValue enumValue;
@end

@implementation MSGraphEducationAddToCalendarOptions

+ (MSGraphEducationAddToCalendarOptions*) none {
    static MSGraphEducationAddToCalendarOptions *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphEducationAddToCalendarOptions alloc] init];
        _none.enumValue = MSGraphEducationAddToCalendarOptionsNone;
    });
    return _none;
}
+ (MSGraphEducationAddToCalendarOptions*) studentsAndPublisher {
    static MSGraphEducationAddToCalendarOptions *_studentsAndPublisher;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _studentsAndPublisher = [[MSGraphEducationAddToCalendarOptions alloc] init];
        _studentsAndPublisher.enumValue = MSGraphEducationAddToCalendarOptionsStudentsAndPublisher;
    });
    return _studentsAndPublisher;
}
+ (MSGraphEducationAddToCalendarOptions*) studentsAndTeamOwners {
    static MSGraphEducationAddToCalendarOptions *_studentsAndTeamOwners;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _studentsAndTeamOwners = [[MSGraphEducationAddToCalendarOptions alloc] init];
        _studentsAndTeamOwners.enumValue = MSGraphEducationAddToCalendarOptionsStudentsAndTeamOwners;
    });
    return _studentsAndTeamOwners;
}
+ (MSGraphEducationAddToCalendarOptions*) unknownFutureValue {
    static MSGraphEducationAddToCalendarOptions *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphEducationAddToCalendarOptions alloc] init];
        _unknownFutureValue.enumValue = MSGraphEducationAddToCalendarOptionsUnknownFutureValue;
    });
    return _unknownFutureValue;
}
+ (MSGraphEducationAddToCalendarOptions*) studentsOnly {
    static MSGraphEducationAddToCalendarOptions *_studentsOnly;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _studentsOnly = [[MSGraphEducationAddToCalendarOptions alloc] init];
        _studentsOnly.enumValue = MSGraphEducationAddToCalendarOptionsStudentsOnly;
    });
    return _studentsOnly;
}

+ (MSGraphEducationAddToCalendarOptions*) UnknownEnumValue {
    static MSGraphEducationAddToCalendarOptions *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphEducationAddToCalendarOptions alloc] init];
        _unknownValue.enumValue = MSGraphEducationAddToCalendarOptionsEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphEducationAddToCalendarOptions*) educationAddToCalendarOptionsWithEnumValue:(MSGraphEducationAddToCalendarOptionsValue)val {

    switch(val)
    {
        case MSGraphEducationAddToCalendarOptionsNone:
            return [MSGraphEducationAddToCalendarOptions none];
        case MSGraphEducationAddToCalendarOptionsStudentsAndPublisher:
            return [MSGraphEducationAddToCalendarOptions studentsAndPublisher];
        case MSGraphEducationAddToCalendarOptionsStudentsAndTeamOwners:
            return [MSGraphEducationAddToCalendarOptions studentsAndTeamOwners];
        case MSGraphEducationAddToCalendarOptionsUnknownFutureValue:
            return [MSGraphEducationAddToCalendarOptions unknownFutureValue];
        case MSGraphEducationAddToCalendarOptionsStudentsOnly:
            return [MSGraphEducationAddToCalendarOptions studentsOnly];
        case MSGraphEducationAddToCalendarOptionsEndOfEnum:
        default:
            return [MSGraphEducationAddToCalendarOptions UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphEducationAddToCalendarOptionsNone:
            return @"none";
        case MSGraphEducationAddToCalendarOptionsStudentsAndPublisher:
            return @"studentsAndPublisher";
        case MSGraphEducationAddToCalendarOptionsStudentsAndTeamOwners:
            return @"studentsAndTeamOwners";
        case MSGraphEducationAddToCalendarOptionsUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphEducationAddToCalendarOptionsStudentsOnly:
            return @"studentsOnly";
        case MSGraphEducationAddToCalendarOptionsEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphEducationAddToCalendarOptionsValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphEducationAddToCalendarOptions)

- (MSGraphEducationAddToCalendarOptions*) toMSGraphEducationAddToCalendarOptions{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphEducationAddToCalendarOptions none];
    }
    else if([self isEqualToString:@"studentsAndPublisher"])
    {
          return [MSGraphEducationAddToCalendarOptions studentsAndPublisher];
    }
    else if([self isEqualToString:@"studentsAndTeamOwners"])
    {
          return [MSGraphEducationAddToCalendarOptions studentsAndTeamOwners];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphEducationAddToCalendarOptions unknownFutureValue];
    }
    else if([self isEqualToString:@"studentsOnly"])
    {
          return [MSGraphEducationAddToCalendarOptions studentsOnly];
    }
    else {
        return [MSGraphEducationAddToCalendarOptions UnknownEnumValue];
    }
}

@end
