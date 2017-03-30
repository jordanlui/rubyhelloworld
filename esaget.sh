# ESA wget test
# email = jordan.lui@gmail.com
# pass = Bahtong7890
# url = "https://scihub.copernicus.eu/dhus/search?q=footprint:%22Intersects(41.9000,%2012.5000)%22"

# wget --no-check-certificate --user=email --password=pass --output-document=esaquery.txt url

wget --no-check-certificate --user="jordanlui" --password="Bahtong7890" --output-document="esaquery.txt" "https://scihub.copernicus.eu/dhus/search?q=footprint:%22Intersects(41.9000,%2012.5000)%22"




