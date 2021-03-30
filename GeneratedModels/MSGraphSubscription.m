// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSubscription()
{
    NSString* _applicationId;
    NSString* _changeType;
    NSString* _clientState;
    NSString* _creatorId;
    NSString* _encryptionCertificate;
    NSString* _encryptionCertificateId;
    NSDate* _expirationDateTime;
    BOOL _includeResourceData;
    NSString* _latestSupportedTlsVersion;
    NSString* _lifecycleNotificationUrl;
    NSString* _notificationQueryOptions;
    NSString* _notificationUrl;
    NSString* _resource;
}
@end

@implementation MSGraphSubscription

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.subscription";
    }
    return self;
}
- (NSString*) applicationId
{
    if([[NSNull null] isEqual:self.dictionary[@"applicationId"]])
    {
        return nil;
    }   
    return self.dictionary[@"applicationId"];
}

- (void) setApplicationId: (NSString*) val
{
    self.dictionary[@"applicationId"] = val;
}

- (NSString*) changeType
{
    return self.dictionary[@"changeType"];
}

- (void) setChangeType: (NSString*) val
{
    self.dictionary[@"changeType"] = val;
}

- (NSString*) clientState
{
    if([[NSNull null] isEqual:self.dictionary[@"clientState"]])
    {
        return nil;
    }   
    return self.dictionary[@"clientState"];
}

- (void) setClientState: (NSString*) val
{
    self.dictionary[@"clientState"] = val;
}

- (NSString*) creatorId
{
    if([[NSNull null] isEqual:self.dictionary[@"creatorId"]])
    {
        return nil;
    }   
    return self.dictionary[@"creatorId"];
}

- (void) setCreatorId: (NSString*) val
{
    self.dictionary[@"creatorId"] = val;
}

- (NSString*) encryptionCertificate
{
    if([[NSNull null] isEqual:self.dictionary[@"encryptionCertificate"]])
    {
        return nil;
    }   
    return self.dictionary[@"encryptionCertificate"];
}

- (void) setEncryptionCertificate: (NSString*) val
{
    self.dictionary[@"encryptionCertificate"] = val;
}

- (NSString*) encryptionCertificateId
{
    if([[NSNull null] isEqual:self.dictionary[@"encryptionCertificateId"]])
    {
        return nil;
    }   
    return self.dictionary[@"encryptionCertificateId"];
}

- (void) setEncryptionCertificateId: (NSString*) val
{
    self.dictionary[@"encryptionCertificateId"] = val;
}

- (NSDate*) expirationDateTime
{
    if(!_expirationDateTime){
        _expirationDateTime = [NSDate ms_dateFromString: self.dictionary[@"expirationDateTime"]];
    }
    return _expirationDateTime;
}

- (void) setExpirationDateTime: (NSDate*) val
{
    _expirationDateTime = val;
    self.dictionary[@"expirationDateTime"] = [val ms_toString];
}

- (BOOL) includeResourceData
{
    _includeResourceData = [self.dictionary[@"includeResourceData"] boolValue];
    return _includeResourceData;
}

- (void) setIncludeResourceData: (BOOL) val
{
    _includeResourceData = val;
    self.dictionary[@"includeResourceData"] = @(val);
}

- (NSString*) latestSupportedTlsVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"latestSupportedTlsVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"latestSupportedTlsVersion"];
}

- (void) setLatestSupportedTlsVersion: (NSString*) val
{
    self.dictionary[@"latestSupportedTlsVersion"] = val;
}

- (NSString*) lifecycleNotificationUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"lifecycleNotificationUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"lifecycleNotificationUrl"];
}

- (void) setLifecycleNotificationUrl: (NSString*) val
{
    self.dictionary[@"lifecycleNotificationUrl"] = val;
}

- (NSString*) notificationQueryOptions
{
    if([[NSNull null] isEqual:self.dictionary[@"notificationQueryOptions"]])
    {
        return nil;
    }   
    return self.dictionary[@"notificationQueryOptions"];
}

- (void) setNotificationQueryOptions: (NSString*) val
{
    self.dictionary[@"notificationQueryOptions"] = val;
}

- (NSString*) notificationUrl
{
    return self.dictionary[@"notificationUrl"];
}

- (void) setNotificationUrl: (NSString*) val
{
    self.dictionary[@"notificationUrl"] = val;
}

- (NSString*) resource
{
    return self.dictionary[@"resource"];
}

- (void) setResource: (NSString*) val
{
    self.dictionary[@"resource"] = val;
}


@end
