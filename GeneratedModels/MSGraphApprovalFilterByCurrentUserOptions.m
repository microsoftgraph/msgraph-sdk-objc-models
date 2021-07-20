// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphApprovalFilterByCurrentUserOptions.h"

@interface MSGraphApprovalFilterByCurrentUserOptions () {
    MSGraphApprovalFilterByCurrentUserOptionsValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphApprovalFilterByCurrentUserOptionsValue enumValue;
@end

@implementation MSGraphApprovalFilterByCurrentUserOptions

+ (MSGraphApprovalFilterByCurrentUserOptions*) target {
    static MSGraphApprovalFilterByCurrentUserOptions *_target;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _target = [[MSGraphApprovalFilterByCurrentUserOptions alloc] init];
        _target.enumValue = MSGraphApprovalFilterByCurrentUserOptionsTarget;
    });
    return _target;
}
+ (MSGraphApprovalFilterByCurrentUserOptions*) createdBy {
    static MSGraphApprovalFilterByCurrentUserOptions *_createdBy;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _createdBy = [[MSGraphApprovalFilterByCurrentUserOptions alloc] init];
        _createdBy.enumValue = MSGraphApprovalFilterByCurrentUserOptionsCreatedBy;
    });
    return _createdBy;
}
+ (MSGraphApprovalFilterByCurrentUserOptions*) approver {
    static MSGraphApprovalFilterByCurrentUserOptions *_approver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _approver = [[MSGraphApprovalFilterByCurrentUserOptions alloc] init];
        _approver.enumValue = MSGraphApprovalFilterByCurrentUserOptionsApprover;
    });
    return _approver;
}
+ (MSGraphApprovalFilterByCurrentUserOptions*) unknownFutureValue {
    static MSGraphApprovalFilterByCurrentUserOptions *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphApprovalFilterByCurrentUserOptions alloc] init];
        _unknownFutureValue.enumValue = MSGraphApprovalFilterByCurrentUserOptionsUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphApprovalFilterByCurrentUserOptions*) UnknownEnumValue {
    static MSGraphApprovalFilterByCurrentUserOptions *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphApprovalFilterByCurrentUserOptions alloc] init];
        _unknownValue.enumValue = MSGraphApprovalFilterByCurrentUserOptionsEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphApprovalFilterByCurrentUserOptions*) approvalFilterByCurrentUserOptionsWithEnumValue:(MSGraphApprovalFilterByCurrentUserOptionsValue)val {

    switch(val)
    {
        case MSGraphApprovalFilterByCurrentUserOptionsTarget:
            return [MSGraphApprovalFilterByCurrentUserOptions target];
        case MSGraphApprovalFilterByCurrentUserOptionsCreatedBy:
            return [MSGraphApprovalFilterByCurrentUserOptions createdBy];
        case MSGraphApprovalFilterByCurrentUserOptionsApprover:
            return [MSGraphApprovalFilterByCurrentUserOptions approver];
        case MSGraphApprovalFilterByCurrentUserOptionsUnknownFutureValue:
            return [MSGraphApprovalFilterByCurrentUserOptions unknownFutureValue];
        case MSGraphApprovalFilterByCurrentUserOptionsEndOfEnum:
        default:
            return [MSGraphApprovalFilterByCurrentUserOptions UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphApprovalFilterByCurrentUserOptionsTarget:
            return @"target";
        case MSGraphApprovalFilterByCurrentUserOptionsCreatedBy:
            return @"createdBy";
        case MSGraphApprovalFilterByCurrentUserOptionsApprover:
            return @"approver";
        case MSGraphApprovalFilterByCurrentUserOptionsUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphApprovalFilterByCurrentUserOptionsEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphApprovalFilterByCurrentUserOptionsValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphApprovalFilterByCurrentUserOptions)

- (MSGraphApprovalFilterByCurrentUserOptions*) toMSGraphApprovalFilterByCurrentUserOptions{

    if([self isEqualToString:@"target"])
    {
          return [MSGraphApprovalFilterByCurrentUserOptions target];
    }
    else if([self isEqualToString:@"createdBy"])
    {
          return [MSGraphApprovalFilterByCurrentUserOptions createdBy];
    }
    else if([self isEqualToString:@"approver"])
    {
          return [MSGraphApprovalFilterByCurrentUserOptions approver];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphApprovalFilterByCurrentUserOptions unknownFutureValue];
    }
    else {
        return [MSGraphApprovalFilterByCurrentUserOptions UnknownEnumValue];
    }
}

@end
