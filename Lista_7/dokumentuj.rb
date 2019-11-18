gem 'rdoc'
require 'rdoc/rdoc'

$ rdoc
##
# This class represents an arbitrary shape by a series of points.

class Shape

  ##
  # Creates a new shape described by a +polyline+.
  #
  # If the +polyline+ does not end at the same point it started at the
  # first pointed is copied and placed at the end of the line.
  #
  # An ArgumentError is raised if the line crosses itself, but shapes may
  # be concave.

  def initialize polyline
    # ...
  end

end

options = RDoc::Options.new
# see RDoc::Options

rdoc = RDoc::RDoc.new
rdoc.document options
# see RDoc::RDoc