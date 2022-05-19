#!/usr/bin/perl

=head1 NAME

Excel-Writer-XLSX-Simple-Tabs-example.pl - Excel::Writer::XLSX::Simple::Tabs Simple Example

=cut

use strict;
use warnings;
use Excel::Writer::XLSX::Simple::Tabs;
my $ss=Excel::Writer::XLSX::Simple::Tabs->new;
my @data=(
          ["Variable",                   "Value"               ],
          ["Integer",                    "12345"               ],
          ["Float",                      "12345.678"           ],
          ["Date MM/DD/YYYY HH24:MI:SS", "10/03/2010 23:15:30" ],
          ["Long Integer String",        "1234567890123456789" ],
          ["Zero Padded Number",         "02123456" ],
         );
$ss->add(Tab1=>\@data, Tab2=>\@data);
print $ss->content;
