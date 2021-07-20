// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphVerifiedPublisher()
{
    NSDate* _addedDateTime;
    NSString* _displayName;
    NSString* _verifiedPublisherId;
}
@end

@implementation MSGraphVerifiedPublisher

- (NSDate*) addedDateTime
{
    if(!_addedDateTime){
        _addedDateTime = [NSDate ms_dateFromString: self.dictionary[@"addedDateTime"]];
    }
    return _addedDateTime;
}

- (void) setAddedDateTime: (NSDate*) val
{
    _addedDateTime = val;
    self.dictionary[@"addedDateTime"] = [val ms_toString];
}

- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSString*) verifiedPublisherId
{
    if([[NSNull null] isEqual:self.dictionary[@"verifiedPublisherId"]])
    {
        return nil;
    }   
    return self.dictionary[@"verifiedPublisherId"];
}

- (void) setVerifiedPublisherId: (NSString*) val
{
    self.dictionary[@"verifiedPublisherId"] = val;
}

@end
