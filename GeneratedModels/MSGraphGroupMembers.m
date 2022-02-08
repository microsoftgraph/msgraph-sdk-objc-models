// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphGroupMembers()
{
    NSString* _groupMembersDescription;
    NSString* _groupId;
}
@end

@implementation MSGraphGroupMembers

- (NSString*) groupMembersDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setGroupMembersDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSString*) groupId
{
    if([[NSNull null] isEqual:self.dictionary[@"groupId"]])
    {
        return nil;
    }   
    return self.dictionary[@"groupId"];
}

- (void) setGroupId: (NSString*) val
{
    self.dictionary[@"groupId"] = val;
}

@end
