// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphConversationMember()
{
    NSArray* _roles;
    NSString* _displayName;
}
@end

@implementation MSGraphConversationMember

- (NSArray*) roles
{
    if([[NSNull null] isEqual:self.dictionary[@"roles"]])
    {
        return nil;
    }   
    return self.dictionary[@"roles"];
}

- (void) setRoles: (NSArray*) val
{
    self.dictionary[@"roles"] = val;
}

- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}


@end
