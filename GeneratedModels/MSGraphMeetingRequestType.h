// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphMeetingRequestTypeValue){

	MSGraphMeetingRequestTypeNone = 0,
	MSGraphMeetingRequestTypeNewMeetingRequest = 1,
	MSGraphMeetingRequestTypeFullUpdate = 65536,
	MSGraphMeetingRequestTypeInformationalUpdate = 131072,
	MSGraphMeetingRequestTypeSilentUpdate = 262144,
	MSGraphMeetingRequestTypeOutdated = 524288,
	MSGraphMeetingRequestTypePrincipalWantsCopy = 1048576,
    MSGraphMeetingRequestTypeEndOfEnum
};

@interface MSGraphMeetingRequestType : NSObject

+(MSGraphMeetingRequestType*) none;
+(MSGraphMeetingRequestType*) newMeetingRequest;
+(MSGraphMeetingRequestType*) fullUpdate;
+(MSGraphMeetingRequestType*) informationalUpdate;
+(MSGraphMeetingRequestType*) silentUpdate;
+(MSGraphMeetingRequestType*) outdated;
+(MSGraphMeetingRequestType*) principalWantsCopy;

+(MSGraphMeetingRequestType*) UnknownEnumValue;

+(MSGraphMeetingRequestType*) meetingRequestTypeWithEnumValue:(MSGraphMeetingRequestTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphMeetingRequestTypeValue enumValue;

@end


@interface NSString (MSGraphMeetingRequestType)

- (MSGraphMeetingRequestType*) toMSGraphMeetingRequestType;

@end
