use utf8;
package X::Schema;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Schema';

__PACKAGE__->load_namespaces;


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2017-05-17 22:28:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Qer/n/xkme3jH/wGBLWmOg

sub connect_with_env_info {
    return shift->connect($ENV{'DB_DSN'} ? $ENV{'DB_DSN'} : ('dbi:Pg:dbname='.($ENV{'DB_NAME'} || 'postgres').';host='
                .$ENV{'DB_HOST'}),
        $ENV{'DB_USER'}, $ENV{'DB_PASS'}, {
                $ENV{'DB_SCHEMA'} ? (
                    on_connect_do => [ 'SET search_path TO '.$ENV{'DB_SCHEMA'}.', public' ]
                )                 : (),
        }
    )
}

# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
