# coding:utf-8
import re
import json
import os
import threading
import time
import requests
from requests.exceptions import RequestException
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


def get_proble_set(url):

    try:
        response = requests.get(url)
        if response.status_code == 200:
            return response.text
        return None
    except RequestException:
        return None
    
#for i in range(len(problemset)):
 
def parse_proble_set(problemSet):
    #for i in range(len(problemSet)):
    for i in range(1):
        title = problemSet[i]["stat"]["question__title_slug"]
        if title == "robot-room-cleaner":
            continue
        #construct_url(title)
        time.sleep(0.1)
        t =threading.Thread(target=construct_url,args=(title,))
        t.start()
        
        
def construct_url(problemTitle):
    url = "https://leetcode-cn.com/problems/"+ problemTitle + "/description/"
    print(url+"\n")
    get_proble_content(url,problemTitle)
 
def save_problem(title,content):
    #content = bytes(content,encoding = 'utf8')
    print(content)
    filename = title + ".html"
    print(filename)
    with open(filename,'w+',encoding="utf-8")as f:
        f.write(content)
 
    
def get_proble_content(problemUrl,title):
    response_html    = requests.get(problemUrl)
    '''
    setCookie = response.headers["Set-Cookie"]
    print(setCookie)
    setCookie = json.loads(setCookie)
    print(type(setCookie))
    '''
    
    try:
        #pattern = re.compile("csrftoken=(.*?);.*?",re.S)
        #csrftoken = re.search(pattern, setCookie) 
        url = "https://leetcode-cn.com/graphql"
        data = {"operationName":"getQuestionDetail",
                "variables":{"titleSlug":title},
                "query":"query getQuestionDetail($titleSlug: String!) {\n  isCurrentUserAuthenticated\n  question(titleSlug: $titleSlug) {\n    questionId\n    questionFrontendId\n    questionTitle\n    translatedTitle\n    questionTitleSlug\n    content\n    translatedContent\n    difficulty\n    stats\n    allowDiscuss\n    similarQuestions\n    mysqlSchemas\n    randomQuestionUrl\n    sessionId\n    categoryTitle\n    submitUrl\n    interpretUrl\n    codeDefinition\n    sampleTestCase\n    enableTestMode\n    metaData\n    enableRunCode\n    enableSubmit\n    judgerAvailable\n    infoVerified\n    envInfo\n    urlManager\n    article\n    companyTagStats\n    topicTags {\n      name\n      slug\n      translatedName\n      __typename\n    }\n    __typename\n  }\n  interviewed {\n    interviewedUrl\n    companies {\n      id\n      name\n      slug\n      __typename\n    }\n    timeOptions {\n      id\n      name\n      __typename\n    }\n    stageOptions {\n      id\n      name\n      __typename\n    }\n    __typename\n  }\n  subscribeUrl\n  loginUrl\n}\n"
                }
        headers = {
            'x-csrftoken': 'VbjdxTO0DDW58sJp68DKeXv5EfBLKVEAVnx9ISXtE5wi4bO22XLVcV9XjEC1LbGZ',
            'referer':problemUrl,
            'content-type':'application/json',
            'origin':'https://leetcode-cn.com',
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'
             }
        cookies = {'__cfduid':'d9ce37537c705e759f6bea15fffc9c58b1525271602',
                  '_ga':'GA1.2.5783653.1525271604',
                  '_gid':'GA1.2.344320119.1533189808',
                  'csrftoken':'VbjdxTO0DDW58sJp68DKeXv5EfBLKVEAVnx9ISXtE5wi4bO22XLVcV9XjEC1LbGZ',
                  ' _gat':'1'}
        #payload表单为json格式
        
        dumpJsonData = json.dumps(data)
        response = requests.post(url,data = dumpJsonData, headers = headers,cookies = cookies)
        dictInfo = json.loads(response.text)
        content = dictInfo["data"]["question"]["translatedContent"]
        problemUrl = "xxxx" + title 
        insertSql = "INSERT into app_TASKS (task_content,task_answer,user_id, task_keyworld) values(%s, null ,null, %s)"
        soup = BeautifulSoup(content, 'lxml')
        con.execute(insertSql, [bytes(soup.prettify(), encoding = 'utf-8'), title])
        save_problem(title,soup.prettify())
        connection.commit()
        connection.close()
    except requests.exceptions.RequestException as e:
        print(e)
        print("错误："+ problemUrl)
    



def main():
    url = "https://leetcode-cn.com/api/problems/all/"
    response_html = get_proble_set(url)
    html = json.loads(response_html)
    problemset = html["stat_status_pairs"]
    parse_proble_set(problemset)
    
 
    
if __name__=='__main__':
    if os.path.exists("problems"):
        os.chdir("problems")
    else:    
        os.mkdir("problems")
        os.chdir("problems")
    main()