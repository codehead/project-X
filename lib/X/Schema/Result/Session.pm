use utf8;
package X::Schema::Result::Session;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

X::Schema::Result::Session

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

=head1 TABLE: C<session>

=cut

__PACKAGE__->table("session");

=head1 ACCESSORS

=head2 id

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 type

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 speaker_id

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 64

=head2 starting_time

  data_type: 'timestamp with time zone'
  is_nullable: 1

=head2 ending_time

  data_type: 'timestamp with time zone'
  is_nullable: 1

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
  "type",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "speaker_id",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 64 },
  "starting_time",
  { data_type => "timestamp with time zone", is_nullable => 1 },
  "ending_time",
  { data_type => "timestamp with time zone", is_nullable => 1 },
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

=head2 speaker

Type: belongs_to

Related object: L<X::Schema::Result::Speaker>

=cut

__PACKAGE__->belongs_to(
  "speaker",
  "X::Schema::Result::Speaker",
  { id => "speaker_id" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "NO ACTION",
    on_update     => "NO ACTION",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2017-05-17 23:08:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:wF6A5LwpvZchff0Qk2Ey0Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
