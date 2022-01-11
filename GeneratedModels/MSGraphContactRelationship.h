// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphContactRelationshipValue){

	MSGraphContactRelationshipParent = 0,
	MSGraphContactRelationshipRelative = 1,
	MSGraphContactRelationshipAide = 2,
	MSGraphContactRelationshipDoctor = 3,
	MSGraphContactRelationshipGuardian = 4,
	MSGraphContactRelationshipChild = 5,
	MSGraphContactRelationshipOther = 6,
	MSGraphContactRelationshipUnknownFutureValue = 7,
    MSGraphContactRelationshipEndOfEnum
};

@interface MSGraphContactRelationship : NSObject

+(MSGraphContactRelationship*) parent;
+(MSGraphContactRelationship*) relative;
+(MSGraphContactRelationship*) aide;
+(MSGraphContactRelationship*) doctor;
+(MSGraphContactRelationship*) guardian;
+(MSGraphContactRelationship*) child;
+(MSGraphContactRelationship*) other;
+(MSGraphContactRelationship*) unknownFutureValue;

+(MSGraphContactRelationship*) UnknownEnumValue;

+(MSGraphContactRelationship*) contactRelationshipWithEnumValue:(MSGraphContactRelationshipValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphContactRelationshipValue enumValue;

@end


@interface NSString (MSGraphContactRelationship)

- (MSGraphContactRelationship*) toMSGraphContactRelationship;

@end
