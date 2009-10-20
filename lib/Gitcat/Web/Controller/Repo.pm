package Gitcat::Web::Controller::Repo;
use Moose;
use namespace::clean -except => qw(meta);
use Git::PurePerl;

BEGIN { extends 'Catalyst::Controller' }

sub load
    :Chained
    :PathPart('repo')
    :CaptureArgs(1)
{
    my ($self, $c, $id) = @_;

    my $git = $c->model('Git')->load($id);

    $c->stash(
        repo_id => $id,
        repo => $git,
    );
}

sub summary
    :Chained('/repo/load')
    :PathPart('')
    :Args
{

}

__PACKAGE__->meta->make_immutable();

1;