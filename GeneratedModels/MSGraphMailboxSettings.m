// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMailboxSettings()
{
    NSString* _archiveFolder;
    MSGraphAutomaticRepliesSetting* _automaticRepliesSetting;
    NSString* _dateFormat;
    MSGraphDelegateMeetingMessageDeliveryOptions* _delegateMeetingMessageDeliveryOptions;
    MSGraphLocaleInfo* _language;
    NSString* _timeFormat;
    NSString* _timeZone;
    MSGraphUserPurpose* _userPurpose;
    MSGraphWorkingHours* _workingHours;
}
@end

@implementation MSGraphMailboxSettings

- (NSString*) archiveFolder
{
    if([[NSNull null] isEqual:self.dictionary[@"archiveFolder"]])
    {
        return nil;
    }   
    return self.dictionary[@"archiveFolder"];
}

- (void) setArchiveFolder: (NSString*) val
{
    self.dictionary[@"archiveFolder"] = val;
}

- (MSGraphAutomaticRepliesSetting*) automaticRepliesSetting
{
    if(!_automaticRepliesSetting){
        _automaticRepliesSetting = [[MSGraphAutomaticRepliesSetting alloc] initWithDictionary: self.dictionary[@"automaticRepliesSetting"]];
    }
    return _automaticRepliesSetting;
}

- (void) setAutomaticRepliesSetting: (MSGraphAutomaticRepliesSetting*) val
{
    _automaticRepliesSetting = val;
    self.dictionary[@"automaticRepliesSetting"] = val;
}

- (NSString*) dateFormat
{
    if([[NSNull null] isEqual:self.dictionary[@"dateFormat"]])
    {
        return nil;
    }   
    return self.dictionary[@"dateFormat"];
}

- (void) setDateFormat: (NSString*) val
{
    self.dictionary[@"dateFormat"] = val;
}

- (MSGraphDelegateMeetingMessageDeliveryOptions*) delegateMeetingMessageDeliveryOptions
{
    if(!_delegateMeetingMessageDeliveryOptions){
        _delegateMeetingMessageDeliveryOptions = [self.dictionary[@"delegateMeetingMessageDeliveryOptions"] toMSGraphDelegateMeetingMessageDeliveryOptions];
    }
    return _delegateMeetingMessageDeliveryOptions;
}

- (void) setDelegateMeetingMessageDeliveryOptions: (MSGraphDelegateMeetingMessageDeliveryOptions*) val
{
    _delegateMeetingMessageDeliveryOptions = val;
    self.dictionary[@"delegateMeetingMessageDeliveryOptions"] = val;
}

- (MSGraphLocaleInfo*) language
{
    if(!_language){
        _language = [[MSGraphLocaleInfo alloc] initWithDictionary: self.dictionary[@"language"]];
    }
    return _language;
}

- (void) setLanguage: (MSGraphLocaleInfo*) val
{
    _language = val;
    self.dictionary[@"language"] = val;
}

- (NSString*) timeFormat
{
    if([[NSNull null] isEqual:self.dictionary[@"timeFormat"]])
    {
        return nil;
    }   
    return self.dictionary[@"timeFormat"];
}

- (void) setTimeFormat: (NSString*) val
{
    self.dictionary[@"timeFormat"] = val;
}

- (NSString*) timeZone
{
    if([[NSNull null] isEqual:self.dictionary[@"timeZone"]])
    {
        return nil;
    }   
    return self.dictionary[@"timeZone"];
}

- (void) setTimeZone: (NSString*) val
{
    self.dictionary[@"timeZone"] = val;
}

- (MSGraphUserPurpose*) userPurpose
{
    if(!_userPurpose){
        _userPurpose = [self.dictionary[@"userPurpose"] toMSGraphUserPurpose];
    }
    return _userPurpose;
}

- (void) setUserPurpose: (MSGraphUserPurpose*) val
{
    _userPurpose = val;
    self.dictionary[@"userPurpose"] = val;
}

- (MSGraphWorkingHours*) workingHours
{
    if(!_workingHours){
        _workingHours = [[MSGraphWorkingHours alloc] initWithDictionary: self.dictionary[@"workingHours"]];
    }
    return _workingHours;
}

- (void) setWorkingHours: (MSGraphWorkingHours*) val
{
    _workingHours = val;
    self.dictionary[@"workingHours"] = val;
}

@end
