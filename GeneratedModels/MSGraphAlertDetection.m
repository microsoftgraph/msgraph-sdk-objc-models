// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAlertDetection()
{
    NSString* _detectionType;
    NSString* _method;
    NSString* _name;
}
@end

@implementation MSGraphAlertDetection

- (NSString*) detectionType
{
    if([[NSNull null] isEqual:self.dictionary[@"detectionType"]])
    {
        return nil;
    }   
    return self.dictionary[@"detectionType"];
}

- (void) setDetectionType: (NSString*) val
{
    self.dictionary[@"detectionType"] = val;
}

- (NSString*) method
{
    if([[NSNull null] isEqual:self.dictionary[@"method"]])
    {
        return nil;
    }   
    return self.dictionary[@"method"];
}

- (void) setMethod: (NSString*) val
{
    self.dictionary[@"method"] = val;
}

- (NSString*) name
{
    if([[NSNull null] isEqual:self.dictionary[@"name"]])
    {
        return nil;
    }   
    return self.dictionary[@"name"];
}

- (void) setName: (NSString*) val
{
    self.dictionary[@"name"] = val;
}

@end
