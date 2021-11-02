// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphDataSubjectType.h"

@interface MSGraphDataSubjectType () {
    MSGraphDataSubjectTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphDataSubjectTypeValue enumValue;
@end

@implementation MSGraphDataSubjectType

+ (MSGraphDataSubjectType*) customer {
    static MSGraphDataSubjectType *_customer;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _customer = [[MSGraphDataSubjectType alloc] init];
        _customer.enumValue = MSGraphDataSubjectTypeCustomer;
    });
    return _customer;
}
+ (MSGraphDataSubjectType*) currentEmployee {
    static MSGraphDataSubjectType *_currentEmployee;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _currentEmployee = [[MSGraphDataSubjectType alloc] init];
        _currentEmployee.enumValue = MSGraphDataSubjectTypeCurrentEmployee;
    });
    return _currentEmployee;
}
+ (MSGraphDataSubjectType*) formerEmployee {
    static MSGraphDataSubjectType *_formerEmployee;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _formerEmployee = [[MSGraphDataSubjectType alloc] init];
        _formerEmployee.enumValue = MSGraphDataSubjectTypeFormerEmployee;
    });
    return _formerEmployee;
}
+ (MSGraphDataSubjectType*) prospectiveEmployee {
    static MSGraphDataSubjectType *_prospectiveEmployee;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _prospectiveEmployee = [[MSGraphDataSubjectType alloc] init];
        _prospectiveEmployee.enumValue = MSGraphDataSubjectTypeProspectiveEmployee;
    });
    return _prospectiveEmployee;
}
+ (MSGraphDataSubjectType*) student {
    static MSGraphDataSubjectType *_student;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _student = [[MSGraphDataSubjectType alloc] init];
        _student.enumValue = MSGraphDataSubjectTypeStudent;
    });
    return _student;
}
+ (MSGraphDataSubjectType*) teacher {
    static MSGraphDataSubjectType *_teacher;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _teacher = [[MSGraphDataSubjectType alloc] init];
        _teacher.enumValue = MSGraphDataSubjectTypeTeacher;
    });
    return _teacher;
}
+ (MSGraphDataSubjectType*) faculty {
    static MSGraphDataSubjectType *_faculty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _faculty = [[MSGraphDataSubjectType alloc] init];
        _faculty.enumValue = MSGraphDataSubjectTypeFaculty;
    });
    return _faculty;
}
+ (MSGraphDataSubjectType*) other {
    static MSGraphDataSubjectType *_other;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _other = [[MSGraphDataSubjectType alloc] init];
        _other.enumValue = MSGraphDataSubjectTypeOther;
    });
    return _other;
}
+ (MSGraphDataSubjectType*) unknownFutureValue {
    static MSGraphDataSubjectType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphDataSubjectType alloc] init];
        _unknownFutureValue.enumValue = MSGraphDataSubjectTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphDataSubjectType*) UnknownEnumValue {
    static MSGraphDataSubjectType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphDataSubjectType alloc] init];
        _unknownValue.enumValue = MSGraphDataSubjectTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphDataSubjectType*) dataSubjectTypeWithEnumValue:(MSGraphDataSubjectTypeValue)val {

    switch(val)
    {
        case MSGraphDataSubjectTypeCustomer:
            return [MSGraphDataSubjectType customer];
        case MSGraphDataSubjectTypeCurrentEmployee:
            return [MSGraphDataSubjectType currentEmployee];
        case MSGraphDataSubjectTypeFormerEmployee:
            return [MSGraphDataSubjectType formerEmployee];
        case MSGraphDataSubjectTypeProspectiveEmployee:
            return [MSGraphDataSubjectType prospectiveEmployee];
        case MSGraphDataSubjectTypeStudent:
            return [MSGraphDataSubjectType student];
        case MSGraphDataSubjectTypeTeacher:
            return [MSGraphDataSubjectType teacher];
        case MSGraphDataSubjectTypeFaculty:
            return [MSGraphDataSubjectType faculty];
        case MSGraphDataSubjectTypeOther:
            return [MSGraphDataSubjectType other];
        case MSGraphDataSubjectTypeUnknownFutureValue:
            return [MSGraphDataSubjectType unknownFutureValue];
        case MSGraphDataSubjectTypeEndOfEnum:
        default:
            return [MSGraphDataSubjectType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphDataSubjectTypeCustomer:
            return @"customer";
        case MSGraphDataSubjectTypeCurrentEmployee:
            return @"currentEmployee";
        case MSGraphDataSubjectTypeFormerEmployee:
            return @"formerEmployee";
        case MSGraphDataSubjectTypeProspectiveEmployee:
            return @"prospectiveEmployee";
        case MSGraphDataSubjectTypeStudent:
            return @"student";
        case MSGraphDataSubjectTypeTeacher:
            return @"teacher";
        case MSGraphDataSubjectTypeFaculty:
            return @"faculty";
        case MSGraphDataSubjectTypeOther:
            return @"other";
        case MSGraphDataSubjectTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphDataSubjectTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphDataSubjectTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphDataSubjectType)

- (MSGraphDataSubjectType*) toMSGraphDataSubjectType{

    if([self isEqualToString:@"customer"])
    {
          return [MSGraphDataSubjectType customer];
    }
    else if([self isEqualToString:@"currentEmployee"])
    {
          return [MSGraphDataSubjectType currentEmployee];
    }
    else if([self isEqualToString:@"formerEmployee"])
    {
          return [MSGraphDataSubjectType formerEmployee];
    }
    else if([self isEqualToString:@"prospectiveEmployee"])
    {
          return [MSGraphDataSubjectType prospectiveEmployee];
    }
    else if([self isEqualToString:@"student"])
    {
          return [MSGraphDataSubjectType student];
    }
    else if([self isEqualToString:@"teacher"])
    {
          return [MSGraphDataSubjectType teacher];
    }
    else if([self isEqualToString:@"faculty"])
    {
          return [MSGraphDataSubjectType faculty];
    }
    else if([self isEqualToString:@"other"])
    {
          return [MSGraphDataSubjectType other];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphDataSubjectType unknownFutureValue];
    }
    else {
        return [MSGraphDataSubjectType UnknownEnumValue];
    }
}

@end
