# lang: simple flashcard system
# Copyright (C) 2016  David Ulrich (http://github.com/dulrich)
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
# 
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

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
