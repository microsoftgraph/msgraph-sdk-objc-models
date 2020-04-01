// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTimeOffReason()
{
    NSString* _displayName;
    MSGraphTimeOffReasonIconType* _iconType;
    BOOL _isActive;
}
@end

@implementation MSGraphTimeOffReason

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.timeOffReason";
    }
    return self;
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

- (MSGraphTimeOffReasonIconType*) iconType
{
    if(!_iconType){
        _iconType = [self.dictionary[@"iconType"] toMSGraphTimeOffReasonIconType];
    }
    return _iconType;
}

- (void) setIconType: (MSGraphTimeOffReasonIconType*) val
{
    _iconType = val;
    self.dictionary[@"iconType"] = val;
}

- (BOOL) isActive
{
    _isActive = [self.dictionary[@"isActive"] boolValue];
    return _isActive;
}

- (void) setIsActive: (BOOL) val
{
    _isActive = val;
    self.dictionary[@"isActive"] = @(val);
}


@end
