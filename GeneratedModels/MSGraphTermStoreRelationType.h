// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphTermStoreRelationTypeValue){

	MSGraphTermStoreRelationTypePin = 0,
	MSGraphTermStoreRelationTypeReuse = 1,
	MSGraphTermStoreRelationTypeUnknownFutureValue = 2,
    MSGraphTermStoreRelationTypeEndOfEnum
};

@interface MSGraphTermStoreRelationType : NSObject

+(MSGraphTermStoreRelationType*) pin;
+(MSGraphTermStoreRelationType*) reuse;
+(MSGraphTermStoreRelationType*) unknownFutureValue;

+(MSGraphTermStoreRelationType*) UnknownEnumValue;

+(MSGraphTermStoreRelationType*) relationTypeWithEnumValue:(MSGraphTermStoreRelationTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphTermStoreRelationTypeValue enumValue;

@end


@interface NSString (MSGraphTermStoreRelationType)

- (MSGraphTermStoreRelationType*) toMSGraphTermStoreRelationType;

@end
