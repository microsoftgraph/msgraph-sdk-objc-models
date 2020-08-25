// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphChannel()
{
    NSString* _displayName;
    NSString* _channelDescription;
    NSString* _email;
    NSString* _webUrl;
    NSArray* _messages;
    NSArray* _tabs;
    MSGraphDriveItem* _filesFolder;
}
@end

@implementation MSGraphChannel

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.channel";
    }
    return self;
}
- (NSString*) displayName
{
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSString*) channelDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setChannelDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSString*) email
{
    if([[NSNull null] isEqual:self.dictionary[@"email"]])
    {
        return nil;
    }   
    return self.dictionary[@"email"];
}

- (void) setEmail: (NSString*) val
{
    self.dictionary[@"email"] = val;
}

- (NSString*) webUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"webUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"webUrl"];
}

- (void) setWebUrl: (NSString*) val
{
    self.dictionary[@"webUrl"] = val;
}

- (NSArray*) messages
{
    if(!_messages){
        
    NSMutableArray *messagesResult = [NSMutableArray array];
    NSArray *messages = self.dictionary[@"messages"];

    if ([messages isKindOfClass:[NSArray class]]){
        for (id tempChatMessage in messages){
            [messagesResult addObject:tempChatMessage];
        }
    }

    _messages = messagesResult;
        
    }
    return _messages;
}

- (void) setMessages: (NSArray*) val
{
    _messages = val;
    self.dictionary[@"messages"] = val;
}

- (NSArray*) tabs
{
    if(!_tabs){
        
    NSMutableArray *tabsResult = [NSMutableArray array];
    NSArray *tabs = self.dictionary[@"tabs"];

    if ([tabs isKindOfClass:[NSArray class]]){
        for (id tempTeamsTab in tabs){
            [tabsResult addObject:tempTeamsTab];
        }
    }

    _tabs = tabsResult;
        
    }
    return _tabs;
}

- (void) setTabs: (NSArray*) val
{
    _tabs = val;
    self.dictionary[@"tabs"] = val;
}

- (MSGraphDriveItem*) filesFolder
{
    if(!_filesFolder){
        _filesFolder = [[MSGraphDriveItem alloc] initWithDictionary: self.dictionary[@"filesFolder"]];
    }
    return _filesFolder;
}

- (void) setFilesFolder: (MSGraphDriveItem*) val
{
    _filesFolder = val;
    self.dictionary[@"filesFolder"] = val;
}


@end
