// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAppConsentRequest()
{
    NSString* _appDisplayName;
    NSString* _appId;
    NSArray* _pendingScopes;
    NSArray* _userConsentRequests;
}
@end

@implementation MSGraphAppConsentRequest

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.appConsentRequest";
    }
    return self;
}
- (NSString*) appDisplayName
{
    if([[NSNull null] isEqual:self.dictionary[@"appDisplayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"appDisplayName"];
}

- (void) setAppDisplayName: (NSString*) val
{
    self.dictionary[@"appDisplayName"] = val;
}

- (NSString*) appId
{
    return self.dictionary[@"appId"];
}

- (void) setAppId: (NSString*) val
{
    self.dictionary[@"appId"] = val;
}

- (NSArray*) pendingScopes
{
    if(!_pendingScopes){
        
    NSMutableArray *pendingScopesResult = [NSMutableArray array];
    NSArray *pendingScopes = self.dictionary[@"pendingScopes"];

    if ([pendingScopes isKindOfClass:[NSArray class]]){
        for (id tempAppConsentRequestScope in pendingScopes){
            [pendingScopesResult addObject:tempAppConsentRequestScope];
        }
    }

    _pendingScopes = pendingScopesResult;
        
    }
    return _pendingScopes;
}

- (void) setPendingScopes: (NSArray*) val
{
    _pendingScopes = val;
    self.dictionary[@"pendingScopes"] = val;
}

- (NSArray*) userConsentRequests
{
    if(!_userConsentRequests){
        
    NSMutableArray *userConsentRequestsResult = [NSMutableArray array];
    NSArray *userConsentRequests = self.dictionary[@"userConsentRequests"];

    if ([userConsentRequests isKindOfClass:[NSArray class]]){
        for (id tempUserConsentRequest in userConsentRequests){
            [userConsentRequestsResult addObject:tempUserConsentRequest];
        }
    }

    _userConsentRequests = userConsentRequestsResult;
        
    }
    return _userConsentRequests;
}

- (void) setUserConsentRequests: (NSArray*) val
{
    _userConsentRequests = val;
    self.dictionary[@"userConsentRequests"] = val;
}


@end
