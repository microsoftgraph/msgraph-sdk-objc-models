// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIdentityProtectionRoot()
{
    NSArray* _riskDetections;
    NSArray* _riskyUsers;
}
@end

@implementation MSGraphIdentityProtectionRoot

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.identityProtectionRoot";
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
- (NSArray*) riskDetections
{
    if(!_riskDetections){
        
    NSMutableArray *riskDetectionsResult = [NSMutableArray array];
    NSArray *riskDetections = self.dictionary[@"riskDetections"];

    if ([riskDetections isKindOfClass:[NSArray class]]){
        for (id tempRiskDetection in riskDetections){
            [riskDetectionsResult addObject:tempRiskDetection];
        }
    }

    _riskDetections = riskDetectionsResult;
        
    }
    return _riskDetections;
}

- (void) setRiskDetections: (NSArray*) val
{
    _riskDetections = val;
    self.dictionary[@"riskDetections"] = val;
}

- (NSArray*) riskyUsers
{
    if(!_riskyUsers){
        
    NSMutableArray *riskyUsersResult = [NSMutableArray array];
    NSArray *riskyUsers = self.dictionary[@"riskyUsers"];

    if ([riskyUsers isKindOfClass:[NSArray class]]){
        for (id tempRiskyUser in riskyUsers){
            [riskyUsersResult addObject:tempRiskyUser];
        }
    }

    _riskyUsers = riskyUsersResult;
        
    }
    return _riskyUsers;
}

- (void) setRiskyUsers: (NSArray*) val
{
    _riskyUsers = val;
    self.dictionary[@"riskyUsers"] = val;
}


@end
