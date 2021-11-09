// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphEdiscoveryChildSelectabilityValue){

	MSGraphEdiscoveryChildSelectabilityOne = 0,
	MSGraphEdiscoveryChildSelectabilityMany = 1,
    MSGraphEdiscoveryChildSelectabilityEndOfEnum
};

@interface MSGraphEdiscoveryChildSelectability : NSObject

+(MSGraphEdiscoveryChildSelectability*) one;
+(MSGraphEdiscoveryChildSelectability*) many;

+(MSGraphEdiscoveryChildSelectability*) UnknownEnumValue;

+(MSGraphEdiscoveryChildSelectability*) childSelectabilityWithEnumValue:(MSGraphEdiscoveryChildSelectabilityValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphEdiscoveryChildSelectabilityValue enumValue;

@end


@interface NSString (MSGraphEdiscoveryChildSelectability)

- (MSGraphEdiscoveryChildSelectability*) toMSGraphEdiscoveryChildSelectability;

@end
