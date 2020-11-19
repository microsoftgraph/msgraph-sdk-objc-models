// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphInstanceResourceAccess()
{
    NSArray* _permissions;
    NSString* _resourceAppId;
}
@end

@implementation MSGraphInstanceResourceAccess

- (NSArray*) permissions
{
    if(!_permissions){
        
    NSMutableArray *permissionsResult = [NSMutableArray array];
    NSArray *permissions = self.dictionary[@"permissions"];

    if ([permissions isKindOfClass:[NSArray class]]){
        for (id tempResourcePermission in permissions){
            [permissionsResult addObject:tempResourcePermission];
        }
    }

    _permissions = permissionsResult;
        
    }
    return _permissions;
}

- (void) setPermissions: (NSArray*) val
{
    _permissions = val;
    self.dictionary[@"permissions"] = val;
}

- (NSString*) resourceAppId
{
    return self.dictionary[@"resourceAppId"];
}

- (void) setResourceAppId: (NSString*) val
{
    self.dictionary[@"resourceAppId"] = val;
}

@end
