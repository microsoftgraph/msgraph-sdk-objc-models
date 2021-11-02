// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphEdiscoveryAdditionalDataOptionsValue){

	MSGraphEdiscoveryAdditionalDataOptionsAllVersions = 1,
	MSGraphEdiscoveryAdditionalDataOptionsLinkedFiles = 2,
	MSGraphEdiscoveryAdditionalDataOptionsUnknownFutureValue = 4,
    MSGraphEdiscoveryAdditionalDataOptionsEndOfEnum
};

@interface MSGraphEdiscoveryAdditionalDataOptions : NSObject

+(MSGraphEdiscoveryAdditionalDataOptions*) allVersions;
+(MSGraphEdiscoveryAdditionalDataOptions*) linkedFiles;
+(MSGraphEdiscoveryAdditionalDataOptions*) unknownFutureValue;

+(MSGraphEdiscoveryAdditionalDataOptions*) UnknownEnumValue;

+(MSGraphEdiscoveryAdditionalDataOptions*) additionalDataOptionsWithEnumValue:(MSGraphEdiscoveryAdditionalDataOptionsValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphEdiscoveryAdditionalDataOptionsValue enumValue;

@end


@interface NSString (MSGraphEdiscoveryAdditionalDataOptions)

- (MSGraphEdiscoveryAdditionalDataOptions*) toMSGraphEdiscoveryAdditionalDataOptions;

@end
