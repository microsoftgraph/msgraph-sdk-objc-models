// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTeamworkApplicationIdentity()
{
    MSGraphTeamworkApplicationIdentityType* _applicationIdentityType;
}
@end

@implementation MSGraphTeamworkApplicationIdentity

- (MSGraphTeamworkApplicationIdentityType*) applicationIdentityType
{
    if(!_applicationIdentityType){
        _applicationIdentityType = [self.dictionary[@"applicationIdentityType"] toMSGraphTeamworkApplicationIdentityType];
    }
    return _applicationIdentityType;
}

- (void) setApplicationIdentityType: (MSGraphTeamworkApplicationIdentityType*) val
{
    _applicationIdentityType = val;
    self.dictionary[@"applicationIdentityType"] = val;
}

@end
