// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphKeyValuePair; 


#import "MSGraphEntity.h"

@interface MSGraphServiceAnnouncementBase : MSGraphEntity

  @property (nullable, nonatomic, setter=setDetails:, getter=details) NSArray* details;
    @property (nullable, nonatomic, setter=setEndDateTime:, getter=endDateTime) NSDate* endDateTime;
    @property (nonnull, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nonnull, nonatomic, setter=setStartDateTime:, getter=startDateTime) NSDate* startDateTime;
    @property (nonnull, nonatomic, setter=setTitle:, getter=title) NSString* title;
  
@end
