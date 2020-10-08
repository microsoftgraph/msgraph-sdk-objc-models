// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphEmailAddress, MSGraphCalendarPermission, MSGraphEvent, MSGraphMultiValueLegacyExtendedProperty, MSGraphSingleValueLegacyExtendedProperty; 
#import "MSGraphOnlineMeetingProviderType.h"
#import "MSGraphCalendarColor.h"


#import "MSGraphEntity.h"

@interface MSGraphCalendar : MSGraphEntity

  @property (nullable, nonatomic, setter=setAllowedOnlineMeetingProviders:, getter=allowedOnlineMeetingProviders) NSArray* allowedOnlineMeetingProviders;
    @property (nonatomic, setter=setCanEdit:, getter=canEdit) BOOL canEdit;
    @property (nonatomic, setter=setCanShare:, getter=canShare) BOOL canShare;
    @property (nonatomic, setter=setCanViewPrivateItems:, getter=canViewPrivateItems) BOOL canViewPrivateItems;
    @property (nullable, nonatomic, setter=setChangeKey:, getter=changeKey) NSString* changeKey;
    @property (nullable, nonatomic, setter=setColor:, getter=color) MSGraphCalendarColor* color;
    @property (nullable, nonatomic, setter=setDefaultOnlineMeetingProvider:, getter=defaultOnlineMeetingProvider) MSGraphOnlineMeetingProviderType* defaultOnlineMeetingProvider;
    @property (nullable, nonatomic, setter=setHexColor:, getter=hexColor) NSString* hexColor;
    @property (nonatomic, setter=setIsRemovable:, getter=isRemovable) BOOL isRemovable;
    @property (nonatomic, setter=setIsTallyingResponses:, getter=isTallyingResponses) BOOL isTallyingResponses;
    @property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;
    @property (nullable, nonatomic, setter=setOwner:, getter=owner) MSGraphEmailAddress* owner;
    @property (nullable, nonatomic, setter=setCalendarPermissions:, getter=calendarPermissions) NSArray* calendarPermissions;
    @property (nullable, nonatomic, setter=setCalendarView:, getter=calendarView) NSArray* calendarView;
    @property (nullable, nonatomic, setter=setEvents:, getter=events) NSArray* events;
    @property (nullable, nonatomic, setter=setMultiValueExtendedProperties:, getter=multiValueExtendedProperties) NSArray* multiValueExtendedProperties;
    @property (nullable, nonatomic, setter=setSingleValueExtendedProperties:, getter=singleValueExtendedProperties) NSArray* singleValueExtendedProperties;
  
@end
