// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphCallRecordsServiceRole.h"

@interface MSGraphCallRecordsServiceRole () {
    MSGraphCallRecordsServiceRoleValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphCallRecordsServiceRoleValue enumValue;
@end

@implementation MSGraphCallRecordsServiceRole

+ (MSGraphCallRecordsServiceRole*) unknown {
    static MSGraphCallRecordsServiceRole *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphCallRecordsServiceRole alloc] init];
        _unknown.enumValue = MSGraphCallRecordsServiceRoleUnknown;
    });
    return _unknown;
}
+ (MSGraphCallRecordsServiceRole*) customBot {
    static MSGraphCallRecordsServiceRole *_customBot;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _customBot = [[MSGraphCallRecordsServiceRole alloc] init];
        _customBot.enumValue = MSGraphCallRecordsServiceRoleCustomBot;
    });
    return _customBot;
}
+ (MSGraphCallRecordsServiceRole*) skypeForBusinessMicrosoftTeamsGateway {
    static MSGraphCallRecordsServiceRole *_skypeForBusinessMicrosoftTeamsGateway;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _skypeForBusinessMicrosoftTeamsGateway = [[MSGraphCallRecordsServiceRole alloc] init];
        _skypeForBusinessMicrosoftTeamsGateway.enumValue = MSGraphCallRecordsServiceRoleSkypeForBusinessMicrosoftTeamsGateway;
    });
    return _skypeForBusinessMicrosoftTeamsGateway;
}
+ (MSGraphCallRecordsServiceRole*) skypeForBusinessAudioVideoMcu {
    static MSGraphCallRecordsServiceRole *_skypeForBusinessAudioVideoMcu;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _skypeForBusinessAudioVideoMcu = [[MSGraphCallRecordsServiceRole alloc] init];
        _skypeForBusinessAudioVideoMcu.enumValue = MSGraphCallRecordsServiceRoleSkypeForBusinessAudioVideoMcu;
    });
    return _skypeForBusinessAudioVideoMcu;
}
+ (MSGraphCallRecordsServiceRole*) skypeForBusinessApplicationSharingMcu {
    static MSGraphCallRecordsServiceRole *_skypeForBusinessApplicationSharingMcu;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _skypeForBusinessApplicationSharingMcu = [[MSGraphCallRecordsServiceRole alloc] init];
        _skypeForBusinessApplicationSharingMcu.enumValue = MSGraphCallRecordsServiceRoleSkypeForBusinessApplicationSharingMcu;
    });
    return _skypeForBusinessApplicationSharingMcu;
}
+ (MSGraphCallRecordsServiceRole*) skypeForBusinessCallQueues {
    static MSGraphCallRecordsServiceRole *_skypeForBusinessCallQueues;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _skypeForBusinessCallQueues = [[MSGraphCallRecordsServiceRole alloc] init];
        _skypeForBusinessCallQueues.enumValue = MSGraphCallRecordsServiceRoleSkypeForBusinessCallQueues;
    });
    return _skypeForBusinessCallQueues;
}
+ (MSGraphCallRecordsServiceRole*) skypeForBusinessAutoAttendant {
    static MSGraphCallRecordsServiceRole *_skypeForBusinessAutoAttendant;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _skypeForBusinessAutoAttendant = [[MSGraphCallRecordsServiceRole alloc] init];
        _skypeForBusinessAutoAttendant.enumValue = MSGraphCallRecordsServiceRoleSkypeForBusinessAutoAttendant;
    });
    return _skypeForBusinessAutoAttendant;
}
+ (MSGraphCallRecordsServiceRole*) mediationServer {
    static MSGraphCallRecordsServiceRole *_mediationServer;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mediationServer = [[MSGraphCallRecordsServiceRole alloc] init];
        _mediationServer.enumValue = MSGraphCallRecordsServiceRoleMediationServer;
    });
    return _mediationServer;
}
+ (MSGraphCallRecordsServiceRole*) mediationServerCloudConnectorEdition {
    static MSGraphCallRecordsServiceRole *_mediationServerCloudConnectorEdition;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mediationServerCloudConnectorEdition = [[MSGraphCallRecordsServiceRole alloc] init];
        _mediationServerCloudConnectorEdition.enumValue = MSGraphCallRecordsServiceRoleMediationServerCloudConnectorEdition;
    });
    return _mediationServerCloudConnectorEdition;
}
+ (MSGraphCallRecordsServiceRole*) exchangeUnifiedMessagingService {
    static MSGraphCallRecordsServiceRole *_exchangeUnifiedMessagingService;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _exchangeUnifiedMessagingService = [[MSGraphCallRecordsServiceRole alloc] init];
        _exchangeUnifiedMessagingService.enumValue = MSGraphCallRecordsServiceRoleExchangeUnifiedMessagingService;
    });
    return _exchangeUnifiedMessagingService;
}
+ (MSGraphCallRecordsServiceRole*) mediaController {
    static MSGraphCallRecordsServiceRole *_mediaController;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mediaController = [[MSGraphCallRecordsServiceRole alloc] init];
        _mediaController.enumValue = MSGraphCallRecordsServiceRoleMediaController;
    });
    return _mediaController;
}
+ (MSGraphCallRecordsServiceRole*) conferencingAnnouncementService {
    static MSGraphCallRecordsServiceRole *_conferencingAnnouncementService;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _conferencingAnnouncementService = [[MSGraphCallRecordsServiceRole alloc] init];
        _conferencingAnnouncementService.enumValue = MSGraphCallRecordsServiceRoleConferencingAnnouncementService;
    });
    return _conferencingAnnouncementService;
}
+ (MSGraphCallRecordsServiceRole*) conferencingAttendant {
    static MSGraphCallRecordsServiceRole *_conferencingAttendant;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _conferencingAttendant = [[MSGraphCallRecordsServiceRole alloc] init];
        _conferencingAttendant.enumValue = MSGraphCallRecordsServiceRoleConferencingAttendant;
    });
    return _conferencingAttendant;
}
+ (MSGraphCallRecordsServiceRole*) audioTeleconferencerController {
    static MSGraphCallRecordsServiceRole *_audioTeleconferencerController;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _audioTeleconferencerController = [[MSGraphCallRecordsServiceRole alloc] init];
        _audioTeleconferencerController.enumValue = MSGraphCallRecordsServiceRoleAudioTeleconferencerController;
    });
    return _audioTeleconferencerController;
}
+ (MSGraphCallRecordsServiceRole*) skypeForBusinessUnifiedCommunicationApplicationPlatform {
    static MSGraphCallRecordsServiceRole *_skypeForBusinessUnifiedCommunicationApplicationPlatform;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _skypeForBusinessUnifiedCommunicationApplicationPlatform = [[MSGraphCallRecordsServiceRole alloc] init];
        _skypeForBusinessUnifiedCommunicationApplicationPlatform.enumValue = MSGraphCallRecordsServiceRoleSkypeForBusinessUnifiedCommunicationApplicationPlatform;
    });
    return _skypeForBusinessUnifiedCommunicationApplicationPlatform;
}
+ (MSGraphCallRecordsServiceRole*) responseGroupServiceAnnouncementService {
    static MSGraphCallRecordsServiceRole *_responseGroupServiceAnnouncementService;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _responseGroupServiceAnnouncementService = [[MSGraphCallRecordsServiceRole alloc] init];
        _responseGroupServiceAnnouncementService.enumValue = MSGraphCallRecordsServiceRoleResponseGroupServiceAnnouncementService;
    });
    return _responseGroupServiceAnnouncementService;
}
+ (MSGraphCallRecordsServiceRole*) gateway {
    static MSGraphCallRecordsServiceRole *_gateway;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _gateway = [[MSGraphCallRecordsServiceRole alloc] init];
        _gateway.enumValue = MSGraphCallRecordsServiceRoleGateway;
    });
    return _gateway;
}
+ (MSGraphCallRecordsServiceRole*) skypeTranslator {
    static MSGraphCallRecordsServiceRole *_skypeTranslator;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _skypeTranslator = [[MSGraphCallRecordsServiceRole alloc] init];
        _skypeTranslator.enumValue = MSGraphCallRecordsServiceRoleSkypeTranslator;
    });
    return _skypeTranslator;
}
+ (MSGraphCallRecordsServiceRole*) skypeForBusinessAttendant {
    static MSGraphCallRecordsServiceRole *_skypeForBusinessAttendant;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _skypeForBusinessAttendant = [[MSGraphCallRecordsServiceRole alloc] init];
        _skypeForBusinessAttendant.enumValue = MSGraphCallRecordsServiceRoleSkypeForBusinessAttendant;
    });
    return _skypeForBusinessAttendant;
}
+ (MSGraphCallRecordsServiceRole*) responseGroupService {
    static MSGraphCallRecordsServiceRole *_responseGroupService;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _responseGroupService = [[MSGraphCallRecordsServiceRole alloc] init];
        _responseGroupService.enumValue = MSGraphCallRecordsServiceRoleResponseGroupService;
    });
    return _responseGroupService;
}
+ (MSGraphCallRecordsServiceRole*) voicemail {
    static MSGraphCallRecordsServiceRole *_voicemail;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _voicemail = [[MSGraphCallRecordsServiceRole alloc] init];
        _voicemail.enumValue = MSGraphCallRecordsServiceRoleVoicemail;
    });
    return _voicemail;
}
+ (MSGraphCallRecordsServiceRole*) unknownFutureValue {
    static MSGraphCallRecordsServiceRole *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphCallRecordsServiceRole alloc] init];
        _unknownFutureValue.enumValue = MSGraphCallRecordsServiceRoleUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphCallRecordsServiceRole*) UnknownEnumValue {
    static MSGraphCallRecordsServiceRole *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphCallRecordsServiceRole alloc] init];
        _unknownValue.enumValue = MSGraphCallRecordsServiceRoleEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphCallRecordsServiceRole*) serviceRoleWithEnumValue:(MSGraphCallRecordsServiceRoleValue)val {

    switch(val)
    {
        case MSGraphCallRecordsServiceRoleUnknown:
            return [MSGraphCallRecordsServiceRole unknown];
        case MSGraphCallRecordsServiceRoleCustomBot:
            return [MSGraphCallRecordsServiceRole customBot];
        case MSGraphCallRecordsServiceRoleSkypeForBusinessMicrosoftTeamsGateway:
            return [MSGraphCallRecordsServiceRole skypeForBusinessMicrosoftTeamsGateway];
        case MSGraphCallRecordsServiceRoleSkypeForBusinessAudioVideoMcu:
            return [MSGraphCallRecordsServiceRole skypeForBusinessAudioVideoMcu];
        case MSGraphCallRecordsServiceRoleSkypeForBusinessApplicationSharingMcu:
            return [MSGraphCallRecordsServiceRole skypeForBusinessApplicationSharingMcu];
        case MSGraphCallRecordsServiceRoleSkypeForBusinessCallQueues:
            return [MSGraphCallRecordsServiceRole skypeForBusinessCallQueues];
        case MSGraphCallRecordsServiceRoleSkypeForBusinessAutoAttendant:
            return [MSGraphCallRecordsServiceRole skypeForBusinessAutoAttendant];
        case MSGraphCallRecordsServiceRoleMediationServer:
            return [MSGraphCallRecordsServiceRole mediationServer];
        case MSGraphCallRecordsServiceRoleMediationServerCloudConnectorEdition:
            return [MSGraphCallRecordsServiceRole mediationServerCloudConnectorEdition];
        case MSGraphCallRecordsServiceRoleExchangeUnifiedMessagingService:
            return [MSGraphCallRecordsServiceRole exchangeUnifiedMessagingService];
        case MSGraphCallRecordsServiceRoleMediaController:
            return [MSGraphCallRecordsServiceRole mediaController];
        case MSGraphCallRecordsServiceRoleConferencingAnnouncementService:
            return [MSGraphCallRecordsServiceRole conferencingAnnouncementService];
        case MSGraphCallRecordsServiceRoleConferencingAttendant:
            return [MSGraphCallRecordsServiceRole conferencingAttendant];
        case MSGraphCallRecordsServiceRoleAudioTeleconferencerController:
            return [MSGraphCallRecordsServiceRole audioTeleconferencerController];
        case MSGraphCallRecordsServiceRoleSkypeForBusinessUnifiedCommunicationApplicationPlatform:
            return [MSGraphCallRecordsServiceRole skypeForBusinessUnifiedCommunicationApplicationPlatform];
        case MSGraphCallRecordsServiceRoleResponseGroupServiceAnnouncementService:
            return [MSGraphCallRecordsServiceRole responseGroupServiceAnnouncementService];
        case MSGraphCallRecordsServiceRoleGateway:
            return [MSGraphCallRecordsServiceRole gateway];
        case MSGraphCallRecordsServiceRoleSkypeTranslator:
            return [MSGraphCallRecordsServiceRole skypeTranslator];
        case MSGraphCallRecordsServiceRoleSkypeForBusinessAttendant:
            return [MSGraphCallRecordsServiceRole skypeForBusinessAttendant];
        case MSGraphCallRecordsServiceRoleResponseGroupService:
            return [MSGraphCallRecordsServiceRole responseGroupService];
        case MSGraphCallRecordsServiceRoleVoicemail:
            return [MSGraphCallRecordsServiceRole voicemail];
        case MSGraphCallRecordsServiceRoleUnknownFutureValue:
            return [MSGraphCallRecordsServiceRole unknownFutureValue];
        case MSGraphCallRecordsServiceRoleEndOfEnum:
        default:
            return [MSGraphCallRecordsServiceRole UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphCallRecordsServiceRoleUnknown:
            return @"unknown";
        case MSGraphCallRecordsServiceRoleCustomBot:
            return @"customBot";
        case MSGraphCallRecordsServiceRoleSkypeForBusinessMicrosoftTeamsGateway:
            return @"skypeForBusinessMicrosoftTeamsGateway";
        case MSGraphCallRecordsServiceRoleSkypeForBusinessAudioVideoMcu:
            return @"skypeForBusinessAudioVideoMcu";
        case MSGraphCallRecordsServiceRoleSkypeForBusinessApplicationSharingMcu:
            return @"skypeForBusinessApplicationSharingMcu";
        case MSGraphCallRecordsServiceRoleSkypeForBusinessCallQueues:
            return @"skypeForBusinessCallQueues";
        case MSGraphCallRecordsServiceRoleSkypeForBusinessAutoAttendant:
            return @"skypeForBusinessAutoAttendant";
        case MSGraphCallRecordsServiceRoleMediationServer:
            return @"mediationServer";
        case MSGraphCallRecordsServiceRoleMediationServerCloudConnectorEdition:
            return @"mediationServerCloudConnectorEdition";
        case MSGraphCallRecordsServiceRoleExchangeUnifiedMessagingService:
            return @"exchangeUnifiedMessagingService";
        case MSGraphCallRecordsServiceRoleMediaController:
            return @"mediaController";
        case MSGraphCallRecordsServiceRoleConferencingAnnouncementService:
            return @"conferencingAnnouncementService";
        case MSGraphCallRecordsServiceRoleConferencingAttendant:
            return @"conferencingAttendant";
        case MSGraphCallRecordsServiceRoleAudioTeleconferencerController:
            return @"audioTeleconferencerController";
        case MSGraphCallRecordsServiceRoleSkypeForBusinessUnifiedCommunicationApplicationPlatform:
            return @"skypeForBusinessUnifiedCommunicationApplicationPlatform";
        case MSGraphCallRecordsServiceRoleResponseGroupServiceAnnouncementService:
            return @"responseGroupServiceAnnouncementService";
        case MSGraphCallRecordsServiceRoleGateway:
            return @"gateway";
        case MSGraphCallRecordsServiceRoleSkypeTranslator:
            return @"skypeTranslator";
        case MSGraphCallRecordsServiceRoleSkypeForBusinessAttendant:
            return @"skypeForBusinessAttendant";
        case MSGraphCallRecordsServiceRoleResponseGroupService:
            return @"responseGroupService";
        case MSGraphCallRecordsServiceRoleVoicemail:
            return @"voicemail";
        case MSGraphCallRecordsServiceRoleUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphCallRecordsServiceRoleEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphCallRecordsServiceRoleValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphCallRecordsServiceRole)

- (MSGraphCallRecordsServiceRole*) toMSGraphCallRecordsServiceRole{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphCallRecordsServiceRole unknown];
    }
    else if([self isEqualToString:@"customBot"])
    {
          return [MSGraphCallRecordsServiceRole customBot];
    }
    else if([self isEqualToString:@"skypeForBusinessMicrosoftTeamsGateway"])
    {
          return [MSGraphCallRecordsServiceRole skypeForBusinessMicrosoftTeamsGateway];
    }
    else if([self isEqualToString:@"skypeForBusinessAudioVideoMcu"])
    {
          return [MSGraphCallRecordsServiceRole skypeForBusinessAudioVideoMcu];
    }
    else if([self isEqualToString:@"skypeForBusinessApplicationSharingMcu"])
    {
          return [MSGraphCallRecordsServiceRole skypeForBusinessApplicationSharingMcu];
    }
    else if([self isEqualToString:@"skypeForBusinessCallQueues"])
    {
          return [MSGraphCallRecordsServiceRole skypeForBusinessCallQueues];
    }
    else if([self isEqualToString:@"skypeForBusinessAutoAttendant"])
    {
          return [MSGraphCallRecordsServiceRole skypeForBusinessAutoAttendant];
    }
    else if([self isEqualToString:@"mediationServer"])
    {
          return [MSGraphCallRecordsServiceRole mediationServer];
    }
    else if([self isEqualToString:@"mediationServerCloudConnectorEdition"])
    {
          return [MSGraphCallRecordsServiceRole mediationServerCloudConnectorEdition];
    }
    else if([self isEqualToString:@"exchangeUnifiedMessagingService"])
    {
          return [MSGraphCallRecordsServiceRole exchangeUnifiedMessagingService];
    }
    else if([self isEqualToString:@"mediaController"])
    {
          return [MSGraphCallRecordsServiceRole mediaController];
    }
    else if([self isEqualToString:@"conferencingAnnouncementService"])
    {
          return [MSGraphCallRecordsServiceRole conferencingAnnouncementService];
    }
    else if([self isEqualToString:@"conferencingAttendant"])
    {
          return [MSGraphCallRecordsServiceRole conferencingAttendant];
    }
    else if([self isEqualToString:@"audioTeleconferencerController"])
    {
          return [MSGraphCallRecordsServiceRole audioTeleconferencerController];
    }
    else if([self isEqualToString:@"skypeForBusinessUnifiedCommunicationApplicationPlatform"])
    {
          return [MSGraphCallRecordsServiceRole skypeForBusinessUnifiedCommunicationApplicationPlatform];
    }
    else if([self isEqualToString:@"responseGroupServiceAnnouncementService"])
    {
          return [MSGraphCallRecordsServiceRole responseGroupServiceAnnouncementService];
    }
    else if([self isEqualToString:@"gateway"])
    {
          return [MSGraphCallRecordsServiceRole gateway];
    }
    else if([self isEqualToString:@"skypeTranslator"])
    {
          return [MSGraphCallRecordsServiceRole skypeTranslator];
    }
    else if([self isEqualToString:@"skypeForBusinessAttendant"])
    {
          return [MSGraphCallRecordsServiceRole skypeForBusinessAttendant];
    }
    else if([self isEqualToString:@"responseGroupService"])
    {
          return [MSGraphCallRecordsServiceRole responseGroupService];
    }
    else if([self isEqualToString:@"voicemail"])
    {
          return [MSGraphCallRecordsServiceRole voicemail];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphCallRecordsServiceRole unknownFutureValue];
    }
    else {
        return [MSGraphCallRecordsServiceRole UnknownEnumValue];
    }
}

@end
