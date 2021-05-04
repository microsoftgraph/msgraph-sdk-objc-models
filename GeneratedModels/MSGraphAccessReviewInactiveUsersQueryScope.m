// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAccessReviewInactiveUsersQueryScope()
{
    MSDuration* _inactiveDuration;
}
@end

@implementation MSGraphAccessReviewInactiveUsersQueryScope

- (MSDuration*) inactiveDuration
{
    if(!_inactiveDuration){
        _inactiveDuration = [MSDuration ms_durationFromString: self.dictionary[@"inactiveDuration"]];
    }
    return _inactiveDuration;
}

- (void) setInactiveDuration: (MSDuration*) val
{
    _inactiveDuration = val;
    self.dictionary[@"inactiveDuration"] = val.durationString;
}

@end
