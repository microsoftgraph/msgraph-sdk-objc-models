// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphChannelIdentity()
{
    NSString* _channelId;
    NSString* _teamId;
}
@end

@implementation MSGraphChannelIdentity

- (NSString*) channelId
{
    if([[NSNull null] isEqual:self.dictionary[@"channelId"]])
    {
        return nil;
    }   
    return self.dictionary[@"channelId"];
}

- (void) setChannelId: (NSString*) val
{
    self.dictionary[@"channelId"] = val;
}

- (NSString*) teamId
{
    if([[NSNull null] isEqual:self.dictionary[@"teamId"]])
    {
        return nil;
    }   
    return self.dictionary[@"teamId"];
}

- (void) setTeamId: (NSString*) val
{
    self.dictionary[@"teamId"] = val;
}

@end
