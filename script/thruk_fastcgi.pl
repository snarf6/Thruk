#!/usr/bin/perl

use strict;
use warnings;

use lib '/usr/lib/thruk/perl5';
use lib '/usr/share/thruk/lib';

use Catalyst::ScriptRunner;
$ENV{'THRUK_SRC'} = 'FastCGI';
Catalyst::ScriptRunner->run('Thruk', 'FastCGI');

1;

=head1 NAME

thruk_fastcgi.pl - Catalyst FastCGI

=head1 SYNOPSIS

thruk_fastcgi.pl [options]

 Options:
   -? -help      display this help and exits
   -l --listen   Socket path to listen on
                 (defaults to standard input)
                 can be HOST:PORT, :PORT or a
                 filesystem path
   -n --nproc    specify number of processes to keep
                 to serve requests (defaults to 1,
                 requires -listen)
   -p --pidfile  specify filename for pid file
                 (requires -listen)
   -d --daemon   daemonize (requires -listen)
   -M --manager  specify alternate process manager
                 (FCGI::ProcManager sub-class)
                 or empty string to disable
   -e --keeperr  send error messages to STDOUT, not
                 to the webserver

=head1 DESCRIPTION

Run a Catalyst application as fastcgi.

=head1 AUTHORS

Catalyst Contributors, see Catalyst.pm

=head1 COPYRIGHT

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
