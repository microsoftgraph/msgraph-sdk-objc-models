// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphInformationProtection()
{
    MSGraphBitlocker* _bitlocker;
    NSArray* _threatAssessmentRequests;
}
@end

@implementation MSGraphInformationProtection

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.informationProtection";
    }
    return self;
}
- (MSGraphBitlocker*) bitlocker
{
    if(!_bitlocker){
        _bitlocker = [[MSGraphBitlocker alloc] initWithDictionary: self.dictionary[@"bitlocker"]];
    }
    return _bitlocker;
}

- (void) setBitlocker: (MSGraphBitlocker*) val
{
    _bitlocker = val;
    self.dictionary[@"bitlocker"] = val;
}

- (NSArray*) threatAssessmentRequests
{
    if(!_threatAssessmentRequests){
        
    NSMutableArray *threatAssessmentRequestsResult = [NSMutableArray array];
    NSArray *threatAssessmentRequests = self.dictionary[@"threatAssessmentRequests"];

    if ([threatAssessmentRequests isKindOfClass:[NSArray class]]){
        for (id tempThreatAssessmentRequest in threatAssessmentRequests){
            [threatAssessmentRequestsResult addObject:tempThreatAssessmentRequest];
        }
    }

    _threatAssessmentRequests = threatAssessmentRequestsResult;
        
    }
    return _threatAssessmentRequests;
}

- (void) setThreatAssessmentRequests: (NSArray*) val
{
    _threatAssessmentRequests = val;
    self.dictionary[@"threatAssessmentRequests"] = val;
}


@end
