// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphEducationAssignmentStatus.h"

@interface MSGraphEducationAssignmentStatus () {
    MSGraphEducationAssignmentStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphEducationAssignmentStatusValue enumValue;
@end

@implementation MSGraphEducationAssignmentStatus

+ (MSGraphEducationAssignmentStatus*) draft {
    static MSGraphEducationAssignmentStatus *_draft;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _draft = [[MSGraphEducationAssignmentStatus alloc] init];
        _draft.enumValue = MSGraphEducationAssignmentStatusDraft;
    });
    return _draft;
}
+ (MSGraphEducationAssignmentStatus*) published {
    static MSGraphEducationAssignmentStatus *_published;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _published = [[MSGraphEducationAssignmentStatus alloc] init];
        _published.enumValue = MSGraphEducationAssignmentStatusPublished;
    });
    return _published;
}
+ (MSGraphEducationAssignmentStatus*) assigned {
    static MSGraphEducationAssignmentStatus *_assigned;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _assigned = [[MSGraphEducationAssignmentStatus alloc] init];
        _assigned.enumValue = MSGraphEducationAssignmentStatusAssigned;
    });
    return _assigned;
}
+ (MSGraphEducationAssignmentStatus*) unknownFutureValue {
    static MSGraphEducationAssignmentStatus *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphEducationAssignmentStatus alloc] init];
        _unknownFutureValue.enumValue = MSGraphEducationAssignmentStatusUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphEducationAssignmentStatus*) UnknownEnumValue {
    static MSGraphEducationAssignmentStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphEducationAssignmentStatus alloc] init];
        _unknownValue.enumValue = MSGraphEducationAssignmentStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphEducationAssignmentStatus*) educationAssignmentStatusWithEnumValue:(MSGraphEducationAssignmentStatusValue)val {

    switch(val)
    {
        case MSGraphEducationAssignmentStatusDraft:
            return [MSGraphEducationAssignmentStatus draft];
        case MSGraphEducationAssignmentStatusPublished:
            return [MSGraphEducationAssignmentStatus published];
        case MSGraphEducationAssignmentStatusAssigned:
            return [MSGraphEducationAssignmentStatus assigned];
        case MSGraphEducationAssignmentStatusUnknownFutureValue:
            return [MSGraphEducationAssignmentStatus unknownFutureValue];
        case MSGraphEducationAssignmentStatusEndOfEnum:
        default:
            return [MSGraphEducationAssignmentStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphEducationAssignmentStatusDraft:
            return @"draft";
        case MSGraphEducationAssignmentStatusPublished:
            return @"published";
        case MSGraphEducationAssignmentStatusAssigned:
            return @"assigned";
        case MSGraphEducationAssignmentStatusUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphEducationAssignmentStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphEducationAssignmentStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphEducationAssignmentStatus)

- (MSGraphEducationAssignmentStatus*) toMSGraphEducationAssignmentStatus{

    if([self isEqualToString:@"draft"])
    {
          return [MSGraphEducationAssignmentStatus draft];
    }
    else if([self isEqualToString:@"published"])
    {
          return [MSGraphEducationAssignmentStatus published];
    }
    else if([self isEqualToString:@"assigned"])
    {
          return [MSGraphEducationAssignmentStatus assigned];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphEducationAssignmentStatus unknownFutureValue];
    }
    else {
        return [MSGraphEducationAssignmentStatus UnknownEnumValue];
    }
}

@end
