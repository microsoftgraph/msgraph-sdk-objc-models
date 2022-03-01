// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphBookingStaffRoleValue){

	MSGraphBookingStaffRoleGuest = 0,
	MSGraphBookingStaffRoleAdministrator = 1,
	MSGraphBookingStaffRoleViewer = 2,
	MSGraphBookingStaffRoleExternalGuest = 3,
	MSGraphBookingStaffRoleUnknownFutureValue = 4,
    MSGraphBookingStaffRoleEndOfEnum
};

@interface MSGraphBookingStaffRole : NSObject

+(MSGraphBookingStaffRole*) guest;
+(MSGraphBookingStaffRole*) administrator;
+(MSGraphBookingStaffRole*) viewer;
+(MSGraphBookingStaffRole*) externalGuest;
+(MSGraphBookingStaffRole*) unknownFutureValue;

+(MSGraphBookingStaffRole*) UnknownEnumValue;

+(MSGraphBookingStaffRole*) bookingStaffRoleWithEnumValue:(MSGraphBookingStaffRoleValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphBookingStaffRoleValue enumValue;

@end


@interface NSString (MSGraphBookingStaffRole)

- (MSGraphBookingStaffRole*) toMSGraphBookingStaffRole;

@end
