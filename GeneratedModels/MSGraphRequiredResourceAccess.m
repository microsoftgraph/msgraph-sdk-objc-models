// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRequiredResourceAccess()
{
    NSArray* _resourceAccess;
    NSString* _resourceAppId;
}
@end

@implementation MSGraphRequiredResourceAccess

- (NSArray*) resourceAccess
{
    if(!_resourceAccess){
        
    NSMutableArray *resourceAccessResult = [NSMutableArray array];
    NSArray *resourceAccess = self.dictionary[@"resourceAccess"];

    if ([resourceAccess isKindOfClass:[NSArray class]]){
        for (id tempResourceAccess in resourceAccess){
            [resourceAccessResult addObject:tempResourceAccess];
        }
    }

    _resourceAccess = resourceAccessResult;
        
    }
    return _resourceAccess;
}

- (void) setResourceAccess: (NSArray*) val
{
    _resourceAccess = val;
    self.dictionary[@"resourceAccess"] = val;
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
