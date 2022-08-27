#!/usr/bin/perl
#
# printheder.cgi -- action script to add header and footer to HTML documents
#
# <Directory  "/var/www/html/atleticomadridenglish/">
#   # Make sure that /etc/apache/mods-available/actions.* are copied to the mods-enabled directory
#   Action add-footer /bin/header.pl
#   AddHandler add-footer .html
# </Directory>

print "Content-type: text/html\n\n";

# prevent direct requests which circumvent standard apache access checking
if ( not defined $ENV{'REDIRECT_URL'} )
{
   print "<h1>Secuirty Violation</h1>Requests must come from redirect\n";
   exit 0;
}


#open USER, "/home/sarnobat/sarnobat.git/atleticomadridenglish/header.html";
#print <USER>;
#close USER;

$file = $ENV{'PATH_TRANSLATED'};
#my $r = shift;

#print "<h1>Atletico Madrid English</h2>\n";
print "We are transforming the content with atleticomadridenglish/bin/header.pl (but better to use Server Side Includes with menubar2.html)";
open FILE, "< $file" or die "can not open $file";
while ( <FILE> ) { print };

#print "footer, bla, bla, bla\n";
