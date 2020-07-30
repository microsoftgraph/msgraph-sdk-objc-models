// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphThreatExpectedAssessment.h"

@interface MSGraphThreatExpectedAssessment () {
    MSGraphThreatExpectedAssessmentValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphThreatExpectedAssessmentValue enumValue;
@end

@implementation MSGraphThreatExpectedAssessment

+ (MSGraphThreatExpectedAssessment*) block {
    static MSGraphThreatExpectedAssessment *_block;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _block = [[MSGraphThreatExpectedAssessment alloc] init];
        _block.enumValue = MSGraphThreatExpectedAssessmentBlock;
    });
    return _block;
}
+ (MSGraphThreatExpectedAssessment*) unblock {
    static MSGraphThreatExpectedAssessment *_unblock;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unblock = [[MSGraphThreatExpectedAssessment alloc] init];
        _unblock.enumValue = MSGraphThreatExpectedAssessmentUnblock;
    });
    return _unblock;
}

+ (MSGraphThreatExpectedAssessment*) UnknownEnumValue {
    static MSGraphThreatExpectedAssessment *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphThreatExpectedAssessment alloc] init];
        _unknownValue.enumValue = MSGraphThreatExpectedAssessmentEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphThreatExpectedAssessment*) threatExpectedAssessmentWithEnumValue:(MSGraphThreatExpectedAssessmentValue)val {

    switch(val)
    {
        case MSGraphThreatExpectedAssessmentBlock:
            return [MSGraphThreatExpectedAssessment block];
        case MSGraphThreatExpectedAssessmentUnblock:
            return [MSGraphThreatExpectedAssessment unblock];
        case MSGraphThreatExpectedAssessmentEndOfEnum:
        default:
            return [MSGraphThreatExpectedAssessment UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphThreatExpectedAssessmentBlock:
            return @"block";
        case MSGraphThreatExpectedAssessmentUnblock:
            return @"unblock";
        case MSGraphThreatExpectedAssessmentEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphThreatExpectedAssessmentValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphThreatExpectedAssessment)

- (MSGraphThreatExpectedAssessment*) toMSGraphThreatExpectedAssessment{

    if([self isEqualToString:@"block"])
    {
          return [MSGraphThreatExpectedAssessment block];
    }
    else if([self isEqualToString:@"unblock"])
    {
          return [MSGraphThreatExpectedAssessment unblock];
    }
    else {
        return [MSGraphThreatExpectedAssessment UnknownEnumValue];
    }
}

@end
