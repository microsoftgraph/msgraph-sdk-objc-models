// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphChangeNotificationEncryptedContent()
{
    NSString* _data;
    NSString* _dataKey;
    NSString* _dataSignature;
    NSString* _encryptionCertificateId;
    NSString* _encryptionCertificateThumbprint;
}
@end

@implementation MSGraphChangeNotificationEncryptedContent

- (NSString*) data
{
    return self.dictionary[@"data"];
}

- (void) setData: (NSString*) val
{
    self.dictionary[@"data"] = val;
}

- (NSString*) dataKey
{
    return self.dictionary[@"dataKey"];
}

- (void) setDataKey: (NSString*) val
{
    self.dictionary[@"dataKey"] = val;
}

- (NSString*) dataSignature
{
    return self.dictionary[@"dataSignature"];
}

- (void) setDataSignature: (NSString*) val
{
    self.dictionary[@"dataSignature"] = val;
}

- (NSString*) encryptionCertificateId
{
    return self.dictionary[@"encryptionCertificateId"];
}

- (void) setEncryptionCertificateId: (NSString*) val
{
    self.dictionary[@"encryptionCertificateId"] = val;
}

- (NSString*) encryptionCertificateThumbprint
{
    return self.dictionary[@"encryptionCertificateThumbprint"];
}

- (void) setEncryptionCertificateThumbprint: (NSString*) val
{
    self.dictionary[@"encryptionCertificateThumbprint"] = val;
}

@end
