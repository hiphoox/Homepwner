class ItemsViewController < UITableViewController

  # def init
  #   # Call the superclass's designated initializer
  #   super.initWithStyle(UITableViewStyleGrouped)

  #   return self
  # end

  # def initWithStyle(style)
  #     return self.init
  # end

  def viewDidLoad
    super()
    # Load the NIB file
    nib = UINib.nibWithNibName('HomepwnerItemCell', bundle:nil)
    # Register this NIB which contains the cell
    self.tableView.registerNib(nib, forCellReuseIdentifier:'HomepwnerItemCell')
  end

  def tableView(tableView, numberOfRowsInSection:section)
    4
  end

  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    # Check for a reusable cell first, use that if it exists
    cell = tableView.dequeueReusableCellWithIdentifier('HomepwnerItemCell')

    # Configure the cell with the BNRItem
    cell.nameLabel.setText('Dentro de ')
    cell.serialNumberLabel.setText('ItemsViewController')
    cell.valueLabel.setText('Wow!')

    cell
  end

end