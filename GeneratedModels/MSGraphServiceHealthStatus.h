// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphServiceHealthStatusValue){

	MSGraphServiceHealthStatusServiceOperational = 0,
	MSGraphServiceHealthStatusInvestigating = 1,
	MSGraphServiceHealthStatusRestoringService = 2,
	MSGraphServiceHealthStatusVerifyingService = 3,
	MSGraphServiceHealthStatusServiceRestored = 4,
	MSGraphServiceHealthStatusPostIncidentReviewPublished = 5,
	MSGraphServiceHealthStatusServiceDegradation = 6,
	MSGraphServiceHealthStatusServiceInterruption = 7,
	MSGraphServiceHealthStatusExtendedRecovery = 8,
	MSGraphServiceHealthStatusFalsePositive = 9,
	MSGraphServiceHealthStatusInvestigationSuspended = 10,
	MSGraphServiceHealthStatusResolved = 11,
	MSGraphServiceHealthStatusMitigatedExternal = 12,
	MSGraphServiceHealthStatusMitigated = 13,
	MSGraphServiceHealthStatusResolvedExternal = 14,
	MSGraphServiceHealthStatusConfirmed = 15,
	MSGraphServiceHealthStatusReported = 16,
	MSGraphServiceHealthStatusUnknownFutureValue = 17,
    MSGraphServiceHealthStatusEndOfEnum
};

@interface MSGraphServiceHealthStatus : NSObject

+(MSGraphServiceHealthStatus*) serviceOperational;
+(MSGraphServiceHealthStatus*) investigating;
+(MSGraphServiceHealthStatus*) restoringService;
+(MSGraphServiceHealthStatus*) verifyingService;
+(MSGraphServiceHealthStatus*) serviceRestored;
+(MSGraphServiceHealthStatus*) postIncidentReviewPublished;
+(MSGraphServiceHealthStatus*) serviceDegradation;
+(MSGraphServiceHealthStatus*) serviceInterruption;
+(MSGraphServiceHealthStatus*) extendedRecovery;
+(MSGraphServiceHealthStatus*) falsePositive;
+(MSGraphServiceHealthStatus*) investigationSuspended;
+(MSGraphServiceHealthStatus*) resolved;
+(MSGraphServiceHealthStatus*) mitigatedExternal;
+(MSGraphServiceHealthStatus*) mitigated;
+(MSGraphServiceHealthStatus*) resolvedExternal;
+(MSGraphServiceHealthStatus*) confirmed;
+(MSGraphServiceHealthStatus*) reported;
+(MSGraphServiceHealthStatus*) unknownFutureValue;

+(MSGraphServiceHealthStatus*) UnknownEnumValue;

+(MSGraphServiceHealthStatus*) serviceHealthStatusWithEnumValue:(MSGraphServiceHealthStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphServiceHealthStatusValue enumValue;

@end


@interface NSString (MSGraphServiceHealthStatus)

- (MSGraphServiceHealthStatus*) toMSGraphServiceHealthStatus;

@end
