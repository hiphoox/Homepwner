class AnotherViewController

 def tableView(tableView, numberOfRowsInSection:section)
    4
  end

  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    # Check for a reusable cell first, use that if it exists
    cell = tableView.dequeueReusableCellWithIdentifier('HomepwnerItemCell')

    # Configure the cell with the BNRItem
    cell.nameLabel.setText('Dentro del:')
    cell.serialNumberLabel.setText('AnotherViewController')
    cell.valueLabel.setText('Fiu!')

    cell
  end

end