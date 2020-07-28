// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEventMessageResponse()
{
    MSGraphTimeSlot* _proposedNewTime;
    MSGraphResponseType* _responseType;
}
@end

@implementation MSGraphEventMessageResponse

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.eventMessageResponse";
    }
    return self;
}
- (MSGraphTimeSlot*) proposedNewTime
{
    if(!_proposedNewTime){
        _proposedNewTime = [[MSGraphTimeSlot alloc] initWithDictionary: self.dictionary[@"proposedNewTime"]];
    }
    return _proposedNewTime;
}

- (void) setProposedNewTime: (MSGraphTimeSlot*) val
{
    _proposedNewTime = val;
    self.dictionary[@"proposedNewTime"] = val;
}

- (MSGraphResponseType*) responseType
{
    if(!_responseType){
        _responseType = [self.dictionary[@"responseType"] toMSGraphResponseType];
    }
    return _responseType;
}

- (void) setResponseType: (MSGraphResponseType*) val
{
    _responseType = val;
    self.dictionary[@"responseType"] = val;
}


@end
