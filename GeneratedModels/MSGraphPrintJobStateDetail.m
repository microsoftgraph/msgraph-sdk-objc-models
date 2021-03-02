// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphPrintJobStateDetail.h"

@interface MSGraphPrintJobStateDetail () {
    MSGraphPrintJobStateDetailValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphPrintJobStateDetailValue enumValue;
@end

@implementation MSGraphPrintJobStateDetail

+ (MSGraphPrintJobStateDetail*) uploadPending {
    static MSGraphPrintJobStateDetail *_uploadPending;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _uploadPending = [[MSGraphPrintJobStateDetail alloc] init];
        _uploadPending.enumValue = MSGraphPrintJobStateDetailUploadPending;
    });
    return _uploadPending;
}
+ (MSGraphPrintJobStateDetail*) transforming {
    static MSGraphPrintJobStateDetail *_transforming;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _transforming = [[MSGraphPrintJobStateDetail alloc] init];
        _transforming.enumValue = MSGraphPrintJobStateDetailTransforming;
    });
    return _transforming;
}
+ (MSGraphPrintJobStateDetail*) completedSuccessfully {
    static MSGraphPrintJobStateDetail *_completedSuccessfully;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _completedSuccessfully = [[MSGraphPrintJobStateDetail alloc] init];
        _completedSuccessfully.enumValue = MSGraphPrintJobStateDetailCompletedSuccessfully;
    });
    return _completedSuccessfully;
}
+ (MSGraphPrintJobStateDetail*) completedWithWarnings {
    static MSGraphPrintJobStateDetail *_completedWithWarnings;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _completedWithWarnings = [[MSGraphPrintJobStateDetail alloc] init];
        _completedWithWarnings.enumValue = MSGraphPrintJobStateDetailCompletedWithWarnings;
    });
    return _completedWithWarnings;
}
+ (MSGraphPrintJobStateDetail*) completedWithErrors {
    static MSGraphPrintJobStateDetail *_completedWithErrors;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _completedWithErrors = [[MSGraphPrintJobStateDetail alloc] init];
        _completedWithErrors.enumValue = MSGraphPrintJobStateDetailCompletedWithErrors;
    });
    return _completedWithErrors;
}
+ (MSGraphPrintJobStateDetail*) releaseWait {
    static MSGraphPrintJobStateDetail *_releaseWait;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _releaseWait = [[MSGraphPrintJobStateDetail alloc] init];
        _releaseWait.enumValue = MSGraphPrintJobStateDetailReleaseWait;
    });
    return _releaseWait;
}
+ (MSGraphPrintJobStateDetail*) interpreting {
    static MSGraphPrintJobStateDetail *_interpreting;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _interpreting = [[MSGraphPrintJobStateDetail alloc] init];
        _interpreting.enumValue = MSGraphPrintJobStateDetailInterpreting;
    });
    return _interpreting;
}
+ (MSGraphPrintJobStateDetail*) unknownFutureValue {
    static MSGraphPrintJobStateDetail *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphPrintJobStateDetail alloc] init];
        _unknownFutureValue.enumValue = MSGraphPrintJobStateDetailUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphPrintJobStateDetail*) UnknownEnumValue {
    static MSGraphPrintJobStateDetail *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphPrintJobStateDetail alloc] init];
        _unknownValue.enumValue = MSGraphPrintJobStateDetailEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphPrintJobStateDetail*) printJobStateDetailWithEnumValue:(MSGraphPrintJobStateDetailValue)val {

    switch(val)
    {
        case MSGraphPrintJobStateDetailUploadPending:
            return [MSGraphPrintJobStateDetail uploadPending];
        case MSGraphPrintJobStateDetailTransforming:
            return [MSGraphPrintJobStateDetail transforming];
        case MSGraphPrintJobStateDetailCompletedSuccessfully:
            return [MSGraphPrintJobStateDetail completedSuccessfully];
        case MSGraphPrintJobStateDetailCompletedWithWarnings:
            return [MSGraphPrintJobStateDetail completedWithWarnings];
        case MSGraphPrintJobStateDetailCompletedWithErrors:
            return [MSGraphPrintJobStateDetail completedWithErrors];
        case MSGraphPrintJobStateDetailReleaseWait:
            return [MSGraphPrintJobStateDetail releaseWait];
        case MSGraphPrintJobStateDetailInterpreting:
            return [MSGraphPrintJobStateDetail interpreting];
        case MSGraphPrintJobStateDetailUnknownFutureValue:
            return [MSGraphPrintJobStateDetail unknownFutureValue];
        case MSGraphPrintJobStateDetailEndOfEnum:
        default:
            return [MSGraphPrintJobStateDetail UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphPrintJobStateDetailUploadPending:
            return @"uploadPending";
        case MSGraphPrintJobStateDetailTransforming:
            return @"transforming";
        case MSGraphPrintJobStateDetailCompletedSuccessfully:
            return @"completedSuccessfully";
        case MSGraphPrintJobStateDetailCompletedWithWarnings:
            return @"completedWithWarnings";
        case MSGraphPrintJobStateDetailCompletedWithErrors:
            return @"completedWithErrors";
        case MSGraphPrintJobStateDetailReleaseWait:
            return @"releaseWait";
        case MSGraphPrintJobStateDetailInterpreting:
            return @"interpreting";
        case MSGraphPrintJobStateDetailUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphPrintJobStateDetailEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphPrintJobStateDetailValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphPrintJobStateDetail)

- (MSGraphPrintJobStateDetail*) toMSGraphPrintJobStateDetail{

    if([self isEqualToString:@"uploadPending"])
    {
          return [MSGraphPrintJobStateDetail uploadPending];
    }
    else if([self isEqualToString:@"transforming"])
    {
          return [MSGraphPrintJobStateDetail transforming];
    }
    else if([self isEqualToString:@"completedSuccessfully"])
    {
          return [MSGraphPrintJobStateDetail completedSuccessfully];
    }
    else if([self isEqualToString:@"completedWithWarnings"])
    {
          return [MSGraphPrintJobStateDetail completedWithWarnings];
    }
    else if([self isEqualToString:@"completedWithErrors"])
    {
          return [MSGraphPrintJobStateDetail completedWithErrors];
    }
    else if([self isEqualToString:@"releaseWait"])
    {
          return [MSGraphPrintJobStateDetail releaseWait];
    }
    else if([self isEqualToString:@"interpreting"])
    {
          return [MSGraphPrintJobStateDetail interpreting];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphPrintJobStateDetail unknownFutureValue];
    }
    else {
        return [MSGraphPrintJobStateDetail UnknownEnumValue];
    }
}

@end
