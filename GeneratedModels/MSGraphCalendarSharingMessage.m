// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCalendarSharingMessage()
{
    BOOL _canAccept;
    NSString* _suggestedCalendarName;
    MSGraphCalendarSharingMessageAction* _sharingMessageAction;
    NSArray* _sharingMessageActions;
}
@end

@implementation MSGraphCalendarSharingMessage

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.calendarSharingMessage";
    }
    return self;
}
- (BOOL) canAccept
{
    _canAccept = [self.dictionary[@"canAccept"] boolValue];
    return _canAccept;
}

- (void) setCanAccept: (BOOL) val
{
    _canAccept = val;
    self.dictionary[@"canAccept"] = @(val);
}

- (NSString*) suggestedCalendarName
{
    if([[NSNull null] isEqual:self.dictionary[@"suggestedCalendarName"]])
    {
        return nil;
    }   
    return self.dictionary[@"suggestedCalendarName"];
}

- (void) setSuggestedCalendarName: (NSString*) val
{
    self.dictionary[@"suggestedCalendarName"] = val;
}

- (MSGraphCalendarSharingMessageAction*) sharingMessageAction
{
    if(!_sharingMessageAction){
        _sharingMessageAction = [[MSGraphCalendarSharingMessageAction alloc] initWithDictionary: self.dictionary[@"sharingMessageAction"]];
    }
    return _sharingMessageAction;
}

- (void) setSharingMessageAction: (MSGraphCalendarSharingMessageAction*) val
{
    _sharingMessageAction = val;
    self.dictionary[@"sharingMessageAction"] = val;
}

- (NSArray*) sharingMessageActions
{
    if(!_sharingMessageActions){
        
    NSMutableArray *sharingMessageActionsResult = [NSMutableArray array];
    NSArray *sharingMessageActions = self.dictionary[@"sharingMessageActions"];

    if ([sharingMessageActions isKindOfClass:[NSArray class]]){
        for (id tempCalendarSharingMessageAction in sharingMessageActions){
            [sharingMessageActionsResult addObject:tempCalendarSharingMessageAction];
        }
    }

    _sharingMessageActions = sharingMessageActionsResult;
        
    }
    return _sharingMessageActions;
}

- (void) setSharingMessageActions: (NSArray*) val
{
    _sharingMessageActions = val;
    self.dictionary[@"sharingMessageActions"] = val;
}


@end
