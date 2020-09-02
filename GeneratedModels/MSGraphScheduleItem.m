// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphScheduleItem()
{
    MSGraphDateTimeTimeZone* _end;
    BOOL _isPrivate;
    NSString* _location;
    MSGraphDateTimeTimeZone* _start;
    MSGraphFreeBusyStatus* _status;
    NSString* _subject;
}
@end

@implementation MSGraphScheduleItem

- (MSGraphDateTimeTimeZone*) end
{
    if(!_end){
        _end = [[MSGraphDateTimeTimeZone alloc] initWithDictionary: self.dictionary[@"end"]];
    }
    return _end;
}

- (void) setEnd: (MSGraphDateTimeTimeZone*) val
{
    _end = val;
    self.dictionary[@"end"] = val;
}

- (BOOL) isPrivate
{
    _isPrivate = [self.dictionary[@"isPrivate"] boolValue];
    return _isPrivate;
}

- (void) setIsPrivate: (BOOL) val
{
    _isPrivate = val;
    self.dictionary[@"isPrivate"] = @(val);
}

- (NSString*) location
{
    if([[NSNull null] isEqual:self.dictionary[@"location"]])
    {
        return nil;
    }   
    return self.dictionary[@"location"];
}

- (void) setLocation: (NSString*) val
{
    self.dictionary[@"location"] = val;
}

- (MSGraphDateTimeTimeZone*) start
{
    if(!_start){
        _start = [[MSGraphDateTimeTimeZone alloc] initWithDictionary: self.dictionary[@"start"]];
    }
    return _start;
}

- (void) setStart: (MSGraphDateTimeTimeZone*) val
{
    _start = val;
    self.dictionary[@"start"] = val;
}

- (MSGraphFreeBusyStatus*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphFreeBusyStatus];
    }
    return _status;
}

- (void) setStatus: (MSGraphFreeBusyStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

- (NSString*) subject
{
    if([[NSNull null] isEqual:self.dictionary[@"subject"]])
    {
        return nil;
    }   
    return self.dictionary[@"subject"];
}

- (void) setSubject: (NSString*) val
{
    self.dictionary[@"subject"] = val;
}

@end
