use utf8;
package X::Schema::Result::Person;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

X::Schema::Result::Person

=cut

use strict;
use warnings;

=head1 BASE CLASS: L<X::Schema::Result>

=cut

use base 'X::Schema::Result';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<person>

=cut

__PACKAGE__->table("person");

=head1 ACCESSORS

=head2 id

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 email

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 shirt_size

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 enabled

  data_type: 'boolean'
  default_value: true
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "email",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "shirt_size",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "enabled",
  { data_type => "boolean", default_value => \"true", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 speakers

Type: has_many

Related object: L<X::Schema::Result::Speaker>

=cut

__PACKAGE__->has_many(
  "speakers",
  "X::Schema::Result::Speaker",
  { "foreign.person_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2017-05-17 23:08:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:B8h6DGHsOEaJd40EC+GXDQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
