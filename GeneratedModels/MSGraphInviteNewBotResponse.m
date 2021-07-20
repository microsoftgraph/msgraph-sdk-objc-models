// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphInviteNewBotResponse()
{
    NSString* _inviteUri;
}
@end

@implementation MSGraphInviteNewBotResponse

- (NSString*) inviteUri
{
    if([[NSNull null] isEqual:self.dictionary[@"inviteUri"]])
    {
        return nil;
    }   
    return self.dictionary[@"inviteUri"];
}

- (void) setInviteUri: (NSString*) val
{
    self.dictionary[@"inviteUri"] = val;
}

@end
