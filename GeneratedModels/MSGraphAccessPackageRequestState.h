// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAccessPackageRequestStateValue){

	MSGraphAccessPackageRequestStateSubmitted = 0,
	MSGraphAccessPackageRequestStatePendingApproval = 1,
	MSGraphAccessPackageRequestStateDelivering = 2,
	MSGraphAccessPackageRequestStateDelivered = 3,
	MSGraphAccessPackageRequestStateDeliveryFailed = 4,
	MSGraphAccessPackageRequestStateDenied = 5,
	MSGraphAccessPackageRequestStateScheduled = 6,
	MSGraphAccessPackageRequestStateCanceled = 7,
	MSGraphAccessPackageRequestStatePartiallyDelivered = 8,
	MSGraphAccessPackageRequestStateUnknownFutureValue = 9,
    MSGraphAccessPackageRequestStateEndOfEnum
};

@interface MSGraphAccessPackageRequestState : NSObject

+(MSGraphAccessPackageRequestState*) submitted;
+(MSGraphAccessPackageRequestState*) pendingApproval;
+(MSGraphAccessPackageRequestState*) delivering;
+(MSGraphAccessPackageRequestState*) delivered;
+(MSGraphAccessPackageRequestState*) deliveryFailed;
+(MSGraphAccessPackageRequestState*) denied;
+(MSGraphAccessPackageRequestState*) scheduled;
+(MSGraphAccessPackageRequestState*) canceled;
+(MSGraphAccessPackageRequestState*) partiallyDelivered;
+(MSGraphAccessPackageRequestState*) unknownFutureValue;

+(MSGraphAccessPackageRequestState*) UnknownEnumValue;

+(MSGraphAccessPackageRequestState*) accessPackageRequestStateWithEnumValue:(MSGraphAccessPackageRequestStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAccessPackageRequestStateValue enumValue;

@end


@interface NSString (MSGraphAccessPackageRequestState)

- (MSGraphAccessPackageRequestState*) toMSGraphAccessPackageRequestState;

@end
