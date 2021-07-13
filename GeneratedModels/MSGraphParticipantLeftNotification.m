// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphParticipantLeftNotification()
{
    NSString* _participantId;
    MSGraphCall* _call;
}
@end

@implementation MSGraphParticipantLeftNotification

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.participantLeftNotification";
    }
    return self;
}
- (NSString*) participantId
{
    return self.dictionary[@"participantId"];
}

- (void) setParticipantId: (NSString*) val
{
    self.dictionary[@"participantId"] = val;
}

- (MSGraphCall*) call
{
    if(!_call){
        _call = [[MSGraphCall alloc] initWithDictionary: self.dictionary[@"call"]];
    }
    return _call;
}

- (void) setCall: (MSGraphCall*) val
{
    _call = val;
    self.dictionary[@"call"] = val;
}


@end
