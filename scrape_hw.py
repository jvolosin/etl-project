#web scraping file
from splinter import Browser
from bs4 import BeautifulSoup


def init_browser():
    # actual path to the chromedriver
    executable_path = {'executable_path': ChromeDriverManager().install()}
    browser = Browser('chrome', **executable_path, headless=False)


def scrape():
    browser = init_browser()
    country_list = {}

    url = "https://statpedia.com/stat/Average_Yearly_Temperature_by_Country/HJd7OcGK"
    browser.visit(url)

    html = browser.html
    soup = BeautifulSoup(html, "html.parser")

    country_list["headline"] = soup.find("td", class_="htDimmed current area").get_text()
    country_list["Average_Yearly_Temperature_by_Country "] = soup.find("td", class_="htDimmed").get_text()


    return listings
