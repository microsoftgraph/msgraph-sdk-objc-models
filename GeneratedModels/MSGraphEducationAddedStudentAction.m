// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphEducationAddedStudentAction.h"

@interface MSGraphEducationAddedStudentAction () {
    MSGraphEducationAddedStudentActionValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphEducationAddedStudentActionValue enumValue;
@end

@implementation MSGraphEducationAddedStudentAction

+ (MSGraphEducationAddedStudentAction*) none {
    static MSGraphEducationAddedStudentAction *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphEducationAddedStudentAction alloc] init];
        _none.enumValue = MSGraphEducationAddedStudentActionNone;
    });
    return _none;
}
+ (MSGraphEducationAddedStudentAction*) assignIfOpen {
    static MSGraphEducationAddedStudentAction *_assignIfOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _assignIfOpen = [[MSGraphEducationAddedStudentAction alloc] init];
        _assignIfOpen.enumValue = MSGraphEducationAddedStudentActionAssignIfOpen;
    });
    return _assignIfOpen;
}
+ (MSGraphEducationAddedStudentAction*) unknownFutureValue {
    static MSGraphEducationAddedStudentAction *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphEducationAddedStudentAction alloc] init];
        _unknownFutureValue.enumValue = MSGraphEducationAddedStudentActionUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphEducationAddedStudentAction*) UnknownEnumValue {
    static MSGraphEducationAddedStudentAction *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphEducationAddedStudentAction alloc] init];
        _unknownValue.enumValue = MSGraphEducationAddedStudentActionEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphEducationAddedStudentAction*) educationAddedStudentActionWithEnumValue:(MSGraphEducationAddedStudentActionValue)val {

    switch(val)
    {
        case MSGraphEducationAddedStudentActionNone:
            return [MSGraphEducationAddedStudentAction none];
        case MSGraphEducationAddedStudentActionAssignIfOpen:
            return [MSGraphEducationAddedStudentAction assignIfOpen];
        case MSGraphEducationAddedStudentActionUnknownFutureValue:
            return [MSGraphEducationAddedStudentAction unknownFutureValue];
        case MSGraphEducationAddedStudentActionEndOfEnum:
        default:
            return [MSGraphEducationAddedStudentAction UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphEducationAddedStudentActionNone:
            return @"none";
        case MSGraphEducationAddedStudentActionAssignIfOpen:
            return @"assignIfOpen";
        case MSGraphEducationAddedStudentActionUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphEducationAddedStudentActionEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphEducationAddedStudentActionValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphEducationAddedStudentAction)

- (MSGraphEducationAddedStudentAction*) toMSGraphEducationAddedStudentAction{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphEducationAddedStudentAction none];
    }
    else if([self isEqualToString:@"assignIfOpen"])
    {
          return [MSGraphEducationAddedStudentAction assignIfOpen];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphEducationAddedStudentAction unknownFutureValue];
    }
    else {
        return [MSGraphEducationAddedStudentAction UnknownEnumValue];
    }
}

@end
