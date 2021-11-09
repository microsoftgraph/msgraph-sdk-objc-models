// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphEdiscoverySourceTypeValue){

	MSGraphEdiscoverySourceTypeMailbox = 1,
	MSGraphEdiscoverySourceTypeSite = 2,
    MSGraphEdiscoverySourceTypeEndOfEnum
};

@interface MSGraphEdiscoverySourceType : NSObject

+(MSGraphEdiscoverySourceType*) mailbox;
+(MSGraphEdiscoverySourceType*) site;

+(MSGraphEdiscoverySourceType*) UnknownEnumValue;

+(MSGraphEdiscoverySourceType*) sourceTypeWithEnumValue:(MSGraphEdiscoverySourceTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphEdiscoverySourceTypeValue enumValue;

@end


@interface NSString (MSGraphEdiscoverySourceType)

- (MSGraphEdiscoverySourceType*) toMSGraphEdiscoverySourceType;

@end
