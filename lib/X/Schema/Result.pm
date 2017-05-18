package X::Schema::Result;
use strict;
use warnings FATAL => 'all';
use base 'DBIx::Class::Core';

sub new {
    my ( $class, $attrs ) = @_;
    $attrs->{id} = sprintf("%08x"x4,map{0xFFFFFFFF*rand()}(1..4)) unless defined $attrs->{id};
    my $new = $class->next::method($attrs);
    return $new;
}


1;