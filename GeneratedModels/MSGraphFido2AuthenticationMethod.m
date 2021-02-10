// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphFido2AuthenticationMethod()
{
    NSString* _aaGuid;
    NSArray* _attestationCertificates;
    MSGraphAttestationLevel* _attestationLevel;
    NSDate* _createdDateTime;
    NSString* _displayName;
    NSString* _model;
}
@end

@implementation MSGraphFido2AuthenticationMethod

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.fido2AuthenticationMethod";
    }
    return self;
}
- (NSString*) aaGuid
{
    if([[NSNull null] isEqual:self.dictionary[@"aaGuid"]])
    {
        return nil;
    }   
    return self.dictionary[@"aaGuid"];
}

- (void) setAaGuid: (NSString*) val
{
    self.dictionary[@"aaGuid"] = val;
}

- (NSArray*) attestationCertificates
{
    if([[NSNull null] isEqual:self.dictionary[@"attestationCertificates"]])
    {
        return nil;
    }   
    return self.dictionary[@"attestationCertificates"];
}

- (void) setAttestationCertificates: (NSArray*) val
{
    self.dictionary[@"attestationCertificates"] = val;
}

- (MSGraphAttestationLevel*) attestationLevel
{
    if(!_attestationLevel){
        _attestationLevel = [self.dictionary[@"attestationLevel"] toMSGraphAttestationLevel];
    }
    return _attestationLevel;
}

- (void) setAttestationLevel: (MSGraphAttestationLevel*) val
{
    _attestationLevel = val;
    self.dictionary[@"attestationLevel"] = val;
}

- (NSDate*) createdDateTime
{
    if(!_createdDateTime){
        _createdDateTime = [NSDate ms_dateFromString: self.dictionary[@"createdDateTime"]];
    }
    return _createdDateTime;
}

- (void) setCreatedDateTime: (NSDate*) val
{
    _createdDateTime = val;
    self.dictionary[@"createdDateTime"] = [val ms_toString];
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

- (NSString*) model
{
    if([[NSNull null] isEqual:self.dictionary[@"model"]])
    {
        return nil;
    }   
    return self.dictionary[@"model"];
}

- (void) setModel: (NSString*) val
{
    self.dictionary[@"model"] = val;
}


@end
