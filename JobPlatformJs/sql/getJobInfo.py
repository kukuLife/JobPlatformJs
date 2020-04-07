# coding:utf-8
import requests
import bs4
from bs4 import BeautifulSoup
import MySQLdb

con = {};
connection = {};

try:
	connection= MySQLdb.connect(user='root',passwd='12345',host='localhost',port=3306, db='job_platform')
	con = connection.cursor()

except Exception as e:
    print("caonidaye")
    print(e)

URL = "https://www.indeed.com/jobs?q=java"
page = requests.get(URL)
soup = BeautifulSoup(page.text,"html.parser")
def extract_jks_code(soup):
    jks_codes = []
    for div in soup.find_all(name="div", attrs={"class":"recJobLoc"}):
        jks_codes.append(div["id"].split('_')[1])
    return jks_codes

jks_codes = extract_jks_code(soup)
for elem in jks_codes:
	URL_JOB_DETAIL = 'https://www.indeed.com/rpc/jobdescs?jks=' + elem
	print(elem)
	response = requests.get(URL_JOB_DETAIL)
	addProjectInfo = "INSERT into app_Project_Info (PJ_NAME,PJ_INFO) values('test', %s)"
	addProjectData = (response._content.decode('UTF-8'))
	soupAddProjectData = BeautifulSoup(addProjectData)
	con.execute(addProjectInfo, [soupAddProjectData.get_text()])
connection.commit()
connection.close()
