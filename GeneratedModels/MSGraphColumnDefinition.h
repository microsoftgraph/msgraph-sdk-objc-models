// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphBooleanColumn, MSGraphCalculatedColumn, MSGraphChoiceColumn, MSGraphContentApprovalStatusColumn, MSGraphCurrencyColumn, MSGraphDateTimeColumn, MSGraphDefaultColumnValue, MSGraphGeolocationColumn, MSGraphHyperlinkOrPictureColumn, MSGraphLookupColumn, MSGraphNumberColumn, MSGraphPersonOrGroupColumn, MSGraphTermColumn, MSGraphTextColumn, MSGraphThumbnailColumn, MSGraphColumnValidation; 
#import "MSGraphColumnTypes.h"


#import "MSGraphEntity.h"

@interface MSGraphColumnDefinition : MSGraphEntity

  @property (nullable, nonatomic, setter=setBoolean:, getter=boolean) MSGraphBooleanColumn* boolean;
    @property (nullable, nonatomic, setter=setCalculated:, getter=calculated) MSGraphCalculatedColumn* calculated;
    @property (nullable, nonatomic, setter=setChoice:, getter=choice) MSGraphChoiceColumn* choice;
    @property (nullable, nonatomic, setter=setColumnGroup:, getter=columnGroup) NSString* columnGroup;
    @property (nullable, nonatomic, setter=setContentApprovalStatus:, getter=contentApprovalStatus) MSGraphContentApprovalStatusColumn* contentApprovalStatus;
    @property (nullable, nonatomic, setter=setCurrency:, getter=currency) MSGraphCurrencyColumn* currency;
    @property (nullable, nonatomic, setter=setDateTime:, getter=dateTime) MSGraphDateTimeColumn* dateTime;
    @property (nullable, nonatomic, setter=setDefaultValue:, getter=defaultValue) MSGraphDefaultColumnValue* defaultValue;
    @property (nullable, nonatomic, setter=setColumnDefinitionDescription:, getter=columnDefinitionDescription) NSString* columnDefinitionDescription;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonatomic, setter=setEnforceUniqueValues:, getter=enforceUniqueValues) BOOL enforceUniqueValues;
    @property (nullable, nonatomic, setter=setGeolocation:, getter=geolocation) MSGraphGeolocationColumn* geolocation;
    @property (nonatomic, setter=setHidden:, getter=hidden) BOOL hidden;
    @property (nullable, nonatomic, setter=setHyperlinkOrPicture:, getter=hyperlinkOrPicture) MSGraphHyperlinkOrPictureColumn* hyperlinkOrPicture;
    @property (nonatomic, setter=setIndexed:, getter=indexed) BOOL indexed;
    @property (nonatomic, setter=setIsDeletable:, getter=isDeletable) BOOL isDeletable;
    @property (nonatomic, setter=setIsReorderable:, getter=isReorderable) BOOL isReorderable;
    @property (nonatomic, setter=setIsSealed:, getter=isSealed) BOOL isSealed;
    @property (nullable, nonatomic, setter=setLookup:, getter=lookup) MSGraphLookupColumn* lookup;
    @property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;
    @property (nullable, nonatomic, setter=setNumber:, getter=number) MSGraphNumberColumn* number;
    @property (nullable, nonatomic, setter=setPersonOrGroup:, getter=personOrGroup) MSGraphPersonOrGroupColumn* personOrGroup;
    @property (nonatomic, setter=setPropagateChanges:, getter=propagateChanges) BOOL propagateChanges;
    @property (nonatomic, setter=setColumnDefinitionReadOnly:, getter=columnDefinitionReadOnly) BOOL columnDefinitionReadOnly;
    @property (nonatomic, setter=setRequired:, getter=required) BOOL required;
    @property (nullable, nonatomic, setter=setTerm:, getter=term) MSGraphTermColumn* term;
    @property (nullable, nonatomic, setter=setText:, getter=text) MSGraphTextColumn* text;
    @property (nullable, nonatomic, setter=setThumbnail:, getter=thumbnail) MSGraphThumbnailColumn* thumbnail;
    @property (nullable, nonatomic, setter=setType:, getter=type) MSGraphColumnTypes* type;
    @property (nullable, nonatomic, setter=setValidation:, getter=validation) MSGraphColumnValidation* validation;
    @property (nullable, nonatomic, setter=setSourceColumn:, getter=sourceColumn) MSGraphColumnDefinition* sourceColumn;
  
@end
