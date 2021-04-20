// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIdentityContainer()
{
    MSGraphConditionalAccessRoot* _conditionalAccess;
    NSArray* _apiConnectors;
    NSArray* _b2xUserFlows;
    NSArray* _userFlowAttributes;
}
@end

@implementation MSGraphIdentityContainer

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.identityContainer";
    }
    return self;
}
- (MSGraphConditionalAccessRoot*) conditionalAccess
{
    if(!_conditionalAccess){
        _conditionalAccess = [[MSGraphConditionalAccessRoot alloc] initWithDictionary: self.dictionary[@"conditionalAccess"]];
    }
    return _conditionalAccess;
}

- (void) setConditionalAccess: (MSGraphConditionalAccessRoot*) val
{
    _conditionalAccess = val;
    self.dictionary[@"conditionalAccess"] = val;
}

- (NSArray*) apiConnectors
{
    if(!_apiConnectors){
        
    NSMutableArray *apiConnectorsResult = [NSMutableArray array];
    NSArray *apiConnectors = self.dictionary[@"apiConnectors"];

    if ([apiConnectors isKindOfClass:[NSArray class]]){
        for (id tempIdentityApiConnector in apiConnectors){
            [apiConnectorsResult addObject:tempIdentityApiConnector];
        }
    }

    _apiConnectors = apiConnectorsResult;
        
    }
    return _apiConnectors;
}

- (void) setApiConnectors: (NSArray*) val
{
    _apiConnectors = val;
    self.dictionary[@"apiConnectors"] = val;
}

- (NSArray*) b2xUserFlows
{
    if(!_b2xUserFlows){
        
    NSMutableArray *b2xUserFlowsResult = [NSMutableArray array];
    NSArray *b2xUserFlows = self.dictionary[@"b2xUserFlows"];

    if ([b2xUserFlows isKindOfClass:[NSArray class]]){
        for (id tempB2xIdentityUserFlow in b2xUserFlows){
            [b2xUserFlowsResult addObject:tempB2xIdentityUserFlow];
        }
    }

    _b2xUserFlows = b2xUserFlowsResult;
        
    }
    return _b2xUserFlows;
}

- (void) setB2xUserFlows: (NSArray*) val
{
    _b2xUserFlows = val;
    self.dictionary[@"b2xUserFlows"] = val;
}

- (NSArray*) userFlowAttributes
{
    if(!_userFlowAttributes){
        
    NSMutableArray *userFlowAttributesResult = [NSMutableArray array];
    NSArray *userFlowAttributes = self.dictionary[@"userFlowAttributes"];

    if ([userFlowAttributes isKindOfClass:[NSArray class]]){
        for (id tempIdentityUserFlowAttribute in userFlowAttributes){
            [userFlowAttributesResult addObject:tempIdentityUserFlowAttribute];
        }
    }

    _userFlowAttributes = userFlowAttributesResult;
        
    }
    return _userFlowAttributes;
}

- (void) setUserFlowAttributes: (NSArray*) val
{
    _userFlowAttributes = val;
    self.dictionary[@"userFlowAttributes"] = val;
}


@end
