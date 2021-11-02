// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphSubjectRightsRequestStage.h"

@interface MSGraphSubjectRightsRequestStage () {
    MSGraphSubjectRightsRequestStageValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphSubjectRightsRequestStageValue enumValue;
@end

@implementation MSGraphSubjectRightsRequestStage

+ (MSGraphSubjectRightsRequestStage*) contentRetrieval {
    static MSGraphSubjectRightsRequestStage *_contentRetrieval;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _contentRetrieval = [[MSGraphSubjectRightsRequestStage alloc] init];
        _contentRetrieval.enumValue = MSGraphSubjectRightsRequestStageContentRetrieval;
    });
    return _contentRetrieval;
}
+ (MSGraphSubjectRightsRequestStage*) contentReview {
    static MSGraphSubjectRightsRequestStage *_contentReview;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _contentReview = [[MSGraphSubjectRightsRequestStage alloc] init];
        _contentReview.enumValue = MSGraphSubjectRightsRequestStageContentReview;
    });
    return _contentReview;
}
+ (MSGraphSubjectRightsRequestStage*) generateReport {
    static MSGraphSubjectRightsRequestStage *_generateReport;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _generateReport = [[MSGraphSubjectRightsRequestStage alloc] init];
        _generateReport.enumValue = MSGraphSubjectRightsRequestStageGenerateReport;
    });
    return _generateReport;
}
+ (MSGraphSubjectRightsRequestStage*) contentDeletion {
    static MSGraphSubjectRightsRequestStage *_contentDeletion;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _contentDeletion = [[MSGraphSubjectRightsRequestStage alloc] init];
        _contentDeletion.enumValue = MSGraphSubjectRightsRequestStageContentDeletion;
    });
    return _contentDeletion;
}
+ (MSGraphSubjectRightsRequestStage*) caseResolved {
    static MSGraphSubjectRightsRequestStage *_caseResolved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _caseResolved = [[MSGraphSubjectRightsRequestStage alloc] init];
        _caseResolved.enumValue = MSGraphSubjectRightsRequestStageCaseResolved;
    });
    return _caseResolved;
}
+ (MSGraphSubjectRightsRequestStage*) contentEstimate {
    static MSGraphSubjectRightsRequestStage *_contentEstimate;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _contentEstimate = [[MSGraphSubjectRightsRequestStage alloc] init];
        _contentEstimate.enumValue = MSGraphSubjectRightsRequestStageContentEstimate;
    });
    return _contentEstimate;
}
+ (MSGraphSubjectRightsRequestStage*) unknownFutureValue {
    static MSGraphSubjectRightsRequestStage *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphSubjectRightsRequestStage alloc] init];
        _unknownFutureValue.enumValue = MSGraphSubjectRightsRequestStageUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphSubjectRightsRequestStage*) UnknownEnumValue {
    static MSGraphSubjectRightsRequestStage *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphSubjectRightsRequestStage alloc] init];
        _unknownValue.enumValue = MSGraphSubjectRightsRequestStageEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphSubjectRightsRequestStage*) subjectRightsRequestStageWithEnumValue:(MSGraphSubjectRightsRequestStageValue)val {

    switch(val)
    {
        case MSGraphSubjectRightsRequestStageContentRetrieval:
            return [MSGraphSubjectRightsRequestStage contentRetrieval];
        case MSGraphSubjectRightsRequestStageContentReview:
            return [MSGraphSubjectRightsRequestStage contentReview];
        case MSGraphSubjectRightsRequestStageGenerateReport:
            return [MSGraphSubjectRightsRequestStage generateReport];
        case MSGraphSubjectRightsRequestStageContentDeletion:
            return [MSGraphSubjectRightsRequestStage contentDeletion];
        case MSGraphSubjectRightsRequestStageCaseResolved:
            return [MSGraphSubjectRightsRequestStage caseResolved];
        case MSGraphSubjectRightsRequestStageContentEstimate:
            return [MSGraphSubjectRightsRequestStage contentEstimate];
        case MSGraphSubjectRightsRequestStageUnknownFutureValue:
            return [MSGraphSubjectRightsRequestStage unknownFutureValue];
        case MSGraphSubjectRightsRequestStageEndOfEnum:
        default:
            return [MSGraphSubjectRightsRequestStage UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphSubjectRightsRequestStageContentRetrieval:
            return @"contentRetrieval";
        case MSGraphSubjectRightsRequestStageContentReview:
            return @"contentReview";
        case MSGraphSubjectRightsRequestStageGenerateReport:
            return @"generateReport";
        case MSGraphSubjectRightsRequestStageContentDeletion:
            return @"contentDeletion";
        case MSGraphSubjectRightsRequestStageCaseResolved:
            return @"caseResolved";
        case MSGraphSubjectRightsRequestStageContentEstimate:
            return @"contentEstimate";
        case MSGraphSubjectRightsRequestStageUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphSubjectRightsRequestStageEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphSubjectRightsRequestStageValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphSubjectRightsRequestStage)

- (MSGraphSubjectRightsRequestStage*) toMSGraphSubjectRightsRequestStage{

    if([self isEqualToString:@"contentRetrieval"])
    {
          return [MSGraphSubjectRightsRequestStage contentRetrieval];
    }
    else if([self isEqualToString:@"contentReview"])
    {
          return [MSGraphSubjectRightsRequestStage contentReview];
    }
    else if([self isEqualToString:@"generateReport"])
    {
          return [MSGraphSubjectRightsRequestStage generateReport];
    }
    else if([self isEqualToString:@"contentDeletion"])
    {
          return [MSGraphSubjectRightsRequestStage contentDeletion];
    }
    else if([self isEqualToString:@"caseResolved"])
    {
          return [MSGraphSubjectRightsRequestStage caseResolved];
    }
    else if([self isEqualToString:@"contentEstimate"])
    {
          return [MSGraphSubjectRightsRequestStage contentEstimate];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphSubjectRightsRequestStage unknownFutureValue];
    }
    else {
        return [MSGraphSubjectRightsRequestStage UnknownEnumValue];
    }
}

@end
