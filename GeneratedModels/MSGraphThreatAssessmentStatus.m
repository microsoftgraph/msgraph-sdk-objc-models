// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphThreatAssessmentStatus.h"

@interface MSGraphThreatAssessmentStatus () {
    MSGraphThreatAssessmentStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphThreatAssessmentStatusValue enumValue;
@end

@implementation MSGraphThreatAssessmentStatus

+ (MSGraphThreatAssessmentStatus*) pending {
    static MSGraphThreatAssessmentStatus *_pending;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _pending = [[MSGraphThreatAssessmentStatus alloc] init];
        _pending.enumValue = MSGraphThreatAssessmentStatusPending;
    });
    return _pending;
}
+ (MSGraphThreatAssessmentStatus*) completed {
    static MSGraphThreatAssessmentStatus *_completed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _completed = [[MSGraphThreatAssessmentStatus alloc] init];
        _completed.enumValue = MSGraphThreatAssessmentStatusCompleted;
    });
    return _completed;
}

+ (MSGraphThreatAssessmentStatus*) UnknownEnumValue {
    static MSGraphThreatAssessmentStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphThreatAssessmentStatus alloc] init];
        _unknownValue.enumValue = MSGraphThreatAssessmentStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphThreatAssessmentStatus*) threatAssessmentStatusWithEnumValue:(MSGraphThreatAssessmentStatusValue)val {

    switch(val)
    {
        case MSGraphThreatAssessmentStatusPending:
            return [MSGraphThreatAssessmentStatus pending];
        case MSGraphThreatAssessmentStatusCompleted:
            return [MSGraphThreatAssessmentStatus completed];
        case MSGraphThreatAssessmentStatusEndOfEnum:
        default:
            return [MSGraphThreatAssessmentStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphThreatAssessmentStatusPending:
            return @"pending";
        case MSGraphThreatAssessmentStatusCompleted:
            return @"completed";
        case MSGraphThreatAssessmentStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphThreatAssessmentStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphThreatAssessmentStatus)

- (MSGraphThreatAssessmentStatus*) toMSGraphThreatAssessmentStatus{

    if([self isEqualToString:@"pending"])
    {
          return [MSGraphThreatAssessmentStatus pending];
    }
    else if([self isEqualToString:@"completed"])
    {
          return [MSGraphThreatAssessmentStatus completed];
    }
    else {
        return [MSGraphThreatAssessmentStatus UnknownEnumValue];
    }
}

@end
