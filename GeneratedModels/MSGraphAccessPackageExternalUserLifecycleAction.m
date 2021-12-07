// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAccessPackageExternalUserLifecycleAction.h"

@interface MSGraphAccessPackageExternalUserLifecycleAction () {
    MSGraphAccessPackageExternalUserLifecycleActionValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAccessPackageExternalUserLifecycleActionValue enumValue;
@end

@implementation MSGraphAccessPackageExternalUserLifecycleAction

+ (MSGraphAccessPackageExternalUserLifecycleAction*) none {
    static MSGraphAccessPackageExternalUserLifecycleAction *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphAccessPackageExternalUserLifecycleAction alloc] init];
        _none.enumValue = MSGraphAccessPackageExternalUserLifecycleActionNone;
    });
    return _none;
}
+ (MSGraphAccessPackageExternalUserLifecycleAction*) blockSignIn {
    static MSGraphAccessPackageExternalUserLifecycleAction *_blockSignIn;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _blockSignIn = [[MSGraphAccessPackageExternalUserLifecycleAction alloc] init];
        _blockSignIn.enumValue = MSGraphAccessPackageExternalUserLifecycleActionBlockSignIn;
    });
    return _blockSignIn;
}
+ (MSGraphAccessPackageExternalUserLifecycleAction*) blockSignInAndDelete {
    static MSGraphAccessPackageExternalUserLifecycleAction *_blockSignInAndDelete;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _blockSignInAndDelete = [[MSGraphAccessPackageExternalUserLifecycleAction alloc] init];
        _blockSignInAndDelete.enumValue = MSGraphAccessPackageExternalUserLifecycleActionBlockSignInAndDelete;
    });
    return _blockSignInAndDelete;
}
+ (MSGraphAccessPackageExternalUserLifecycleAction*) unknownFutureValue {
    static MSGraphAccessPackageExternalUserLifecycleAction *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphAccessPackageExternalUserLifecycleAction alloc] init];
        _unknownFutureValue.enumValue = MSGraphAccessPackageExternalUserLifecycleActionUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphAccessPackageExternalUserLifecycleAction*) UnknownEnumValue {
    static MSGraphAccessPackageExternalUserLifecycleAction *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAccessPackageExternalUserLifecycleAction alloc] init];
        _unknownValue.enumValue = MSGraphAccessPackageExternalUserLifecycleActionEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAccessPackageExternalUserLifecycleAction*) accessPackageExternalUserLifecycleActionWithEnumValue:(MSGraphAccessPackageExternalUserLifecycleActionValue)val {

    switch(val)
    {
        case MSGraphAccessPackageExternalUserLifecycleActionNone:
            return [MSGraphAccessPackageExternalUserLifecycleAction none];
        case MSGraphAccessPackageExternalUserLifecycleActionBlockSignIn:
            return [MSGraphAccessPackageExternalUserLifecycleAction blockSignIn];
        case MSGraphAccessPackageExternalUserLifecycleActionBlockSignInAndDelete:
            return [MSGraphAccessPackageExternalUserLifecycleAction blockSignInAndDelete];
        case MSGraphAccessPackageExternalUserLifecycleActionUnknownFutureValue:
            return [MSGraphAccessPackageExternalUserLifecycleAction unknownFutureValue];
        case MSGraphAccessPackageExternalUserLifecycleActionEndOfEnum:
        default:
            return [MSGraphAccessPackageExternalUserLifecycleAction UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAccessPackageExternalUserLifecycleActionNone:
            return @"none";
        case MSGraphAccessPackageExternalUserLifecycleActionBlockSignIn:
            return @"blockSignIn";
        case MSGraphAccessPackageExternalUserLifecycleActionBlockSignInAndDelete:
            return @"blockSignInAndDelete";
        case MSGraphAccessPackageExternalUserLifecycleActionUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphAccessPackageExternalUserLifecycleActionEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAccessPackageExternalUserLifecycleActionValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAccessPackageExternalUserLifecycleAction)

- (MSGraphAccessPackageExternalUserLifecycleAction*) toMSGraphAccessPackageExternalUserLifecycleAction{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphAccessPackageExternalUserLifecycleAction none];
    }
    else if([self isEqualToString:@"blockSignIn"])
    {
          return [MSGraphAccessPackageExternalUserLifecycleAction blockSignIn];
    }
    else if([self isEqualToString:@"blockSignInAndDelete"])
    {
          return [MSGraphAccessPackageExternalUserLifecycleAction blockSignInAndDelete];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphAccessPackageExternalUserLifecycleAction unknownFutureValue];
    }
    else {
        return [MSGraphAccessPackageExternalUserLifecycleAction UnknownEnumValue];
    }
}

@end
