// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphParticipantInfo()
{
    MSGraphIdentitySet* _identity;
    MSGraphEndpointType* _endpointType;
    NSString* _region;
    NSString* _languageId;
    NSString* _countryCode;
}
@end

@implementation MSGraphParticipantInfo

- (MSGraphIdentitySet*) identity
{
    if(!_identity){
        _identity = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"identity"]];
    }
    return _identity;
}

- (void) setIdentity: (MSGraphIdentitySet*) val
{
    _identity = val;
    self.dictionary[@"identity"] = val;
}

- (MSGraphEndpointType*) endpointType
{
    if(!_endpointType){
        _endpointType = [self.dictionary[@"endpointType"] toMSGraphEndpointType];
    }
    return _endpointType;
}

- (void) setEndpointType: (MSGraphEndpointType*) val
{
    _endpointType = val;
    self.dictionary[@"endpointType"] = val;
}

- (NSString*) region
{
    if([[NSNull null] isEqual:self.dictionary[@"region"]])
    {
        return nil;
    }   
    return self.dictionary[@"region"];
}

- (void) setRegion: (NSString*) val
{
    self.dictionary[@"region"] = val;
}

- (NSString*) languageId
{
    if([[NSNull null] isEqual:self.dictionary[@"languageId"]])
    {
        return nil;
    }   
    return self.dictionary[@"languageId"];
}

- (void) setLanguageId: (NSString*) val
{
    self.dictionary[@"languageId"] = val;
}

- (NSString*) countryCode
{
    if([[NSNull null] isEqual:self.dictionary[@"countryCode"]])
    {
        return nil;
    }   
    return self.dictionary[@"countryCode"];
}

- (void) setCountryCode: (NSString*) val
{
    self.dictionary[@"countryCode"] = val;
}

@end
