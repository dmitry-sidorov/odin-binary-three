require_relative 'Tree.rb'

# nodes_list = Range.new(1,10).to_a
nodes_list = [7,10,3,15,1,4,5]
tree = Tree.new
tree.build_tree(nodes_list)
tree.pretty_print
tree.print_inorder