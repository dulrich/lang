package Lang;
use Mojo::Base 'Mojolicious';
use Mojolicious::Static;

# This method will run once at server start
sub startup {
	my $self = shift;

	# Router
	my $r = $self->routes;
	
	my $static = $self->static;
	push @{$static->paths} => $main::config{"basepath"} . '/static';
	
	# Normal route to controller
	$r->get('/')->to(
		controller => 'Public',
		action     => 'about'
	);
	
	$r->get('/login')->to(
		controller => 'Public',
		action     => 'login'
	);
}

1;
