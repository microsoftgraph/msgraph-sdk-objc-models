// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphThreatAssessmentRequest()
{
    NSDate* _createdDateTime;
    MSGraphThreatAssessmentContentType* _contentType;
    MSGraphThreatExpectedAssessment* _expectedAssessment;
    MSGraphThreatCategory* _category;
    MSGraphThreatAssessmentStatus* _status;
    MSGraphThreatAssessmentRequestSource* _requestSource;
    MSGraphIdentitySet* _createdBy;
    NSArray* _results;
}
@end

@implementation MSGraphThreatAssessmentRequest

- (NSDate*) createdDateTime
{
    if(!_createdDateTime){
        _createdDateTime = [NSDate ms_dateFromString: self.dictionary[@"createdDateTime"]];
    }
    return _createdDateTime;
}

- (void) setCreatedDateTime: (NSDate*) val
{
    _createdDateTime = val;
    self.dictionary[@"createdDateTime"] = [val ms_toString];
}

- (MSGraphThreatAssessmentContentType*) contentType
{
    if(!_contentType){
        _contentType = [self.dictionary[@"contentType"] toMSGraphThreatAssessmentContentType];
    }
    return _contentType;
}

- (void) setContentType: (MSGraphThreatAssessmentContentType*) val
{
    _contentType = val;
    self.dictionary[@"contentType"] = val;
}

- (MSGraphThreatExpectedAssessment*) expectedAssessment
{
    if(!_expectedAssessment){
        _expectedAssessment = [self.dictionary[@"expectedAssessment"] toMSGraphThreatExpectedAssessment];
    }
    return _expectedAssessment;
}

- (void) setExpectedAssessment: (MSGraphThreatExpectedAssessment*) val
{
    _expectedAssessment = val;
    self.dictionary[@"expectedAssessment"] = val;
}

- (MSGraphThreatCategory*) category
{
    if(!_category){
        _category = [self.dictionary[@"category"] toMSGraphThreatCategory];
    }
    return _category;
}

- (void) setCategory: (MSGraphThreatCategory*) val
{
    _category = val;
    self.dictionary[@"category"] = val;
}

- (MSGraphThreatAssessmentStatus*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphThreatAssessmentStatus];
    }
    return _status;
}

- (void) setStatus: (MSGraphThreatAssessmentStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

- (MSGraphThreatAssessmentRequestSource*) requestSource
{
    if(!_requestSource){
        _requestSource = [self.dictionary[@"requestSource"] toMSGraphThreatAssessmentRequestSource];
    }
    return _requestSource;
}

- (void) setRequestSource: (MSGraphThreatAssessmentRequestSource*) val
{
    _requestSource = val;
    self.dictionary[@"requestSource"] = val;
}

- (MSGraphIdentitySet*) createdBy
{
    if(!_createdBy){
        _createdBy = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"createdBy"]];
    }
    return _createdBy;
}

- (void) setCreatedBy: (MSGraphIdentitySet*) val
{
    _createdBy = val;
    self.dictionary[@"createdBy"] = val;
}

- (NSArray*) results
{
    if(!_results){
        
    NSMutableArray *resultsResult = [NSMutableArray array];
    NSArray *results = self.dictionary[@"results"];

    if ([results isKindOfClass:[NSArray class]]){
        for (id tempThreatAssessmentResult in results){
            [resultsResult addObject:tempThreatAssessmentResult];
        }
    }

    _results = resultsResult;
        
    }
    return _results;
}

- (void) setResults: (NSArray*) val
{
    _results = val;
    self.dictionary[@"results"] = val;
}


@end
