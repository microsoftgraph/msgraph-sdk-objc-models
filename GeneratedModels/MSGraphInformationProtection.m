// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphInformationProtection()
{
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
- (NSString*) oDataType
{
    return self.dictionary[@"@odata.type"];
}
- (void) setODataType: (NSString*) val
{
    self.dictionary[@"@odata.type"] = val;
}
- (NSString*) oDataEtag
{
    return self.dictionary[@"@odata.etag"];
}
- (void) setODataEtag: (NSString*) val
{
    self.dictionary[@"@odata.etag"] = val;
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
