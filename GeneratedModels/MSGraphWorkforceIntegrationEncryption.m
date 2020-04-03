// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkforceIntegrationEncryption()
{
    MSGraphWorkforceIntegrationEncryptionProtocol* _workforceIntegrationEncryptionProtocol;
    NSString* _secret;
}
@end

@implementation MSGraphWorkforceIntegrationEncryption

- (MSGraphWorkforceIntegrationEncryptionProtocol*) workforceIntegrationEncryptionProtocol
{
    if(!_workforceIntegrationEncryptionProtocol){
        _workforceIntegrationEncryptionProtocol = [self.dictionary[@"protocol"] toMSGraphWorkforceIntegrationEncryptionProtocol];
    }
    return _workforceIntegrationEncryptionProtocol;
}

- (void) setWorkforceIntegrationEncryptionProtocol: (MSGraphWorkforceIntegrationEncryptionProtocol*) val
{
    _workforceIntegrationEncryptionProtocol = val;
    self.dictionary[@"protocol"] = val;
}

- (NSString*) secret
{
    if([[NSNull null] isEqual:self.dictionary[@"secret"]])
    {
        return nil;
    }   
    return self.dictionary[@"secret"];
}

- (void) setSecret: (NSString*) val
{
    self.dictionary[@"secret"] = val;
}

@end
