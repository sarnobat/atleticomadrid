#!/bin/bash
echo "<!--#include virtual=\"/menubar.html\" -->"

echo "<h2>Aerial</h2>"
echo "<h3>East</h3>"
find /e/Sridhar/Atletico\ Madrid/Pictures/Other/Stadium/Vicente_Calderon/ -type f | grep -i east
echo "<h3>West</h3>"
find /e/Sridhar/Atletico\ Madrid/Pictures/Other/Stadium/Vicente_Calderon/ -type f | grep -i west
echo "<h3>North</h3>"
echo "<h4>left</h4>"
find /e/Sridhar/Atletico\ Madrid/Pictures/Other/Stadium/Vicente_Calderon/ -type f | grep -i north | grep -i left
echo "<h4>center</h4>"
find /e/Sridhar/Atletico\ Madrid/Pictures/Other/Stadium/Vicente_Calderon/ -type f | grep -i north | grep -i center
echo "<h4>right</h4>"
find /e/Sridhar/Atletico\ Madrid/Pictures/Other/Stadium/Vicente_Calderon/ -type f | grep -i north | grep -i right

echo "<h3>South</h3>"
echo "<h4>South left</h4>"
find /e/Sridhar/Atletico\ Madrid/Pictures/Other/Stadium/Vicente_Calderon/ -type f | grep -i south | grep -i left
echo "<h4>South center</h4>"
find /e/Sridhar/Atletico\ Madrid/Pictures/Other/Stadium/Vicente_Calderon/ -type f | grep -i south | grep -i center
echo "<h4>South right</h4>"
find /e/Sridhar/Atletico\ Madrid/Pictures/Other/Stadium/Vicente_Calderon/ -type f | grep -i south | grep -i right

echo "<h2>Interior</h2>"
echo "<h3>Interior</h3>"
find /e/Sridhar/Atletico\ Madrid/Pictures/Other/Stadium/Vicente_Calderon/ -type f | grep -i interior

echo "<h2>Exterior</h2>"
echo "<h3>Exterior Close</h3>"
echo "<h4>north</h4>"
find /e/Sridhar/Atletico\ Madrid/Pictures/Other/Stadium/Vicente_Calderon/ -type f | grep -i exterior | grep -i close | grep -i north
echo "<h4>south</h4>"
find /e/Sridhar/Atletico\ Madrid/Pictures/Other/Stadium/Vicente_Calderon/ -type f | grep -i exterior | grep -i close | grep -i south
echo "<h4>east</h4>"
find /e/Sridhar/Atletico\ Madrid/Pictures/Other/Stadium/Vicente_Calderon/ -type f | grep -i exterior | grep -i close | grep -i east
echo "<h4>west</h4>"
find /e/Sridhar/Atletico\ Madrid/Pictures/Other/Stadium/Vicente_Calderon/ -type f | grep -i exterior | grep -i close | grep -i west

echo "<h3>Exterior Distant</h3>"
echo "<h4>South</h4>"
find /e/Sridhar/Atletico\ Madrid/Pictures/Other/Stadium/Vicente_Calderon/ -type f | grep -i exterior | grep -i distant | grep -i south
echo "<h4>North</h4>"
find /e/Sridhar/Atletico\ Madrid/Pictures/Other/Stadium/Vicente_Calderon/ -type f | grep -i exterior | grep -i distant | grep -i north


cd ~/www/atleticomadridenglish/
. ~/bin/www_regenerate_images.sh

duff -r /e/Sridhar/Atletico\ Madrid/Pictures/Other/Stadium/Vicente_Calderon/ | tee /e/Sridhar/Atletico\ Madrid/Pictures/Other/Stadium/Vicente_Calderon/duplicates.txt