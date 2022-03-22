// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEducationAssignmentDefaults()
{
    MSGraphEducationAddedStudentAction* _addedStudentAction;
    MSGraphEducationAddToCalendarOptions* _addToCalendarAction;
    MSTimeOfDay* _dueTime;
    NSString* _notificationChannelUrl;
}
@end

@implementation MSGraphEducationAssignmentDefaults

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.educationAssignmentDefaults";
    }
    return self;
}
- (MSGraphEducationAddedStudentAction*) addedStudentAction
{
    if(!_addedStudentAction){
        _addedStudentAction = [self.dictionary[@"addedStudentAction"] toMSGraphEducationAddedStudentAction];
    }
    return _addedStudentAction;
}

- (void) setAddedStudentAction: (MSGraphEducationAddedStudentAction*) val
{
    _addedStudentAction = val;
    self.dictionary[@"addedStudentAction"] = val;
}

- (MSGraphEducationAddToCalendarOptions*) addToCalendarAction
{
    if(!_addToCalendarAction){
        _addToCalendarAction = [self.dictionary[@"addToCalendarAction"] toMSGraphEducationAddToCalendarOptions];
    }
    return _addToCalendarAction;
}

- (void) setAddToCalendarAction: (MSGraphEducationAddToCalendarOptions*) val
{
    _addToCalendarAction = val;
    self.dictionary[@"addToCalendarAction"] = val;
}

- (MSTimeOfDay*) dueTime
{
    if(!_dueTime){
        _dueTime = [MSTimeOfDay ms_timeFromString: self.dictionary[@"dueTime"]];
    }
    return _dueTime;
}

- (void) setDueTime: (MSTimeOfDay*) val
{
    _dueTime = val;
    self.dictionary[@"dueTime"] = [val ms_toString];
}

- (NSString*) notificationChannelUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"notificationChannelUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"notificationChannelUrl"];
}

- (void) setNotificationChannelUrl: (NSString*) val
{
    self.dictionary[@"notificationChannelUrl"] = val;
}


@end
