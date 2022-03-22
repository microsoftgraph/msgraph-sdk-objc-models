// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphServiceHealthStatus.h"

@interface MSGraphServiceHealthStatus () {
    MSGraphServiceHealthStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphServiceHealthStatusValue enumValue;
@end

@implementation MSGraphServiceHealthStatus

+ (MSGraphServiceHealthStatus*) serviceOperational {
    static MSGraphServiceHealthStatus *_serviceOperational;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _serviceOperational = [[MSGraphServiceHealthStatus alloc] init];
        _serviceOperational.enumValue = MSGraphServiceHealthStatusServiceOperational;
    });
    return _serviceOperational;
}
+ (MSGraphServiceHealthStatus*) investigating {
    static MSGraphServiceHealthStatus *_investigating;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _investigating = [[MSGraphServiceHealthStatus alloc] init];
        _investigating.enumValue = MSGraphServiceHealthStatusInvestigating;
    });
    return _investigating;
}
+ (MSGraphServiceHealthStatus*) restoringService {
    static MSGraphServiceHealthStatus *_restoringService;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _restoringService = [[MSGraphServiceHealthStatus alloc] init];
        _restoringService.enumValue = MSGraphServiceHealthStatusRestoringService;
    });
    return _restoringService;
}
+ (MSGraphServiceHealthStatus*) verifyingService {
    static MSGraphServiceHealthStatus *_verifyingService;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _verifyingService = [[MSGraphServiceHealthStatus alloc] init];
        _verifyingService.enumValue = MSGraphServiceHealthStatusVerifyingService;
    });
    return _verifyingService;
}
+ (MSGraphServiceHealthStatus*) serviceRestored {
    static MSGraphServiceHealthStatus *_serviceRestored;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _serviceRestored = [[MSGraphServiceHealthStatus alloc] init];
        _serviceRestored.enumValue = MSGraphServiceHealthStatusServiceRestored;
    });
    return _serviceRestored;
}
+ (MSGraphServiceHealthStatus*) postIncidentReviewPublished {
    static MSGraphServiceHealthStatus *_postIncidentReviewPublished;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _postIncidentReviewPublished = [[MSGraphServiceHealthStatus alloc] init];
        _postIncidentReviewPublished.enumValue = MSGraphServiceHealthStatusPostIncidentReviewPublished;
    });
    return _postIncidentReviewPublished;
}
+ (MSGraphServiceHealthStatus*) serviceDegradation {
    static MSGraphServiceHealthStatus *_serviceDegradation;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _serviceDegradation = [[MSGraphServiceHealthStatus alloc] init];
        _serviceDegradation.enumValue = MSGraphServiceHealthStatusServiceDegradation;
    });
    return _serviceDegradation;
}
+ (MSGraphServiceHealthStatus*) serviceInterruption {
    static MSGraphServiceHealthStatus *_serviceInterruption;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _serviceInterruption = [[MSGraphServiceHealthStatus alloc] init];
        _serviceInterruption.enumValue = MSGraphServiceHealthStatusServiceInterruption;
    });
    return _serviceInterruption;
}
+ (MSGraphServiceHealthStatus*) extendedRecovery {
    static MSGraphServiceHealthStatus *_extendedRecovery;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _extendedRecovery = [[MSGraphServiceHealthStatus alloc] init];
        _extendedRecovery.enumValue = MSGraphServiceHealthStatusExtendedRecovery;
    });
    return _extendedRecovery;
}
+ (MSGraphServiceHealthStatus*) falsePositive {
    static MSGraphServiceHealthStatus *_falsePositive;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _falsePositive = [[MSGraphServiceHealthStatus alloc] init];
        _falsePositive.enumValue = MSGraphServiceHealthStatusFalsePositive;
    });
    return _falsePositive;
}
+ (MSGraphServiceHealthStatus*) investigationSuspended {
    static MSGraphServiceHealthStatus *_investigationSuspended;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _investigationSuspended = [[MSGraphServiceHealthStatus alloc] init];
        _investigationSuspended.enumValue = MSGraphServiceHealthStatusInvestigationSuspended;
    });
    return _investigationSuspended;
}
+ (MSGraphServiceHealthStatus*) resolved {
    static MSGraphServiceHealthStatus *_resolved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _resolved = [[MSGraphServiceHealthStatus alloc] init];
        _resolved.enumValue = MSGraphServiceHealthStatusResolved;
    });
    return _resolved;
}
+ (MSGraphServiceHealthStatus*) mitigatedExternal {
    static MSGraphServiceHealthStatus *_mitigatedExternal;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mitigatedExternal = [[MSGraphServiceHealthStatus alloc] init];
        _mitigatedExternal.enumValue = MSGraphServiceHealthStatusMitigatedExternal;
    });
    return _mitigatedExternal;
}
+ (MSGraphServiceHealthStatus*) mitigated {
    static MSGraphServiceHealthStatus *_mitigated;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mitigated = [[MSGraphServiceHealthStatus alloc] init];
        _mitigated.enumValue = MSGraphServiceHealthStatusMitigated;
    });
    return _mitigated;
}
+ (MSGraphServiceHealthStatus*) resolvedExternal {
    static MSGraphServiceHealthStatus *_resolvedExternal;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _resolvedExternal = [[MSGraphServiceHealthStatus alloc] init];
        _resolvedExternal.enumValue = MSGraphServiceHealthStatusResolvedExternal;
    });
    return _resolvedExternal;
}
+ (MSGraphServiceHealthStatus*) confirmed {
    static MSGraphServiceHealthStatus *_confirmed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _confirmed = [[MSGraphServiceHealthStatus alloc] init];
        _confirmed.enumValue = MSGraphServiceHealthStatusConfirmed;
    });
    return _confirmed;
}
+ (MSGraphServiceHealthStatus*) reported {
    static MSGraphServiceHealthStatus *_reported;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _reported = [[MSGraphServiceHealthStatus alloc] init];
        _reported.enumValue = MSGraphServiceHealthStatusReported;
    });
    return _reported;
}
+ (MSGraphServiceHealthStatus*) unknownFutureValue {
    static MSGraphServiceHealthStatus *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphServiceHealthStatus alloc] init];
        _unknownFutureValue.enumValue = MSGraphServiceHealthStatusUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphServiceHealthStatus*) UnknownEnumValue {
    static MSGraphServiceHealthStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphServiceHealthStatus alloc] init];
        _unknownValue.enumValue = MSGraphServiceHealthStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphServiceHealthStatus*) serviceHealthStatusWithEnumValue:(MSGraphServiceHealthStatusValue)val {

    switch(val)
    {
        case MSGraphServiceHealthStatusServiceOperational:
            return [MSGraphServiceHealthStatus serviceOperational];
        case MSGraphServiceHealthStatusInvestigating:
            return [MSGraphServiceHealthStatus investigating];
        case MSGraphServiceHealthStatusRestoringService:
            return [MSGraphServiceHealthStatus restoringService];
        case MSGraphServiceHealthStatusVerifyingService:
            return [MSGraphServiceHealthStatus verifyingService];
        case MSGraphServiceHealthStatusServiceRestored:
            return [MSGraphServiceHealthStatus serviceRestored];
        case MSGraphServiceHealthStatusPostIncidentReviewPublished:
            return [MSGraphServiceHealthStatus postIncidentReviewPublished];
        case MSGraphServiceHealthStatusServiceDegradation:
            return [MSGraphServiceHealthStatus serviceDegradation];
        case MSGraphServiceHealthStatusServiceInterruption:
            return [MSGraphServiceHealthStatus serviceInterruption];
        case MSGraphServiceHealthStatusExtendedRecovery:
            return [MSGraphServiceHealthStatus extendedRecovery];
        case MSGraphServiceHealthStatusFalsePositive:
            return [MSGraphServiceHealthStatus falsePositive];
        case MSGraphServiceHealthStatusInvestigationSuspended:
            return [MSGraphServiceHealthStatus investigationSuspended];
        case MSGraphServiceHealthStatusResolved:
            return [MSGraphServiceHealthStatus resolved];
        case MSGraphServiceHealthStatusMitigatedExternal:
            return [MSGraphServiceHealthStatus mitigatedExternal];
        case MSGraphServiceHealthStatusMitigated:
            return [MSGraphServiceHealthStatus mitigated];
        case MSGraphServiceHealthStatusResolvedExternal:
            return [MSGraphServiceHealthStatus resolvedExternal];
        case MSGraphServiceHealthStatusConfirmed:
            return [MSGraphServiceHealthStatus confirmed];
        case MSGraphServiceHealthStatusReported:
            return [MSGraphServiceHealthStatus reported];
        case MSGraphServiceHealthStatusUnknownFutureValue:
            return [MSGraphServiceHealthStatus unknownFutureValue];
        case MSGraphServiceHealthStatusEndOfEnum:
        default:
            return [MSGraphServiceHealthStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphServiceHealthStatusServiceOperational:
            return @"serviceOperational";
        case MSGraphServiceHealthStatusInvestigating:
            return @"investigating";
        case MSGraphServiceHealthStatusRestoringService:
            return @"restoringService";
        case MSGraphServiceHealthStatusVerifyingService:
            return @"verifyingService";
        case MSGraphServiceHealthStatusServiceRestored:
            return @"serviceRestored";
        case MSGraphServiceHealthStatusPostIncidentReviewPublished:
            return @"postIncidentReviewPublished";
        case MSGraphServiceHealthStatusServiceDegradation:
            return @"serviceDegradation";
        case MSGraphServiceHealthStatusServiceInterruption:
            return @"serviceInterruption";
        case MSGraphServiceHealthStatusExtendedRecovery:
            return @"extendedRecovery";
        case MSGraphServiceHealthStatusFalsePositive:
            return @"falsePositive";
        case MSGraphServiceHealthStatusInvestigationSuspended:
            return @"investigationSuspended";
        case MSGraphServiceHealthStatusResolved:
            return @"resolved";
        case MSGraphServiceHealthStatusMitigatedExternal:
            return @"mitigatedExternal";
        case MSGraphServiceHealthStatusMitigated:
            return @"mitigated";
        case MSGraphServiceHealthStatusResolvedExternal:
            return @"resolvedExternal";
        case MSGraphServiceHealthStatusConfirmed:
            return @"confirmed";
        case MSGraphServiceHealthStatusReported:
            return @"reported";
        case MSGraphServiceHealthStatusUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphServiceHealthStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphServiceHealthStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphServiceHealthStatus)

- (MSGraphServiceHealthStatus*) toMSGraphServiceHealthStatus{

    if([self isEqualToString:@"serviceOperational"])
    {
          return [MSGraphServiceHealthStatus serviceOperational];
    }
    else if([self isEqualToString:@"investigating"])
    {
          return [MSGraphServiceHealthStatus investigating];
    }
    else if([self isEqualToString:@"restoringService"])
    {
          return [MSGraphServiceHealthStatus restoringService];
    }
    else if([self isEqualToString:@"verifyingService"])
    {
          return [MSGraphServiceHealthStatus verifyingService];
    }
    else if([self isEqualToString:@"serviceRestored"])
    {
          return [MSGraphServiceHealthStatus serviceRestored];
    }
    else if([self isEqualToString:@"postIncidentReviewPublished"])
    {
          return [MSGraphServiceHealthStatus postIncidentReviewPublished];
    }
    else if([self isEqualToString:@"serviceDegradation"])
    {
          return [MSGraphServiceHealthStatus serviceDegradation];
    }
    else if([self isEqualToString:@"serviceInterruption"])
    {
          return [MSGraphServiceHealthStatus serviceInterruption];
    }
    else if([self isEqualToString:@"extendedRecovery"])
    {
          return [MSGraphServiceHealthStatus extendedRecovery];
    }
    else if([self isEqualToString:@"falsePositive"])
    {
          return [MSGraphServiceHealthStatus falsePositive];
    }
    else if([self isEqualToString:@"investigationSuspended"])
    {
          return [MSGraphServiceHealthStatus investigationSuspended];
    }
    else if([self isEqualToString:@"resolved"])
    {
          return [MSGraphServiceHealthStatus resolved];
    }
    else if([self isEqualToString:@"mitigatedExternal"])
    {
          return [MSGraphServiceHealthStatus mitigatedExternal];
    }
    else if([self isEqualToString:@"mitigated"])
    {
          return [MSGraphServiceHealthStatus mitigated];
    }
    else if([self isEqualToString:@"resolvedExternal"])
    {
          return [MSGraphServiceHealthStatus resolvedExternal];
    }
    else if([self isEqualToString:@"confirmed"])
    {
          return [MSGraphServiceHealthStatus confirmed];
    }
    else if([self isEqualToString:@"reported"])
    {
          return [MSGraphServiceHealthStatus reported];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphServiceHealthStatus unknownFutureValue];
    }
    else {
        return [MSGraphServiceHealthStatus UnknownEnumValue];
    }
}

@end
