// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAccessPackageAssignmentFilterByCurrentUserOptions.h"

@interface MSGraphAccessPackageAssignmentFilterByCurrentUserOptions () {
    MSGraphAccessPackageAssignmentFilterByCurrentUserOptionsValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAccessPackageAssignmentFilterByCurrentUserOptionsValue enumValue;
@end

@implementation MSGraphAccessPackageAssignmentFilterByCurrentUserOptions

+ (MSGraphAccessPackageAssignmentFilterByCurrentUserOptions*) target {
    static MSGraphAccessPackageAssignmentFilterByCurrentUserOptions *_target;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _target = [[MSGraphAccessPackageAssignmentFilterByCurrentUserOptions alloc] init];
        _target.enumValue = MSGraphAccessPackageAssignmentFilterByCurrentUserOptionsTarget;
    });
    return _target;
}
+ (MSGraphAccessPackageAssignmentFilterByCurrentUserOptions*) createdBy {
    static MSGraphAccessPackageAssignmentFilterByCurrentUserOptions *_createdBy;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _createdBy = [[MSGraphAccessPackageAssignmentFilterByCurrentUserOptions alloc] init];
        _createdBy.enumValue = MSGraphAccessPackageAssignmentFilterByCurrentUserOptionsCreatedBy;
    });
    return _createdBy;
}
+ (MSGraphAccessPackageAssignmentFilterByCurrentUserOptions*) unknownFutureValue {
    static MSGraphAccessPackageAssignmentFilterByCurrentUserOptions *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphAccessPackageAssignmentFilterByCurrentUserOptions alloc] init];
        _unknownFutureValue.enumValue = MSGraphAccessPackageAssignmentFilterByCurrentUserOptionsUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphAccessPackageAssignmentFilterByCurrentUserOptions*) UnknownEnumValue {
    static MSGraphAccessPackageAssignmentFilterByCurrentUserOptions *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAccessPackageAssignmentFilterByCurrentUserOptions alloc] init];
        _unknownValue.enumValue = MSGraphAccessPackageAssignmentFilterByCurrentUserOptionsEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAccessPackageAssignmentFilterByCurrentUserOptions*) accessPackageAssignmentFilterByCurrentUserOptionsWithEnumValue:(MSGraphAccessPackageAssignmentFilterByCurrentUserOptionsValue)val {

    switch(val)
    {
        case MSGraphAccessPackageAssignmentFilterByCurrentUserOptionsTarget:
            return [MSGraphAccessPackageAssignmentFilterByCurrentUserOptions target];
        case MSGraphAccessPackageAssignmentFilterByCurrentUserOptionsCreatedBy:
            return [MSGraphAccessPackageAssignmentFilterByCurrentUserOptions createdBy];
        case MSGraphAccessPackageAssignmentFilterByCurrentUserOptionsUnknownFutureValue:
            return [MSGraphAccessPackageAssignmentFilterByCurrentUserOptions unknownFutureValue];
        case MSGraphAccessPackageAssignmentFilterByCurrentUserOptionsEndOfEnum:
        default:
            return [MSGraphAccessPackageAssignmentFilterByCurrentUserOptions UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAccessPackageAssignmentFilterByCurrentUserOptionsTarget:
            return @"target";
        case MSGraphAccessPackageAssignmentFilterByCurrentUserOptionsCreatedBy:
            return @"createdBy";
        case MSGraphAccessPackageAssignmentFilterByCurrentUserOptionsUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphAccessPackageAssignmentFilterByCurrentUserOptionsEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAccessPackageAssignmentFilterByCurrentUserOptionsValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAccessPackageAssignmentFilterByCurrentUserOptions)

- (MSGraphAccessPackageAssignmentFilterByCurrentUserOptions*) toMSGraphAccessPackageAssignmentFilterByCurrentUserOptions{

    if([self isEqualToString:@"target"])
    {
          return [MSGraphAccessPackageAssignmentFilterByCurrentUserOptions target];
    }
    else if([self isEqualToString:@"createdBy"])
    {
          return [MSGraphAccessPackageAssignmentFilterByCurrentUserOptions createdBy];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphAccessPackageAssignmentFilterByCurrentUserOptions unknownFutureValue];
    }
    else {
        return [MSGraphAccessPackageAssignmentFilterByCurrentUserOptions UnknownEnumValue];
    }
}

@end
