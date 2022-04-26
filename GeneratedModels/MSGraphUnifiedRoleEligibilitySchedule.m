// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUnifiedRoleEligibilitySchedule()
{
    NSString* _memberType;
    MSGraphRequestSchedule* _scheduleInfo;
}
@end

@implementation MSGraphUnifiedRoleEligibilitySchedule

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.unifiedRoleEligibilitySchedule";
    }
    return self;
}
- (NSString*) memberType
{
    if([[NSNull null] isEqual:self.dictionary[@"memberType"]])
    {
        return nil;
    }   
    return self.dictionary[@"memberType"];
}

- (void) setMemberType: (NSString*) val
{
    self.dictionary[@"memberType"] = val;
}

- (MSGraphRequestSchedule*) scheduleInfo
{
    if(!_scheduleInfo){
        _scheduleInfo = [[MSGraphRequestSchedule alloc] initWithDictionary: self.dictionary[@"scheduleInfo"]];
    }
    return _scheduleInfo;
}

- (void) setScheduleInfo: (MSGraphRequestSchedule*) val
{
    _scheduleInfo = val;
    self.dictionary[@"scheduleInfo"] = val;
}


@end
