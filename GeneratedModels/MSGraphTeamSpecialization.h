// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphTeamSpecializationValue){

	MSGraphTeamSpecializationNone = 0,
	MSGraphTeamSpecializationEducationStandard = 1,
	MSGraphTeamSpecializationEducationClass = 2,
	MSGraphTeamSpecializationEducationProfessionalLearningCommunity = 3,
	MSGraphTeamSpecializationEducationStaff = 4,
	MSGraphTeamSpecializationHealthcareStandard = 5,
	MSGraphTeamSpecializationHealthcareCareCoordination = 6,
	MSGraphTeamSpecializationUnknownFutureValue = 7,
    MSGraphTeamSpecializationEndOfEnum
};

@interface MSGraphTeamSpecialization : NSObject

+(MSGraphTeamSpecialization*) none;
+(MSGraphTeamSpecialization*) educationStandard;
+(MSGraphTeamSpecialization*) educationClass;
+(MSGraphTeamSpecialization*) educationProfessionalLearningCommunity;
+(MSGraphTeamSpecialization*) educationStaff;
+(MSGraphTeamSpecialization*) healthcareStandard;
+(MSGraphTeamSpecialization*) healthcareCareCoordination;
+(MSGraphTeamSpecialization*) unknownFutureValue;

+(MSGraphTeamSpecialization*) UnknownEnumValue;

+(MSGraphTeamSpecialization*) teamSpecializationWithEnumValue:(MSGraphTeamSpecializationValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphTeamSpecializationValue enumValue;

@end


@interface NSString (MSGraphTeamSpecialization)

- (MSGraphTeamSpecialization*) toMSGraphTeamSpecialization;

@end
