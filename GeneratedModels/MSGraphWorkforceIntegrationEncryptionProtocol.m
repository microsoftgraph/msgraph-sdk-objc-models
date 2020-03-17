// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWorkforceIntegrationEncryptionProtocol.h"

@interface MSGraphWorkforceIntegrationEncryptionProtocol () {
    MSGraphWorkforceIntegrationEncryptionProtocolValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphWorkforceIntegrationEncryptionProtocolValue enumValue;
@end

@implementation MSGraphWorkforceIntegrationEncryptionProtocol

+ (MSGraphWorkforceIntegrationEncryptionProtocol*) sharedSecret {
    static MSGraphWorkforceIntegrationEncryptionProtocol *_sharedSecret;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedSecret = [[MSGraphWorkforceIntegrationEncryptionProtocol alloc] init];
        _sharedSecret.enumValue = MSGraphWorkforceIntegrationEncryptionProtocolSharedSecret;
    });
    return _sharedSecret;
}
+ (MSGraphWorkforceIntegrationEncryptionProtocol*) unknownFutureValue {
    static MSGraphWorkforceIntegrationEncryptionProtocol *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphWorkforceIntegrationEncryptionProtocol alloc] init];
        _unknownFutureValue.enumValue = MSGraphWorkforceIntegrationEncryptionProtocolUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphWorkforceIntegrationEncryptionProtocol*) UnknownEnumValue {
    static MSGraphWorkforceIntegrationEncryptionProtocol *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphWorkforceIntegrationEncryptionProtocol alloc] init];
        _unknownValue.enumValue = MSGraphWorkforceIntegrationEncryptionProtocolEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphWorkforceIntegrationEncryptionProtocol*) workforceIntegrationEncryptionProtocolWithEnumValue:(MSGraphWorkforceIntegrationEncryptionProtocolValue)val {

    switch(val)
    {
        case MSGraphWorkforceIntegrationEncryptionProtocolSharedSecret:
            return [MSGraphWorkforceIntegrationEncryptionProtocol sharedSecret];
        case MSGraphWorkforceIntegrationEncryptionProtocolUnknownFutureValue:
            return [MSGraphWorkforceIntegrationEncryptionProtocol unknownFutureValue];
        case MSGraphWorkforceIntegrationEncryptionProtocolEndOfEnum:
        default:
            return [MSGraphWorkforceIntegrationEncryptionProtocol UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphWorkforceIntegrationEncryptionProtocolSharedSecret:
            return @"sharedSecret";
        case MSGraphWorkforceIntegrationEncryptionProtocolUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphWorkforceIntegrationEncryptionProtocolEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphWorkforceIntegrationEncryptionProtocolValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphWorkforceIntegrationEncryptionProtocol)

- (MSGraphWorkforceIntegrationEncryptionProtocol*) toMSGraphWorkforceIntegrationEncryptionProtocol{

    if([self isEqualToString:@"sharedSecret"])
    {
          return [MSGraphWorkforceIntegrationEncryptionProtocol sharedSecret];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphWorkforceIntegrationEncryptionProtocol unknownFutureValue];
    }
    else {
        return [MSGraphWorkforceIntegrationEncryptionProtocol UnknownEnumValue];
    }
}

@end
