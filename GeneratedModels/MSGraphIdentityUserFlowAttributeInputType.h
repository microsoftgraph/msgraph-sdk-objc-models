// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphIdentityUserFlowAttributeInputTypeValue){

	MSGraphIdentityUserFlowAttributeInputTypeTextBox = 1,
	MSGraphIdentityUserFlowAttributeInputTypeDateTimeDropdown = 2,
	MSGraphIdentityUserFlowAttributeInputTypeRadioSingleSelect = 3,
	MSGraphIdentityUserFlowAttributeInputTypeDropdownSingleSelect = 4,
	MSGraphIdentityUserFlowAttributeInputTypeEmailBox = 5,
	MSGraphIdentityUserFlowAttributeInputTypeCheckboxMultiSelect = 6,
    MSGraphIdentityUserFlowAttributeInputTypeEndOfEnum
};

@interface MSGraphIdentityUserFlowAttributeInputType : NSObject

+(MSGraphIdentityUserFlowAttributeInputType*) textBox;
+(MSGraphIdentityUserFlowAttributeInputType*) dateTimeDropdown;
+(MSGraphIdentityUserFlowAttributeInputType*) radioSingleSelect;
+(MSGraphIdentityUserFlowAttributeInputType*) dropdownSingleSelect;
+(MSGraphIdentityUserFlowAttributeInputType*) emailBox;
+(MSGraphIdentityUserFlowAttributeInputType*) checkboxMultiSelect;

+(MSGraphIdentityUserFlowAttributeInputType*) UnknownEnumValue;

+(MSGraphIdentityUserFlowAttributeInputType*) identityUserFlowAttributeInputTypeWithEnumValue:(MSGraphIdentityUserFlowAttributeInputTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphIdentityUserFlowAttributeInputTypeValue enumValue;

@end


@interface NSString (MSGraphIdentityUserFlowAttributeInputType)

- (MSGraphIdentityUserFlowAttributeInputType*) toMSGraphIdentityUserFlowAttributeInputType;

@end
