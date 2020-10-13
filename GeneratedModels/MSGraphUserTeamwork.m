// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUserTeamwork()
{
    NSArray* _installedApps;
}
@end

@implementation MSGraphUserTeamwork

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.userTeamwork";
    }
    return self;
}
- (NSArray*) installedApps
{
    if(!_installedApps){
        
    NSMutableArray *installedAppsResult = [NSMutableArray array];
    NSArray *installedApps = self.dictionary[@"installedApps"];

    if ([installedApps isKindOfClass:[NSArray class]]){
        for (id tempUserScopeTeamsAppInstallation in installedApps){
            [installedAppsResult addObject:tempUserScopeTeamsAppInstallation];
        }
    }

    _installedApps = installedAppsResult;
        
    }
    return _installedApps;
}

- (void) setInstalledApps: (NSArray*) val
{
    _installedApps = val;
    self.dictionary[@"installedApps"] = val;
}


@end
