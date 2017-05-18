use utf8;
package X::Schema::Result::Speaker;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

X::Schema::Result::Speaker

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

=head1 TABLE: C<speaker>

=cut

__PACKAGE__->table("speaker");

=head1 ACCESSORS

=head2 id

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 bio

  data_type: 'text'
  is_nullable: 1

=head2 person_id

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 64

=head2 web

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 twitter_id

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 github_id

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 cpan_id

  data_type: 'varchar'
  is_nullable: 1
  size: 255

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
  "bio",
  { data_type => "text", is_nullable => 1 },
  "person_id",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 64 },
  "web",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "twitter_id",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "github_id",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "cpan_id",
  { data_type => "varchar", is_nullable => 1, size => 255 },
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

=head2 person

Type: belongs_to

Related object: L<X::Schema::Result::Person>

=cut

__PACKAGE__->belongs_to(
  "person",
  "X::Schema::Result::Person",
  { id => "person_id" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "NO ACTION",
    on_update     => "NO ACTION",
  },
);

=head2 sessions

Type: has_many

Related object: L<X::Schema::Result::Session>

=cut

__PACKAGE__->has_many(
  "sessions",
  "X::Schema::Result::Session",
  { "foreign.speaker_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2017-05-17 23:08:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:hpcAD+ynY8oebuogYNVU9A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
