// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWin32LobAppRule()
{
    MSGraphWin32LobAppRuleType* _ruleType;
}
@end

@implementation MSGraphWin32LobAppRule

- (MSGraphWin32LobAppRuleType*) ruleType
{
    if(!_ruleType){
        _ruleType = [self.dictionary[@"ruleType"] toMSGraphWin32LobAppRuleType];
    }
    return _ruleType;
}

- (void) setRuleType: (MSGraphWin32LobAppRuleType*) val
{
    _ruleType = val;
    self.dictionary[@"ruleType"] = val;
}

@end
