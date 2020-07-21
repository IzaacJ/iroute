#import "izaRootViewController.h"
#import "izaRouteCell.h"

@implementation izaRootViewController

- (void)loadView {
	[super loadView];

	_objects = [NSMutableArray array];

	UIButton *_infoButton = [UIButton buttonWithType:UIButtonTypeInfoLight];
	[_infoButton addTarget:self action:@selector(infoButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
	UIBarButtonItem *_infoBarButton = [[UIBarButtonItem alloc] initWithCustomView:_infoButton];

	self.title = @"iRoute";
	self.navigationItem.leftBarButtonItem = self.editButtonItem;
	self.navigationItem.rightBarButtonItem = _infoBarButton;
}

- (void)infoButtonTapped:(id)sender {

}

@end
