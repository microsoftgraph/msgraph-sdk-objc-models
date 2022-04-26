// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRelatedContact()
{
    BOOL _accessConsent;
    NSString* _displayName;
    NSString* _emailAddress;
    NSString* _mobilePhone;
    MSGraphContactRelationship* _relationship;
}
@end

@implementation MSGraphRelatedContact

- (BOOL) accessConsent
{
    _accessConsent = [self.dictionary[@"accessConsent"] boolValue];
    return _accessConsent;
}

- (void) setAccessConsent: (BOOL) val
{
    _accessConsent = val;
    self.dictionary[@"accessConsent"] = @(val);
}

- (NSString*) displayName
{
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSString*) emailAddress
{
    return self.dictionary[@"emailAddress"];
}

- (void) setEmailAddress: (NSString*) val
{
    self.dictionary[@"emailAddress"] = val;
}

- (NSString*) mobilePhone
{
    if([[NSNull null] isEqual:self.dictionary[@"mobilePhone"]])
    {
        return nil;
    }   
    return self.dictionary[@"mobilePhone"];
}

- (void) setMobilePhone: (NSString*) val
{
    self.dictionary[@"mobilePhone"] = val;
}

- (MSGraphContactRelationship*) relationship
{
    if(!_relationship){
        _relationship = [self.dictionary[@"relationship"] toMSGraphContactRelationship];
    }
    return _relationship;
}

- (void) setRelationship: (MSGraphContactRelationship*) val
{
    _relationship = val;
    self.dictionary[@"relationship"] = val;
}

@end
