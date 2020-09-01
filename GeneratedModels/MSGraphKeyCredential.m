// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphKeyCredential()
{
    NSString* _customKeyIdentifier;
    NSString* _displayName;
    NSDate* _endDateTime;
    NSString* _key;
    NSString* _keyId;
    NSDate* _startDateTime;
    NSString* _type;
    NSString* _usage;
}
@end

@implementation MSGraphKeyCredential

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

- (NSString*) key
{
    if([[NSNull null] isEqual:self.dictionary[@"key"]])
    {
        return nil;
    }   
    return self.dictionary[@"key"];
}

- (void) setKey: (NSString*) val
{
    self.dictionary[@"key"] = val;
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

- (NSString*) type
{
    if([[NSNull null] isEqual:self.dictionary[@"type"]])
    {
        return nil;
    }   
    return self.dictionary[@"type"];
}

- (void) setType: (NSString*) val
{
    self.dictionary[@"type"] = val;
}

- (NSString*) usage
{
    if([[NSNull null] isEqual:self.dictionary[@"usage"]])
    {
        return nil;
    }   
    return self.dictionary[@"usage"];
}

- (void) setUsage: (NSString*) val
{
    self.dictionary[@"usage"] = val;
}

@end
