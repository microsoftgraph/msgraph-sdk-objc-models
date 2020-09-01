// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPasswordCredential()
{
    NSString* _customKeyIdentifier;
    NSString* _displayName;
    NSDate* _endDateTime;
    NSString* _hint;
    NSString* _keyId;
    NSString* _secretText;
    NSDate* _startDateTime;
}
@end

@implementation MSGraphPasswordCredential

- (NSString*) customKeyIdentifier
{
    if([[NSNull null] isEqual:self.dictionary[@"customKeyIdentifier"]])
    {
        return nil;
    }   
    return self.dictionary[@"customKeyIdentifier"];
}

- (void) setCustomKeyIdentifier: (NSString*) val
{
    self.dictionary[@"customKeyIdentifier"] = val;
}

- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSDate*) endDateTime
{
    if(!_endDateTime){
        _endDateTime = [NSDate ms_dateFromString: self.dictionary[@"endDateTime"]];
    }
    return _endDateTime;
}

- (void) setEndDateTime: (NSDate*) val
{
    _endDateTime = val;
    self.dictionary[@"endDateTime"] = [val ms_toString];
}

- (NSString*) hint
{
    if([[NSNull null] isEqual:self.dictionary[@"hint"]])
    {
        return nil;
    }   
    return self.dictionary[@"hint"];
}

- (void) setHint: (NSString*) val
{
    self.dictionary[@"hint"] = val;
}

- (NSString*) keyId
{
    if([[NSNull null] isEqual:self.dictionary[@"keyId"]])
    {
        return nil;
    }   
    return self.dictionary[@"keyId"];
}

- (void) setKeyId: (NSString*) val
{
    self.dictionary[@"keyId"] = val;
}

- (NSString*) secretText
{
    if([[NSNull null] isEqual:self.dictionary[@"secretText"]])
    {
        return nil;
    }   
    return self.dictionary[@"secretText"];
}

- (void) setSecretText: (NSString*) val
{
    self.dictionary[@"secretText"] = val;
}

- (NSDate*) startDateTime
{
    if(!_startDateTime){
        _startDateTime = [NSDate ms_dateFromString: self.dictionary[@"startDateTime"]];
    }
    return _startDateTime;
}

- (void) setStartDateTime: (NSDate*) val
{
    _startDateTime = val;
    self.dictionary[@"startDateTime"] = [val ms_toString];
}

@end
