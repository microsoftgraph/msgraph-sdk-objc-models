// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphMeetingRequestType.h"

@interface MSGraphMeetingRequestType () {
    MSGraphMeetingRequestTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphMeetingRequestTypeValue enumValue;
@end

@implementation MSGraphMeetingRequestType

+ (MSGraphMeetingRequestType*) none {
    static MSGraphMeetingRequestType *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphMeetingRequestType alloc] init];
        _none.enumValue = MSGraphMeetingRequestTypeNone;
    });
    return _none;
}
+ (MSGraphMeetingRequestType*) newMeetingRequest {
    static MSGraphMeetingRequestType *_newMeetingRequest;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _newMeetingRequest = [[MSGraphMeetingRequestType alloc] init];
        _newMeetingRequest.enumValue = MSGraphMeetingRequestTypeNewMeetingRequest;
    });
    return _newMeetingRequest;
}
+ (MSGraphMeetingRequestType*) fullUpdate {
    static MSGraphMeetingRequestType *_fullUpdate;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _fullUpdate = [[MSGraphMeetingRequestType alloc] init];
        _fullUpdate.enumValue = MSGraphMeetingRequestTypeFullUpdate;
    });
    return _fullUpdate;
}
+ (MSGraphMeetingRequestType*) informationalUpdate {
    static MSGraphMeetingRequestType *_informationalUpdate;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _informationalUpdate = [[MSGraphMeetingRequestType alloc] init];
        _informationalUpdate.enumValue = MSGraphMeetingRequestTypeInformationalUpdate;
    });
    return _informationalUpdate;
}
+ (MSGraphMeetingRequestType*) silentUpdate {
    static MSGraphMeetingRequestType *_silentUpdate;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _silentUpdate = [[MSGraphMeetingRequestType alloc] init];
        _silentUpdate.enumValue = MSGraphMeetingRequestTypeSilentUpdate;
    });
    return _silentUpdate;
}
+ (MSGraphMeetingRequestType*) outdated {
    static MSGraphMeetingRequestType *_outdated;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _outdated = [[MSGraphMeetingRequestType alloc] init];
        _outdated.enumValue = MSGraphMeetingRequestTypeOutdated;
    });
    return _outdated;
}
+ (MSGraphMeetingRequestType*) principalWantsCopy {
    static MSGraphMeetingRequestType *_principalWantsCopy;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _principalWantsCopy = [[MSGraphMeetingRequestType alloc] init];
        _principalWantsCopy.enumValue = MSGraphMeetingRequestTypePrincipalWantsCopy;
    });
    return _principalWantsCopy;
}

+ (MSGraphMeetingRequestType*) UnknownEnumValue {
    static MSGraphMeetingRequestType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphMeetingRequestType alloc] init];
        _unknownValue.enumValue = MSGraphMeetingRequestTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphMeetingRequestType*) meetingRequestTypeWithEnumValue:(MSGraphMeetingRequestTypeValue)val {

    switch(val)
    {
        case MSGraphMeetingRequestTypeNone:
            return [MSGraphMeetingRequestType none];
        case MSGraphMeetingRequestTypeNewMeetingRequest:
            return [MSGraphMeetingRequestType newMeetingRequest];
        case MSGraphMeetingRequestTypeFullUpdate:
            return [MSGraphMeetingRequestType fullUpdate];
        case MSGraphMeetingRequestTypeInformationalUpdate:
            return [MSGraphMeetingRequestType informationalUpdate];
        case MSGraphMeetingRequestTypeSilentUpdate:
            return [MSGraphMeetingRequestType silentUpdate];
        case MSGraphMeetingRequestTypeOutdated:
            return [MSGraphMeetingRequestType outdated];
        case MSGraphMeetingRequestTypePrincipalWantsCopy:
            return [MSGraphMeetingRequestType principalWantsCopy];
        case MSGraphMeetingRequestTypeEndOfEnum:
        default:
            return [MSGraphMeetingRequestType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphMeetingRequestTypeNone:
            return @"none";
        case MSGraphMeetingRequestTypeNewMeetingRequest:
            return @"newMeetingRequest";
        case MSGraphMeetingRequestTypeFullUpdate:
            return @"fullUpdate";
        case MSGraphMeetingRequestTypeInformationalUpdate:
            return @"informationalUpdate";
        case MSGraphMeetingRequestTypeSilentUpdate:
            return @"silentUpdate";
        case MSGraphMeetingRequestTypeOutdated:
            return @"outdated";
        case MSGraphMeetingRequestTypePrincipalWantsCopy:
            return @"principalWantsCopy";
        case MSGraphMeetingRequestTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphMeetingRequestTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphMeetingRequestType)

- (MSGraphMeetingRequestType*) toMSGraphMeetingRequestType{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphMeetingRequestType none];
    }
    else if([self isEqualToString:@"newMeetingRequest"])
    {
          return [MSGraphMeetingRequestType newMeetingRequest];
    }
    else if([self isEqualToString:@"fullUpdate"])
    {
          return [MSGraphMeetingRequestType fullUpdate];
    }
    else if([self isEqualToString:@"informationalUpdate"])
    {
          return [MSGraphMeetingRequestType informationalUpdate];
    }
    else if([self isEqualToString:@"silentUpdate"])
    {
          return [MSGraphMeetingRequestType silentUpdate];
    }
    else if([self isEqualToString:@"outdated"])
    {
          return [MSGraphMeetingRequestType outdated];
    }
    else if([self isEqualToString:@"principalWantsCopy"])
    {
          return [MSGraphMeetingRequestType principalWantsCopy];
    }
    else {
        return [MSGraphMeetingRequestType UnknownEnumValue];
    }
}

@end
