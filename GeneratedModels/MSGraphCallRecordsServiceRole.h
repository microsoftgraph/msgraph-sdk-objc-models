// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphCallRecordsServiceRoleValue){

	MSGraphCallRecordsServiceRoleUnknown = 0,
	MSGraphCallRecordsServiceRoleCustomBot = 1,
	MSGraphCallRecordsServiceRoleSkypeForBusinessMicrosoftTeamsGateway = 2,
	MSGraphCallRecordsServiceRoleSkypeForBusinessAudioVideoMcu = 3,
	MSGraphCallRecordsServiceRoleSkypeForBusinessApplicationSharingMcu = 4,
	MSGraphCallRecordsServiceRoleSkypeForBusinessCallQueues = 5,
	MSGraphCallRecordsServiceRoleSkypeForBusinessAutoAttendant = 6,
	MSGraphCallRecordsServiceRoleMediationServer = 7,
	MSGraphCallRecordsServiceRoleMediationServerCloudConnectorEdition = 8,
	MSGraphCallRecordsServiceRoleExchangeUnifiedMessagingService = 9,
	MSGraphCallRecordsServiceRoleMediaController = 10,
	MSGraphCallRecordsServiceRoleConferencingAnnouncementService = 11,
	MSGraphCallRecordsServiceRoleConferencingAttendant = 12,
	MSGraphCallRecordsServiceRoleAudioTeleconferencerController = 13,
	MSGraphCallRecordsServiceRoleSkypeForBusinessUnifiedCommunicationApplicationPlatform = 14,
	MSGraphCallRecordsServiceRoleResponseGroupServiceAnnouncementService = 15,
	MSGraphCallRecordsServiceRoleGateway = 16,
	MSGraphCallRecordsServiceRoleSkypeTranslator = 17,
	MSGraphCallRecordsServiceRoleSkypeForBusinessAttendant = 18,
	MSGraphCallRecordsServiceRoleResponseGroupService = 19,
	MSGraphCallRecordsServiceRoleVoicemail = 20,
	MSGraphCallRecordsServiceRoleUnknownFutureValue = 21,
    MSGraphCallRecordsServiceRoleEndOfEnum
};

@interface MSGraphCallRecordsServiceRole : NSObject

+(MSGraphCallRecordsServiceRole*) unknown;
+(MSGraphCallRecordsServiceRole*) customBot;
+(MSGraphCallRecordsServiceRole*) skypeForBusinessMicrosoftTeamsGateway;
+(MSGraphCallRecordsServiceRole*) skypeForBusinessAudioVideoMcu;
+(MSGraphCallRecordsServiceRole*) skypeForBusinessApplicationSharingMcu;
+(MSGraphCallRecordsServiceRole*) skypeForBusinessCallQueues;
+(MSGraphCallRecordsServiceRole*) skypeForBusinessAutoAttendant;
+(MSGraphCallRecordsServiceRole*) mediationServer;
+(MSGraphCallRecordsServiceRole*) mediationServerCloudConnectorEdition;
+(MSGraphCallRecordsServiceRole*) exchangeUnifiedMessagingService;
+(MSGraphCallRecordsServiceRole*) mediaController;
+(MSGraphCallRecordsServiceRole*) conferencingAnnouncementService;
+(MSGraphCallRecordsServiceRole*) conferencingAttendant;
+(MSGraphCallRecordsServiceRole*) audioTeleconferencerController;
+(MSGraphCallRecordsServiceRole*) skypeForBusinessUnifiedCommunicationApplicationPlatform;
+(MSGraphCallRecordsServiceRole*) responseGroupServiceAnnouncementService;
+(MSGraphCallRecordsServiceRole*) gateway;
+(MSGraphCallRecordsServiceRole*) skypeTranslator;
+(MSGraphCallRecordsServiceRole*) skypeForBusinessAttendant;
+(MSGraphCallRecordsServiceRole*) responseGroupService;
+(MSGraphCallRecordsServiceRole*) voicemail;
+(MSGraphCallRecordsServiceRole*) unknownFutureValue;

+(MSGraphCallRecordsServiceRole*) UnknownEnumValue;

+(MSGraphCallRecordsServiceRole*) serviceRoleWithEnumValue:(MSGraphCallRecordsServiceRoleValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphCallRecordsServiceRoleValue enumValue;

@end


@interface NSString (MSGraphCallRecordsServiceRole)

- (MSGraphCallRecordsServiceRole*) toMSGraphCallRecordsServiceRole;

@end
