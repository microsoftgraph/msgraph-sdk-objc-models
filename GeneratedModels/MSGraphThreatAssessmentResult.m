// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphThreatAssessmentResult()
{
    NSDate* _createdDateTime;
    NSString* _message;
    MSGraphThreatAssessmentResultType* _resultType;
}
@end

@implementation MSGraphThreatAssessmentResult

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.threatAssessmentResult";
    }
    return self;
}
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

- (NSString*) message
{
    if([[NSNull null] isEqual:self.dictionary[@"message"]])
    {
        return nil;
    }   
    return self.dictionary[@"message"];
}

- (void) setMessage: (NSString*) val
{
    self.dictionary[@"message"] = val;
}

- (MSGraphThreatAssessmentResultType*) resultType
{
    if(!_resultType){
        _resultType = [self.dictionary[@"resultType"] toMSGraphThreatAssessmentResultType];
    }
    return _resultType;
}

- (void) setResultType: (MSGraphThreatAssessmentResultType*) val
{
    _resultType = val;
    self.dictionary[@"resultType"] = val;
}


@end
