// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPrincipalResourceMembershipsScope()
{
    NSArray* _principalScopes;
    NSArray* _resourceScopes;
}
@end

@implementation MSGraphPrincipalResourceMembershipsScope

- (NSArray*) principalScopes
{
    if(!_principalScopes){
        
    NSMutableArray *principalScopesResult = [NSMutableArray array];
    NSArray *principalScopes = self.dictionary[@"principalScopes"];

    if ([principalScopes isKindOfClass:[NSArray class]]){
        for (id tempAccessReviewScope in principalScopes){
            [principalScopesResult addObject:tempAccessReviewScope];
        }
    }

    _principalScopes = principalScopesResult;
        
    }
    return _principalScopes;
}

- (void) setPrincipalScopes: (NSArray*) val
{
    _principalScopes = val;
    self.dictionary[@"principalScopes"] = val;
}

- (NSArray*) resourceScopes
{
    if(!_resourceScopes){
        
    NSMutableArray *resourceScopesResult = [NSMutableArray array];
    NSArray *resourceScopes = self.dictionary[@"resourceScopes"];

    if ([resourceScopes isKindOfClass:[NSArray class]]){
        for (id tempAccessReviewScope in resourceScopes){
            [resourceScopesResult addObject:tempAccessReviewScope];
        }
    }

    _resourceScopes = resourceScopesResult;
        
    }
    return _resourceScopes;
}

- (void) setResourceScopes: (NSArray*) val
{
    _resourceScopes = val;
    self.dictionary[@"resourceScopes"] = val;
}

@end
