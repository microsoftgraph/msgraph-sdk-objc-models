// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAccessPackageAssignmentStateValue){

	MSGraphAccessPackageAssignmentStateDelivering = 0,
	MSGraphAccessPackageAssignmentStatePartiallyDelivered = 1,
	MSGraphAccessPackageAssignmentStateDelivered = 2,
	MSGraphAccessPackageAssignmentStateExpired = 3,
	MSGraphAccessPackageAssignmentStateDeliveryFailed = 4,
	MSGraphAccessPackageAssignmentStateUnknownFutureValue = 5,
    MSGraphAccessPackageAssignmentStateEndOfEnum
};

@interface MSGraphAccessPackageAssignmentState : NSObject

+(MSGraphAccessPackageAssignmentState*) delivering;
+(MSGraphAccessPackageAssignmentState*) partiallyDelivered;
+(MSGraphAccessPackageAssignmentState*) delivered;
+(MSGraphAccessPackageAssignmentState*) expired;
+(MSGraphAccessPackageAssignmentState*) deliveryFailed;
+(MSGraphAccessPackageAssignmentState*) unknownFutureValue;

+(MSGraphAccessPackageAssignmentState*) UnknownEnumValue;

+(MSGraphAccessPackageAssignmentState*) accessPackageAssignmentStateWithEnumValue:(MSGraphAccessPackageAssignmentStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAccessPackageAssignmentStateValue enumValue;

@end


@interface NSString (MSGraphAccessPackageAssignmentState)

- (MSGraphAccessPackageAssignmentState*) toMSGraphAccessPackageAssignmentState;

@end
