//
//  ViewController.m
//  TekpubTodo
//
//  Created by John Johnson III on 4/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "Todo.h"

@implementation ViewController

- (void)addTodo:(NSString *)text 
{
    Todo *todo = [[Todo alloc] initWithText:text];
    [items addObject:todo];
}

#pragma mark - View Loaded

- (void)viewDidLoad
{
    [super viewDidLoad];
    items = [[NSMutableArray alloc] init];
    [self addTodo:@"Take out the trash"];
    [self addTodo:@"Do the dishes."];
    [self addTodo:@"Record a screencast."];
}

#pragma mark - TableView Data source

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
    NSString *cellIdentifier = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault 
                                      reuseIdentifier:cellIdentifier];
    }
    
    Todo *todo = [items objectAtIndex:indexPath.row];
    cell.textLabel.text = todo.text;
    
    if(todo.completed)
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    else
        cell.accessoryType = UITableViewCellAccessoryNone;
        
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [items count];
}

#pragma mark - TableView Delegates
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    Todo *todo = [items objectAtIndex:indexPath.row];
    todo.completed = !todo.completed;
    
    [tableView reloadData];
}

@end
