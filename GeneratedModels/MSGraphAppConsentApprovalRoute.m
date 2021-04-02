// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAppConsentApprovalRoute()
{
    NSArray* _appConsentRequests;
}
@end

@implementation MSGraphAppConsentApprovalRoute

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.appConsentApprovalRoute";
    }
    return self;
}
- (NSArray*) appConsentRequests
{
    if(!_appConsentRequests){
        
    NSMutableArray *appConsentRequestsResult = [NSMutableArray array];
    NSArray *appConsentRequests = self.dictionary[@"appConsentRequests"];

    if ([appConsentRequests isKindOfClass:[NSArray class]]){
        for (id tempAppConsentRequest in appConsentRequests){
            [appConsentRequestsResult addObject:tempAppConsentRequest];
        }
    }

    _appConsentRequests = appConsentRequestsResult;
        
    }
    return _appConsentRequests;
}

- (void) setAppConsentRequests: (NSArray*) val
{
    _appConsentRequests = val;
    self.dictionary[@"appConsentRequests"] = val;
}


@end
