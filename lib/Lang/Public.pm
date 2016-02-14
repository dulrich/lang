package Lang::Public;
use Mojo::Base 'Mojolicious::Controller';

sub about {
	my $self = shift;
	
	$self->render(
		msg => 'about'
	);
}

sub login {
	my $self = shift;
	
	$self->render(
		msg => 'login or register'
	);
}

1;
