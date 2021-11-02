// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphEdiscoveryCaseAction.h"

@interface MSGraphEdiscoveryCaseAction () {
    MSGraphEdiscoveryCaseActionValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphEdiscoveryCaseActionValue enumValue;
@end

@implementation MSGraphEdiscoveryCaseAction

+ (MSGraphEdiscoveryCaseAction*) contentExport {
    static MSGraphEdiscoveryCaseAction *_contentExport;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _contentExport = [[MSGraphEdiscoveryCaseAction alloc] init];
        _contentExport.enumValue = MSGraphEdiscoveryCaseActionContentExport;
    });
    return _contentExport;
}
+ (MSGraphEdiscoveryCaseAction*) applyTags {
    static MSGraphEdiscoveryCaseAction *_applyTags;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _applyTags = [[MSGraphEdiscoveryCaseAction alloc] init];
        _applyTags.enumValue = MSGraphEdiscoveryCaseActionApplyTags;
    });
    return _applyTags;
}
+ (MSGraphEdiscoveryCaseAction*) convertToPdf {
    static MSGraphEdiscoveryCaseAction *_convertToPdf;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _convertToPdf = [[MSGraphEdiscoveryCaseAction alloc] init];
        _convertToPdf.enumValue = MSGraphEdiscoveryCaseActionConvertToPdf;
    });
    return _convertToPdf;
}
+ (MSGraphEdiscoveryCaseAction*) index {
    static MSGraphEdiscoveryCaseAction *_index;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _index = [[MSGraphEdiscoveryCaseAction alloc] init];
        _index.enumValue = MSGraphEdiscoveryCaseActionIndex;
    });
    return _index;
}
+ (MSGraphEdiscoveryCaseAction*) estimateStatistics {
    static MSGraphEdiscoveryCaseAction *_estimateStatistics;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _estimateStatistics = [[MSGraphEdiscoveryCaseAction alloc] init];
        _estimateStatistics.enumValue = MSGraphEdiscoveryCaseActionEstimateStatistics;
    });
    return _estimateStatistics;
}
+ (MSGraphEdiscoveryCaseAction*) addToReviewSet {
    static MSGraphEdiscoveryCaseAction *_addToReviewSet;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _addToReviewSet = [[MSGraphEdiscoveryCaseAction alloc] init];
        _addToReviewSet.enumValue = MSGraphEdiscoveryCaseActionAddToReviewSet;
    });
    return _addToReviewSet;
}
+ (MSGraphEdiscoveryCaseAction*) unknownFutureValue {
    static MSGraphEdiscoveryCaseAction *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphEdiscoveryCaseAction alloc] init];
        _unknownFutureValue.enumValue = MSGraphEdiscoveryCaseActionUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphEdiscoveryCaseAction*) UnknownEnumValue {
    static MSGraphEdiscoveryCaseAction *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphEdiscoveryCaseAction alloc] init];
        _unknownValue.enumValue = MSGraphEdiscoveryCaseActionEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphEdiscoveryCaseAction*) caseActionWithEnumValue:(MSGraphEdiscoveryCaseActionValue)val {

    switch(val)
    {
        case MSGraphEdiscoveryCaseActionContentExport:
            return [MSGraphEdiscoveryCaseAction contentExport];
        case MSGraphEdiscoveryCaseActionApplyTags:
            return [MSGraphEdiscoveryCaseAction applyTags];
        case MSGraphEdiscoveryCaseActionConvertToPdf:
            return [MSGraphEdiscoveryCaseAction convertToPdf];
        case MSGraphEdiscoveryCaseActionIndex:
            return [MSGraphEdiscoveryCaseAction index];
        case MSGraphEdiscoveryCaseActionEstimateStatistics:
            return [MSGraphEdiscoveryCaseAction estimateStatistics];
        case MSGraphEdiscoveryCaseActionAddToReviewSet:
            return [MSGraphEdiscoveryCaseAction addToReviewSet];
        case MSGraphEdiscoveryCaseActionUnknownFutureValue:
            return [MSGraphEdiscoveryCaseAction unknownFutureValue];
        case MSGraphEdiscoveryCaseActionEndOfEnum:
        default:
            return [MSGraphEdiscoveryCaseAction UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphEdiscoveryCaseActionContentExport:
            return @"contentExport";
        case MSGraphEdiscoveryCaseActionApplyTags:
            return @"applyTags";
        case MSGraphEdiscoveryCaseActionConvertToPdf:
            return @"convertToPdf";
        case MSGraphEdiscoveryCaseActionIndex:
            return @"index";
        case MSGraphEdiscoveryCaseActionEstimateStatistics:
            return @"estimateStatistics";
        case MSGraphEdiscoveryCaseActionAddToReviewSet:
            return @"addToReviewSet";
        case MSGraphEdiscoveryCaseActionUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphEdiscoveryCaseActionEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphEdiscoveryCaseActionValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphEdiscoveryCaseAction)

- (MSGraphEdiscoveryCaseAction*) toMSGraphEdiscoveryCaseAction{

    if([self isEqualToString:@"contentExport"])
    {
          return [MSGraphEdiscoveryCaseAction contentExport];
    }
    else if([self isEqualToString:@"applyTags"])
    {
          return [MSGraphEdiscoveryCaseAction applyTags];
    }
    else if([self isEqualToString:@"convertToPdf"])
    {
          return [MSGraphEdiscoveryCaseAction convertToPdf];
    }
    else if([self isEqualToString:@"index"])
    {
          return [MSGraphEdiscoveryCaseAction index];
    }
    else if([self isEqualToString:@"estimateStatistics"])
    {
          return [MSGraphEdiscoveryCaseAction estimateStatistics];
    }
    else if([self isEqualToString:@"addToReviewSet"])
    {
          return [MSGraphEdiscoveryCaseAction addToReviewSet];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphEdiscoveryCaseAction unknownFutureValue];
    }
    else {
        return [MSGraphEdiscoveryCaseAction UnknownEnumValue];
    }
}

@end
