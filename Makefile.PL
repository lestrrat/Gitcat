#!/usr/bin/env perl
# IMPORTANT: if you delete this file your app will not work as
# expected.  You have been warned.
use inc::Module::Install;

name 'Gitcat-Web';
all_from 'lib/Gitcat/Web.pm';

requires 'Catalyst::Runtime' => '5.80013';
requires 'Catalyst::Plugin::ConfigLoader';
requires 'Catalyst::Plugin::Static::Simple';
requires 'Catalyst::Action::RenderView';
requires 'parent';
requires 'Config::General'; 

# As of this writing, we currently use Git::PurePerl from github.
requires 'Git::PurePerl' => 0.42;
catalyst;

install_script glob('script/*.pl');
auto_install;
WriteAll;
