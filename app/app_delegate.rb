class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    # Create a ItemsViewController
    itemsViewController = ItemsViewController.alloc.initWithStyle(UITableViewStyleGrouped)

    # Misa: You can comment this line out in order to avoid using the AnotherViewController
    # itemsViewController.tableView.setDataSource(AnotherViewController.new)   

    # Place ItemsViewController's table view in the window hierarchy
    @window.setRootViewController(itemsViewController)

    @window.backgroundColor = UIColor.whiteColor
    @window.makeKeyAndVisible()

    true
  end
end
