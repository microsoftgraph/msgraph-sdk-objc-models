// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphTeamSpecialization.h"

@interface MSGraphTeamSpecialization () {
    MSGraphTeamSpecializationValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphTeamSpecializationValue enumValue;
@end

@implementation MSGraphTeamSpecialization

+ (MSGraphTeamSpecialization*) none {
    static MSGraphTeamSpecialization *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphTeamSpecialization alloc] init];
        _none.enumValue = MSGraphTeamSpecializationNone;
    });
    return _none;
}
+ (MSGraphTeamSpecialization*) educationStandard {
    static MSGraphTeamSpecialization *_educationStandard;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _educationStandard = [[MSGraphTeamSpecialization alloc] init];
        _educationStandard.enumValue = MSGraphTeamSpecializationEducationStandard;
    });
    return _educationStandard;
}
+ (MSGraphTeamSpecialization*) educationClass {
    static MSGraphTeamSpecialization *_educationClass;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _educationClass = [[MSGraphTeamSpecialization alloc] init];
        _educationClass.enumValue = MSGraphTeamSpecializationEducationClass;
    });
    return _educationClass;
}
+ (MSGraphTeamSpecialization*) educationProfessionalLearningCommunity {
    static MSGraphTeamSpecialization *_educationProfessionalLearningCommunity;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _educationProfessionalLearningCommunity = [[MSGraphTeamSpecialization alloc] init];
        _educationProfessionalLearningCommunity.enumValue = MSGraphTeamSpecializationEducationProfessionalLearningCommunity;
    });
    return _educationProfessionalLearningCommunity;
}
+ (MSGraphTeamSpecialization*) educationStaff {
    static MSGraphTeamSpecialization *_educationStaff;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _educationStaff = [[MSGraphTeamSpecialization alloc] init];
        _educationStaff.enumValue = MSGraphTeamSpecializationEducationStaff;
    });
    return _educationStaff;
}
+ (MSGraphTeamSpecialization*) healthcareStandard {
    static MSGraphTeamSpecialization *_healthcareStandard;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _healthcareStandard = [[MSGraphTeamSpecialization alloc] init];
        _healthcareStandard.enumValue = MSGraphTeamSpecializationHealthcareStandard;
    });
    return _healthcareStandard;
}
+ (MSGraphTeamSpecialization*) healthcareCareCoordination {
    static MSGraphTeamSpecialization *_healthcareCareCoordination;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _healthcareCareCoordination = [[MSGraphTeamSpecialization alloc] init];
        _healthcareCareCoordination.enumValue = MSGraphTeamSpecializationHealthcareCareCoordination;
    });
    return _healthcareCareCoordination;
}
+ (MSGraphTeamSpecialization*) unknownFutureValue {
    static MSGraphTeamSpecialization *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphTeamSpecialization alloc] init];
        _unknownFutureValue.enumValue = MSGraphTeamSpecializationUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphTeamSpecialization*) UnknownEnumValue {
    static MSGraphTeamSpecialization *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphTeamSpecialization alloc] init];
        _unknownValue.enumValue = MSGraphTeamSpecializationEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphTeamSpecialization*) teamSpecializationWithEnumValue:(MSGraphTeamSpecializationValue)val {

    switch(val)
    {
        case MSGraphTeamSpecializationNone:
            return [MSGraphTeamSpecialization none];
        case MSGraphTeamSpecializationEducationStandard:
            return [MSGraphTeamSpecialization educationStandard];
        case MSGraphTeamSpecializationEducationClass:
            return [MSGraphTeamSpecialization educationClass];
        case MSGraphTeamSpecializationEducationProfessionalLearningCommunity:
            return [MSGraphTeamSpecialization educationProfessionalLearningCommunity];
        case MSGraphTeamSpecializationEducationStaff:
            return [MSGraphTeamSpecialization educationStaff];
        case MSGraphTeamSpecializationHealthcareStandard:
            return [MSGraphTeamSpecialization healthcareStandard];
        case MSGraphTeamSpecializationHealthcareCareCoordination:
            return [MSGraphTeamSpecialization healthcareCareCoordination];
        case MSGraphTeamSpecializationUnknownFutureValue:
            return [MSGraphTeamSpecialization unknownFutureValue];
        case MSGraphTeamSpecializationEndOfEnum:
        default:
            return [MSGraphTeamSpecialization UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphTeamSpecializationNone:
            return @"none";
        case MSGraphTeamSpecializationEducationStandard:
            return @"educationStandard";
        case MSGraphTeamSpecializationEducationClass:
            return @"educationClass";
        case MSGraphTeamSpecializationEducationProfessionalLearningCommunity:
            return @"educationProfessionalLearningCommunity";
        case MSGraphTeamSpecializationEducationStaff:
            return @"educationStaff";
        case MSGraphTeamSpecializationHealthcareStandard:
            return @"healthcareStandard";
        case MSGraphTeamSpecializationHealthcareCareCoordination:
            return @"healthcareCareCoordination";
        case MSGraphTeamSpecializationUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphTeamSpecializationEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphTeamSpecializationValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphTeamSpecialization)

- (MSGraphTeamSpecialization*) toMSGraphTeamSpecialization{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphTeamSpecialization none];
    }
    else if([self isEqualToString:@"educationStandard"])
    {
          return [MSGraphTeamSpecialization educationStandard];
    }
    else if([self isEqualToString:@"educationClass"])
    {
          return [MSGraphTeamSpecialization educationClass];
    }
    else if([self isEqualToString:@"educationProfessionalLearningCommunity"])
    {
          return [MSGraphTeamSpecialization educationProfessionalLearningCommunity];
    }
    else if([self isEqualToString:@"educationStaff"])
    {
          return [MSGraphTeamSpecialization educationStaff];
    }
    else if([self isEqualToString:@"healthcareStandard"])
    {
          return [MSGraphTeamSpecialization healthcareStandard];
    }
    else if([self isEqualToString:@"healthcareCareCoordination"])
    {
          return [MSGraphTeamSpecialization healthcareCareCoordination];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphTeamSpecialization unknownFutureValue];
    }
    else {
        return [MSGraphTeamSpecialization UnknownEnumValue];
    }
}

@end
