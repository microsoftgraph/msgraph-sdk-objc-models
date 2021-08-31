// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphServiceUpdateMessage()
{
    NSDate* _actionRequiredByDateTime;
    MSGraphItemBody* _body;
    MSGraphServiceUpdateCategory* _category;
    BOOL _isMajorChange;
    NSArray* _services;
    MSGraphServiceUpdateSeverity* _severity;
    NSArray* _tags;
    MSGraphServiceUpdateMessageViewpoint* _viewPoint;
}
@end

@implementation MSGraphServiceUpdateMessage

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.serviceUpdateMessage";
    }
    return self;
}
- (NSDate*) actionRequiredByDateTime
{
    if(!_actionRequiredByDateTime){
        _actionRequiredByDateTime = [NSDate ms_dateFromString: self.dictionary[@"actionRequiredByDateTime"]];
    }
    return _actionRequiredByDateTime;
}

- (void) setActionRequiredByDateTime: (NSDate*) val
{
    _actionRequiredByDateTime = val;
    self.dictionary[@"actionRequiredByDateTime"] = [val ms_toString];
}

- (MSGraphItemBody*) body
{
    if(!_body){
        _body = [[MSGraphItemBody alloc] initWithDictionary: self.dictionary[@"body"]];
    }
    return _body;
}

- (void) setBody: (MSGraphItemBody*) val
{
    _body = val;
    self.dictionary[@"body"] = val;
}

- (MSGraphServiceUpdateCategory*) category
{
    if(!_category){
        _category = [self.dictionary[@"category"] toMSGraphServiceUpdateCategory];
    }
    return _category;
}

- (void) setCategory: (MSGraphServiceUpdateCategory*) val
{
    _category = val;
    self.dictionary[@"category"] = val;
}

- (BOOL) isMajorChange
{
    _isMajorChange = [self.dictionary[@"isMajorChange"] boolValue];
    return _isMajorChange;
}

- (void) setIsMajorChange: (BOOL) val
{
    _isMajorChange = val;
    self.dictionary[@"isMajorChange"] = @(val);
}

- (NSArray*) services
{
    if([[NSNull null] isEqual:self.dictionary[@"services"]])
    {
        return nil;
    }   
    return self.dictionary[@"services"];
}

- (void) setServices: (NSArray*) val
{
    self.dictionary[@"services"] = val;
}

- (MSGraphServiceUpdateSeverity*) severity
{
    if(!_severity){
        _severity = [self.dictionary[@"severity"] toMSGraphServiceUpdateSeverity];
    }
    return _severity;
}

- (void) setSeverity: (MSGraphServiceUpdateSeverity*) val
{
    _severity = val;
    self.dictionary[@"severity"] = val;
}

- (NSArray*) tags
{
    if([[NSNull null] isEqual:self.dictionary[@"tags"]])
    {
        return nil;
    }   
    return self.dictionary[@"tags"];
}

- (void) setTags: (NSArray*) val
{
    self.dictionary[@"tags"] = val;
}

- (MSGraphServiceUpdateMessageViewpoint*) viewPoint
{
    if(!_viewPoint){
        _viewPoint = [[MSGraphServiceUpdateMessageViewpoint alloc] initWithDictionary: self.dictionary[@"viewPoint"]];
    }
    return _viewPoint;
}

- (void) setViewPoint: (MSGraphServiceUpdateMessageViewpoint*) val
{
    _viewPoint = val;
    self.dictionary[@"viewPoint"] = val;
}


@end
