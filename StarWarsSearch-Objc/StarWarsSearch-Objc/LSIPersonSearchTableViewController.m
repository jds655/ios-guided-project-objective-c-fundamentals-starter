//
//  LSIPersonSearchTableViewController.m
//  Star Wars Search ObjC
//
//  Created by Spencer Curtis on 10/1/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import "LSIPersonSearchTableViewController.h"
#import "LSIPersonTableViewCell.h"
#import "LSIPersonContoller.h"
#import "LSIPerson.h"

@interface LSIPersonSearchTableViewController ()

@property LSIPersonContoller *controller;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property NSArray *people;

@end

@implementation LSIPersonSearchTableViewController

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        _controller = [[LSIPersonContoller alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.searchBar setDelegate:self];
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
	
    [self.controller searchForPeopleWithSearchTerm:searchBar.text completion:^(NSArray *people, NSError *error) {
        if (error) {
            NSLog(@"Error: %@", error);
            return;
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            self.people = people;
            [self.tableView reloadData];
        });
        NSLog(@"Completion");
    }];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

	// TODO: Return the number of people in the search results
	return self.people.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    LSIPersonTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PersonCell" forIndexPath:indexPath];
    LSIPerson *person = self.people[indexPath.row];
    cell.person = person;
    //cell.nameLabel.text = person.name
    return cell;
}

@end
