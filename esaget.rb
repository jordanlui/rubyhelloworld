# ESA wget test
# dynamic
# username = "jordanlui"
# pass = "Bahtong7890"
# url = "https://scihub.copernicus.eu/dhus/search?q=footprint:%22Intersects(41.9000,%2012.5000)%22"

# wget --no-check-certificate --user=username --password=pass --output-document=esaquery.txt url

# Static
# wget --no-check-certificate --user="jordanlui" --password="Bahtong7890" --output-document="esaquery.txt" "https://scihub.copernicus.eu/dhus/search?q=footprint:%22Intersects(41.9000,%2012.5000)%22"

# system("wget --no-check-certificate --user="jordanlui" --password="Bahtong7890" --output-document="esaquery_ruby.txt" "https://scihub.copernicus.eu/dhus/search?q=footprint:%22Intersects(41.9000,%2012.5000)%22"")