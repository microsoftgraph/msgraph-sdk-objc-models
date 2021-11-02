// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEdiscoverySiteSource()
{
    MSGraphSite* _site;
}
@end

@implementation MSGraphEdiscoverySiteSource

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.ediscovery.siteSource";
    }
    return self;
}
- (MSGraphSite*) site
{
    if(!_site){
        _site = [[MSGraphSite alloc] initWithDictionary: self.dictionary[@"site"]];
    }
    return _site;
}

- (void) setSite: (MSGraphSite*) val
{
    _site = val;
    self.dictionary[@"site"] = val;
}


@end
