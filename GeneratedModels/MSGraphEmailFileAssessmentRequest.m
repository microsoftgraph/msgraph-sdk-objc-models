// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEmailFileAssessmentRequest()
{
    NSString* _recipientEmail;
    MSGraphMailDestinationRoutingReason* _destinationRoutingReason;
    NSString* _contentData;
}
@end

@implementation MSGraphEmailFileAssessmentRequest

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.emailFileAssessmentRequest";
    }
    return self;
}
- (NSString*) recipientEmail
{
    return self.dictionary[@"recipientEmail"];
}

- (void) setRecipientEmail: (NSString*) val
{
    self.dictionary[@"recipientEmail"] = val;
}

- (MSGraphMailDestinationRoutingReason*) destinationRoutingReason
{
    if(!_destinationRoutingReason){
        _destinationRoutingReason = [self.dictionary[@"destinationRoutingReason"] toMSGraphMailDestinationRoutingReason];
    }
    return _destinationRoutingReason;
}

- (void) setDestinationRoutingReason: (MSGraphMailDestinationRoutingReason*) val
{
    _destinationRoutingReason = val;
    self.dictionary[@"destinationRoutingReason"] = val;
}

- (NSString*) contentData
{
    return self.dictionary[@"contentData"];
}

- (void) setContentData: (NSString*) val
{
    self.dictionary[@"contentData"] = val;
}


@end
