// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUserScopeTeamsAppInstallation()
{
    MSGraphChat* _chat;
}
@end

@implementation MSGraphUserScopeTeamsAppInstallation

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.userScopeTeamsAppInstallation";
    }
    return self;
}
- (MSGraphChat*) chat
{
    if(!_chat){
        _chat = [[MSGraphChat alloc] initWithDictionary: self.dictionary[@"chat"]];
    }
    return _chat;
}

- (void) setChat: (MSGraphChat*) val
{
    _chat = val;
    self.dictionary[@"chat"] = val;
}


@end
