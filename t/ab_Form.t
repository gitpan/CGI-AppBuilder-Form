use strict;
use warnings;

use Test::More qw(no_plan); 
# use CGI::AppBuilder::Message qw(:all); 

use CGI::AppBuilder::Form;
my $class = 'CGI::AppBuilder::Form';
my $obj = CGI::AppBuilder::Form->new; 

isa_ok($obj, "CGI::AppBuilder::Form");

my @md = @CGI::AppBuilder::Form::EXPORT_OK;
foreach my $m (@md) {
    ok($obj->can($m), "$class->can('$m')");
}

diag("Test methods...");
# ($fr, $pr) 

1;

