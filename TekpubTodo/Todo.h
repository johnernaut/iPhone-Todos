//
//  Todo.h
//  TekpubTodo
//
//  Created by John Johnson III on 4/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Todo : NSObject {
    NSString *text;
    BOOL completed;
}

@property (nonatomic, copy) NSString *text;
@property (nonatomic) BOOL completed;

-(id)initWithText:(NSString *)text;

@end
