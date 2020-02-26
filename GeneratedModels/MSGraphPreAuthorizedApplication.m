// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPreAuthorizedApplication()
{
    NSString* _appId;
    NSArray* _delegatedPermissionIds;
}
@end

@implementation MSGraphPreAuthorizedApplication

- (NSString*) appId
{
    if([[NSNull null] isEqual:self.dictionary[@"appId"]])
    {
        return nil;
    }   
    return self.dictionary[@"appId"];
}

- (void) setAppId: (NSString*) val
{
    self.dictionary[@"appId"] = val;
}

- (NSArray*) delegatedPermissionIds
{
    return self.dictionary[@"delegatedPermissionIds"];
}

- (void) setDelegatedPermissionIds: (NSArray*) val
{
    self.dictionary[@"delegatedPermissionIds"] = val;
}

@end
