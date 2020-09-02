// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCallRecordsFailureInfo()
{
    NSString* _reason;
    MSGraphCallRecordsFailureStage* _stage;
}
@end

@implementation MSGraphCallRecordsFailureInfo

- (NSString*) reason
{
    if([[NSNull null] isEqual:self.dictionary[@"reason"]])
    {
        return nil;
    }   
    return self.dictionary[@"reason"];
}

- (void) setReason: (NSString*) val
{
    self.dictionary[@"reason"] = val;
}

- (MSGraphCallRecordsFailureStage*) stage
{
    if(!_stage){
        _stage = [self.dictionary[@"stage"] toMSGraphCallRecordsFailureStage];
    }
    return _stage;
}

- (void) setStage: (MSGraphCallRecordsFailureStage*) val
{
    _stage = val;
    self.dictionary[@"stage"] = val;
}

@end
