// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphFido2RestrictionEnforcementTypeValue){

	MSGraphFido2RestrictionEnforcementTypeAllow = 0,
	MSGraphFido2RestrictionEnforcementTypeBlock = 1,
	MSGraphFido2RestrictionEnforcementTypeUnknownFutureValue = 2,
    MSGraphFido2RestrictionEnforcementTypeEndOfEnum
};

@interface MSGraphFido2RestrictionEnforcementType : NSObject

+(MSGraphFido2RestrictionEnforcementType*) allow;
+(MSGraphFido2RestrictionEnforcementType*) block;
+(MSGraphFido2RestrictionEnforcementType*) unknownFutureValue;

+(MSGraphFido2RestrictionEnforcementType*) UnknownEnumValue;

+(MSGraphFido2RestrictionEnforcementType*) fido2RestrictionEnforcementTypeWithEnumValue:(MSGraphFido2RestrictionEnforcementTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphFido2RestrictionEnforcementTypeValue enumValue;

@end


@interface NSString (MSGraphFido2RestrictionEnforcementType)

- (MSGraphFido2RestrictionEnforcementType*) toMSGraphFido2RestrictionEnforcementType;

@end
