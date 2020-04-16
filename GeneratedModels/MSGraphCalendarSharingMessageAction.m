// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCalendarSharingMessageAction()
{
    MSGraphCalendarSharingActionImportance* _importance;
    MSGraphCalendarSharingActionType* _actionType;
    MSGraphCalendarSharingAction* _action;
}
@end

@implementation MSGraphCalendarSharingMessageAction

- (MSGraphCalendarSharingActionImportance*) importance
{
    if(!_importance){
        _importance = [self.dictionary[@"importance"] toMSGraphCalendarSharingActionImportance];
    }
    return _importance;
}

- (void) setImportance: (MSGraphCalendarSharingActionImportance*) val
{
    _importance = val;
    self.dictionary[@"importance"] = val;
}

- (MSGraphCalendarSharingActionType*) actionType
{
    if(!_actionType){
        _actionType = [self.dictionary[@"actionType"] toMSGraphCalendarSharingActionType];
    }
    return _actionType;
}

- (void) setActionType: (MSGraphCalendarSharingActionType*) val
{
    _actionType = val;
    self.dictionary[@"actionType"] = val;
}

- (MSGraphCalendarSharingAction*) action
{
    if(!_action){
        _action = [self.dictionary[@"action"] toMSGraphCalendarSharingAction];
    }
    return _action;
}

- (void) setAction: (MSGraphCalendarSharingAction*) val
{
    _action = val;
    self.dictionary[@"action"] = val;
}

@end
