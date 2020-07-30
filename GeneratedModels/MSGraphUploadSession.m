// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUploadSession()
{
    NSString* _uploadUrl;
    NSDate* _expirationDateTime;
    NSArray* _nextExpectedRanges;
}
@end

@implementation MSGraphUploadSession

- (NSString*) uploadUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"uploadUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"uploadUrl"];
}

- (void) setUploadUrl: (NSString*) val
{
    self.dictionary[@"uploadUrl"] = val;
}

- (NSDate*) expirationDateTime
{
    if(!_expirationDateTime){
        _expirationDateTime = [NSDate ms_dateFromString: self.dictionary[@"expirationDateTime"]];
    }
    return _expirationDateTime;
}

- (void) setExpirationDateTime: (NSDate*) val
{
    _expirationDateTime = val;
    self.dictionary[@"expirationDateTime"] = [val ms_toString];
}

- (NSArray*) nextExpectedRanges
{
    if([[NSNull null] isEqual:self.dictionary[@"nextExpectedRanges"]])
    {
        return nil;
    }   
    return self.dictionary[@"nextExpectedRanges"];
}

- (void) setNextExpectedRanges: (NSArray*) val
{
    self.dictionary[@"nextExpectedRanges"] = val;
}

@end
