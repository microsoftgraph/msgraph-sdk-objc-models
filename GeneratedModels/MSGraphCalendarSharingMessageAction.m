// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCalendarSharingMessageAction()
{
    MSGraphCalendarSharingAction* _action;
    MSGraphCalendarSharingActionType* _actionType;
    MSGraphCalendarSharingActionImportance* _importance;
}
@end

@implementation MSGraphCalendarSharingMessageAction

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

@end
