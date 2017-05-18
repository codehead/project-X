use Mojo::Base - strict;

use Test::More;
use X::Schema;
use Data::Dumper;

# Minimal connection string with database
my $schema = X::Schema->connect_with_env_info();

ok $schema, 'exists';

done_testing();
