// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphIdentityUserFlowAttributeInputType.h"

@interface MSGraphIdentityUserFlowAttributeInputType () {
    MSGraphIdentityUserFlowAttributeInputTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphIdentityUserFlowAttributeInputTypeValue enumValue;
@end

@implementation MSGraphIdentityUserFlowAttributeInputType

+ (MSGraphIdentityUserFlowAttributeInputType*) textBox {
    static MSGraphIdentityUserFlowAttributeInputType *_textBox;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _textBox = [[MSGraphIdentityUserFlowAttributeInputType alloc] init];
        _textBox.enumValue = MSGraphIdentityUserFlowAttributeInputTypeTextBox;
    });
    return _textBox;
}
+ (MSGraphIdentityUserFlowAttributeInputType*) dateTimeDropdown {
    static MSGraphIdentityUserFlowAttributeInputType *_dateTimeDropdown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dateTimeDropdown = [[MSGraphIdentityUserFlowAttributeInputType alloc] init];
        _dateTimeDropdown.enumValue = MSGraphIdentityUserFlowAttributeInputTypeDateTimeDropdown;
    });
    return _dateTimeDropdown;
}
+ (MSGraphIdentityUserFlowAttributeInputType*) radioSingleSelect {
    static MSGraphIdentityUserFlowAttributeInputType *_radioSingleSelect;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _radioSingleSelect = [[MSGraphIdentityUserFlowAttributeInputType alloc] init];
        _radioSingleSelect.enumValue = MSGraphIdentityUserFlowAttributeInputTypeRadioSingleSelect;
    });
    return _radioSingleSelect;
}
+ (MSGraphIdentityUserFlowAttributeInputType*) dropdownSingleSelect {
    static MSGraphIdentityUserFlowAttributeInputType *_dropdownSingleSelect;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dropdownSingleSelect = [[MSGraphIdentityUserFlowAttributeInputType alloc] init];
        _dropdownSingleSelect.enumValue = MSGraphIdentityUserFlowAttributeInputTypeDropdownSingleSelect;
    });
    return _dropdownSingleSelect;
}
+ (MSGraphIdentityUserFlowAttributeInputType*) emailBox {
    static MSGraphIdentityUserFlowAttributeInputType *_emailBox;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _emailBox = [[MSGraphIdentityUserFlowAttributeInputType alloc] init];
        _emailBox.enumValue = MSGraphIdentityUserFlowAttributeInputTypeEmailBox;
    });
    return _emailBox;
}
+ (MSGraphIdentityUserFlowAttributeInputType*) checkboxMultiSelect {
    static MSGraphIdentityUserFlowAttributeInputType *_checkboxMultiSelect;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _checkboxMultiSelect = [[MSGraphIdentityUserFlowAttributeInputType alloc] init];
        _checkboxMultiSelect.enumValue = MSGraphIdentityUserFlowAttributeInputTypeCheckboxMultiSelect;
    });
    return _checkboxMultiSelect;
}

+ (MSGraphIdentityUserFlowAttributeInputType*) UnknownEnumValue {
    static MSGraphIdentityUserFlowAttributeInputType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphIdentityUserFlowAttributeInputType alloc] init];
        _unknownValue.enumValue = MSGraphIdentityUserFlowAttributeInputTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphIdentityUserFlowAttributeInputType*) identityUserFlowAttributeInputTypeWithEnumValue:(MSGraphIdentityUserFlowAttributeInputTypeValue)val {

    switch(val)
    {
        case MSGraphIdentityUserFlowAttributeInputTypeTextBox:
            return [MSGraphIdentityUserFlowAttributeInputType textBox];
        case MSGraphIdentityUserFlowAttributeInputTypeDateTimeDropdown:
            return [MSGraphIdentityUserFlowAttributeInputType dateTimeDropdown];
        case MSGraphIdentityUserFlowAttributeInputTypeRadioSingleSelect:
            return [MSGraphIdentityUserFlowAttributeInputType radioSingleSelect];
        case MSGraphIdentityUserFlowAttributeInputTypeDropdownSingleSelect:
            return [MSGraphIdentityUserFlowAttributeInputType dropdownSingleSelect];
        case MSGraphIdentityUserFlowAttributeInputTypeEmailBox:
            return [MSGraphIdentityUserFlowAttributeInputType emailBox];
        case MSGraphIdentityUserFlowAttributeInputTypeCheckboxMultiSelect:
            return [MSGraphIdentityUserFlowAttributeInputType checkboxMultiSelect];
        case MSGraphIdentityUserFlowAttributeInputTypeEndOfEnum:
        default:
            return [MSGraphIdentityUserFlowAttributeInputType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphIdentityUserFlowAttributeInputTypeTextBox:
            return @"textBox";
        case MSGraphIdentityUserFlowAttributeInputTypeDateTimeDropdown:
            return @"dateTimeDropdown";
        case MSGraphIdentityUserFlowAttributeInputTypeRadioSingleSelect:
            return @"radioSingleSelect";
        case MSGraphIdentityUserFlowAttributeInputTypeDropdownSingleSelect:
            return @"dropdownSingleSelect";
        case MSGraphIdentityUserFlowAttributeInputTypeEmailBox:
            return @"emailBox";
        case MSGraphIdentityUserFlowAttributeInputTypeCheckboxMultiSelect:
            return @"checkboxMultiSelect";
        case MSGraphIdentityUserFlowAttributeInputTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphIdentityUserFlowAttributeInputTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphIdentityUserFlowAttributeInputType)

- (MSGraphIdentityUserFlowAttributeInputType*) toMSGraphIdentityUserFlowAttributeInputType{

    if([self isEqualToString:@"textBox"])
    {
          return [MSGraphIdentityUserFlowAttributeInputType textBox];
    }
    else if([self isEqualToString:@"dateTimeDropdown"])
    {
          return [MSGraphIdentityUserFlowAttributeInputType dateTimeDropdown];
    }
    else if([self isEqualToString:@"radioSingleSelect"])
    {
          return [MSGraphIdentityUserFlowAttributeInputType radioSingleSelect];
    }
    else if([self isEqualToString:@"dropdownSingleSelect"])
    {
          return [MSGraphIdentityUserFlowAttributeInputType dropdownSingleSelect];
    }
    else if([self isEqualToString:@"emailBox"])
    {
          return [MSGraphIdentityUserFlowAttributeInputType emailBox];
    }
    else if([self isEqualToString:@"checkboxMultiSelect"])
    {
          return [MSGraphIdentityUserFlowAttributeInputType checkboxMultiSelect];
    }
    else {
        return [MSGraphIdentityUserFlowAttributeInputType UnknownEnumValue];
    }
}

@end
