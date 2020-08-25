// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCallTranscriptionInfo()
{
    MSGraphCallTranscriptionState* _state;
    NSDate* _lastModifiedDateTime;
}
@end

@implementation MSGraphCallTranscriptionInfo

- (MSGraphCallTranscriptionState*) state
{
    if(!_state){
        _state = [self.dictionary[@"state"] toMSGraphCallTranscriptionState];
    }
    return _state;
}

- (void) setState: (MSGraphCallTranscriptionState*) val
{
    _state = val;
    self.dictionary[@"state"] = val;
}

- (NSDate*) lastModifiedDateTime
{
    if(!_lastModifiedDateTime){
        _lastModifiedDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastModifiedDateTime"]];
    }
    return _lastModifiedDateTime;
}

- (void) setLastModifiedDateTime: (NSDate*) val
{
    _lastModifiedDateTime = val;
    self.dictionary[@"lastModifiedDateTime"] = [val ms_toString];
}

@end
