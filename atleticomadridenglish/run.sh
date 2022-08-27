#
# Use this script to regenrate all dynamic content.
#


cat ~/sarnobat.git/mwk/atletico_articles_english.mwk | sudo php /home/sarnobat/www/atleticomadridenglish_wiki/mediawiki/maintenance/parse.php | tee /home/sarnobat/sarnobat.git/atleticomadridenglish/atleticomadridenglish/articles_autoparsed.html
