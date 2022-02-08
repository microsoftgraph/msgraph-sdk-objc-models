// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions.h"

@interface MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions () {
    MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptionsValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptionsValue enumValue;
@end

@implementation MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions

+ (MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions*) target {
    static MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions *_target;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _target = [[MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions alloc] init];
        _target.enumValue = MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptionsTarget;
    });
    return _target;
}
+ (MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions*) createdBy {
    static MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions *_createdBy;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _createdBy = [[MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions alloc] init];
        _createdBy.enumValue = MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptionsCreatedBy;
    });
    return _createdBy;
}
+ (MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions*) approver {
    static MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions *_approver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _approver = [[MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions alloc] init];
        _approver.enumValue = MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptionsApprover;
    });
    return _approver;
}
+ (MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions*) unknownFutureValue {
    static MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions alloc] init];
        _unknownFutureValue.enumValue = MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptionsUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions*) UnknownEnumValue {
    static MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions alloc] init];
        _unknownValue.enumValue = MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptionsEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions*) accessPackageAssignmentRequestFilterByCurrentUserOptionsWithEnumValue:(MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptionsValue)val {

    switch(val)
    {
        case MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptionsTarget:
            return [MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions target];
        case MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptionsCreatedBy:
            return [MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions createdBy];
        case MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptionsApprover:
            return [MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions approver];
        case MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptionsUnknownFutureValue:
            return [MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions unknownFutureValue];
        case MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptionsEndOfEnum:
        default:
            return [MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptionsTarget:
            return @"target";
        case MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptionsCreatedBy:
            return @"createdBy";
        case MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptionsApprover:
            return @"approver";
        case MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptionsUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptionsEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptionsValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions)

- (MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions*) toMSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions{

    if([self isEqualToString:@"target"])
    {
          return [MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions target];
    }
    else if([self isEqualToString:@"createdBy"])
    {
          return [MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions createdBy];
    }
    else if([self isEqualToString:@"approver"])
    {
          return [MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions approver];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions unknownFutureValue];
    }
    else {
        return [MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions UnknownEnumValue];
    }
}

@end
