#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController {
  NSArray<Person *> *people;
}

- (void)viewDidLoad {
  [super viewDidLoad];
  Person *alex = [Person new];
  alex.name = @"Alex";
  alex.title = @"instructor";
  
  Person *bob = [Person new];
  bob.name = @"bob";
  bob.title = @"example";
  
  people = @[alex, bob];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return people.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
  Person *person = people[indexPath.row];
  cell.textLabel.text = person.name;
  cell.detailTextLabel.text = person.title;
  return cell;
}











@end
