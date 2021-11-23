// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphConnectedOrganizationMembers()
{
    NSString* _connectedOrganizationId;
    NSString* _connectedOrganizationMembersDescription;
}
@end

@implementation MSGraphConnectedOrganizationMembers

- (NSString*) connectedOrganizationId
{
    if([[NSNull null] isEqual:self.dictionary[@"connectedOrganizationId"]])
    {
        return nil;
    }   
    return self.dictionary[@"connectedOrganizationId"];
}

- (void) setConnectedOrganizationId: (NSString*) val
{
    self.dictionary[@"connectedOrganizationId"] = val;
}

- (NSString*) connectedOrganizationMembersDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setConnectedOrganizationMembersDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

@end
