// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphParticipantJoiningNotification()
{
    MSGraphCall* _call;
}
@end

@implementation MSGraphParticipantJoiningNotification

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.participantJoiningNotification";
    }
    return self;
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
