// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPrivacy()
{
    NSArray* _subjectRightsRequests;
}
@end

@implementation MSGraphPrivacy

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.privacy";
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
- (NSArray*) subjectRightsRequests
{
    if(!_subjectRightsRequests){
        
    NSMutableArray *subjectRightsRequestsResult = [NSMutableArray array];
    NSArray *subjectRightsRequests = self.dictionary[@"subjectRightsRequests"];

    if ([subjectRightsRequests isKindOfClass:[NSArray class]]){
        for (id tempSubjectRightsRequest in subjectRightsRequests){
            [subjectRightsRequestsResult addObject:tempSubjectRightsRequest];
        }
    }

    _subjectRightsRequests = subjectRightsRequestsResult;
        
    }
    return _subjectRightsRequests;
}

- (void) setSubjectRightsRequests: (NSArray*) val
{
    _subjectRightsRequests = val;
    self.dictionary[@"subjectRightsRequests"] = val;
}


@end
