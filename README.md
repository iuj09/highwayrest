# 고속주문
<div align="center">
<img src="https://github.com/yoojungkook/highwayrest/assets/141127270/bb938bd7-d9b6-4626-887d-21fbff31f1c8" style="width: 300px; height: 200px;" />
</div>

<div align="center">
  <h3>전국 팔도에 설치되어 있는 고속도로 휴게소의 음식을 주문할 수 있는 서비스를 기획 및 개발</h3>
</div>
<br/>

## 기술스택 및 도구
|구분|이름|
|:---|:---|
|<strong>BACK-END</strong>|![Java](https://img.shields.io/badge/java-%23ED8B00.svg?style=for-the-badge&logo=openjdk&logoColor=white)|
|<strong>FRONT-END</strong>|![HTML5](https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white)![CSS3](https://img.shields.io/badge/css3-%231572B6.svg?style=for-the-badge&logo=css3&logoColor=white)![Javascript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=white)![jQuery](https://img.shields.io/badge/jquery-%230769AD.svg?style=for-the-badge&logo=jquery&logoColor=white)![Bootstrap](https://img.shields.io/badge/bootstrap-%238511FA.svg?style=for-the-badge&logo=bootstrap&logoColor=white)|
|<strong>WAS</strong>|![Apache Tomcat](https://img.shields.io/badge/apache%20tomcat-%23F8DC75.svg?style=for-the-badge&logo=apache-tomcat&logoColor=black)|
|<strong>BUILD</strong>|![Apache Maven](https://img.shields.io/badge/Apache%20Maven-C71A36?style=for-the-badge&logo=Apache%20Maven&logoColor=white)|
|<strong>IDE</strong>|![Intellij](https://img.shields.io/badge/IntelliJ_IDEA-000000.svg?style=for-the-badge&logo=intellij-idea&logoColor=white)|
|<strong>DB</strong>|![Oracle](https://img.shields.io/badge/Oracle-F80000?style=for-the-badge&logo=Oracle&logoColor=white)|
|<strong>TOOL</strong>|![slack](https://img.shields.io/badge/Slack-4A154B?style=for-the-badge&logo=slack&logoColor=white)![figma](https://img.shields.io/badge/Figma-F24E1E?style=for-the-badge&logo=figma&logoColor=white)![Notion](https://img.shields.io/badge/Notion-000000?style=for-the-badge&logo=notion&logoColor=white)|
|SERVER|![Cent OS](https://img.shields.io/badge/cent%20os-002260?style=for-the-badge&logo=centos&logoColor=F0F0F0)|  

[<strong>Notion 링크</strong>](https://yoojeebee.notion.site/yoojeebee/KOSTA-mini-project-bc661a43bccd431089e6ec8664849009)
  
<br/>

## 제작기간 및 역할분담  
### 제작기간
```
2023. 10. 4 ~ 2023. 10. 18
```
<br/>

### 주요기능 역할분담
|이름|역할|
|:---|:---|
|이우진|- 프로젝트 디자인 설계 및 서기<br/>- 고속도로 DB TABLE를 통한 지도 API를 결합한 CRUD 및 페이지 설계<br/>- 검색 기능 구현|
|유정국|- 고속도로 API를 활용해 고속도로, 휴게소, 휴게소 음식 CRUD 및 페이지 설계<br/>- 프로젝트 구조 설계<br/>- DB 및 서버 설정<br/>- 서버 배포|
|김수연|- 회원 CRUD 및 페이지 설계<br>- 정규식 및 조건을 통한 회원가입 설계<br/>- 카카오 API를 통한 회원가입 설계|
|류가희|- 리뷰 CRUD 및 페이지 설계|
|김준희|- 주문 및 결제 CURD 및 페이지 설계<br/>- 카카오 페이 API를 통한 결제 설계|  

<br/>

## API
[고속도로 공간정보 API](http://data.ex.co.kr/openapi/basicinfo/openApiInfoM?apiId=0616&serviceType=OPENAPI&keyWord=%EB%85%B8%EC%84%A0&searchDayFrom=2014.12.01&searchDayTo=2023.10.25&CATEGORY=&GROUP_TR=&sId=703)  
  
[고속도로 휴게소 API](http://data.ex.co.kr/openapi/basicinfo/openApiInfoM?apiId=0615&serviceType=&keyWord=%ED%95%98%EC%9D%B4%EC%89%BC%EB%A7%88%EB%A3%A8&searchDayFrom=2014.12.01&searchDayTo=2023.10.25&CATEGORY=&GROUP_TR=&sId=702)  
  
[휴게소 푸드코드 API](http://data.ex.co.kr/openapi/basicinfo/openApiInfoM?apiId=0502&serviceType=OPENAPI&keyWord=%ED%9C%B4%EA%B2%8C%EC%86%8C&searchDayFrom=2014.12.01&searchDayTo=2023.10.25&CATEGORY=&GROUP_TR=&sId=645)  
  
[카카오 지도 API](https://apis.map.kakao.com/)  
  
[카카오 페이 API](https://developers.kakaopay.com/)  
<br/>
  
## 프로젝트 디자인 사전 설계  
모바일 화면 기준으로 디자인 설계  
<table>
    <tbody>
        <tr>
            <th style="width: 100%; padding: 0; margin: 0">고속도로 선택 및 휴게소 선택</th>
        </tr>
        <tr>
            <td align="left">
                <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/57f409d8-c208-468f-949e-e1aeebd5631f" style="width: 200px; height: 300px;" />
                <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/d27ca936-d132-4f9d-a46b-c51840fa1aae" style="width: 200px; height: 300px;" />
                <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/734ceb2e-dac1-4ac1-83d5-f814bc491763" style="width: 200px; height: 300px;" />  
            </td>
        </tr>
        <tr>
            <th style="width: 100%; padding: 0; margin: 0">휴게소 주문</th>
        </tr>
        <tr>
            <td align="left">
                <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/5bd3d083-d338-430f-9485-119d53f5a933" style="width: 200px; height: 300px;" />
                <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/7dc1eb9b-f3d7-4f19-b76d-04abd33d9cc0" style="width: 200px; height: 300px;" />
                <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/e5bb5e41-aaa9-4299-92b1-433b6a93d574" style="width: 200px; height: 300px;" />
                <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/6b69c141-7dc7-4eae-a249-aa825ce10e11" style="width: 200px; height: 300px;" />
            </td>
        </tr>
        <tr>
            <th style="width: 100%; padding: 0; margin: 0">회원정보 변경</th>
        </tr>
        <tr>
            <td align="left">
                <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/078dc589-6704-41f7-83b4-99401f148ad6" style="width: 200px; height: 300px;" />
            </td>
        </tr>
        <tr>
            <th style="width: 100%; padding: 0; margin: 0">주문 리뷰</th>
        </tr>
        <tr>
            <td align="left">
                <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/23f9177e-9e51-490b-9d92-2f40cb0a0d88" style="width: 200px; height: 300px;" />
                <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/013bd41a-60a0-4b08-84c4-30e454fadfd7" style="width: 200px; height: 300px;" />
                <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/21ec2381-01d2-44a0-bef5-8efc3a3eeedc" style="width: 200px; height: 300px;" />
            </td>
        </tr>
    </tbody>
</table>
<br/>
  
## 프로젝트 디자인 및 기능 
### 마스터
<table border=1>
    <tbody>
        <tr>
            <th style="width:300px">고속도로 및 휴게소 추가</th>
            <th style="width:300px">휴게소 음식 추가</th>
        </tr>
        <tr>
            <td align="center">
                <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/2aa29de8-d239-495c-bbb9-ab4f69b09231" style="width:300px; height: 400px;" />
            </td>
            <td align="center">
                <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/b73e9e5e-5d55-4063-9bb4-dc6375efef07" style="width:300px; height: 400px;" /> 
            </td>
        </tr>
        <tr>
            <th style="width:300px">휴게소 음식 판매 목록</th>
            <th style="width:300px">고객 주문 확인</th>
        </tr>
        <tr>
            <td align="center">
                <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/0a8a668a-beb8-4524-b881-3281e8827da8" style="width:300px; height: 400px;" /> 
            </td>
            <td align="center">
                <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/cd087007-a617-4113-bca8-fa1e05425449" style="width:300px; height: 400px;" />  
            </td>
        </tr>
    </tbody>
</table> 
<br/>  

### 회원
<table>
    <tr>
        <th style="width:300px">회원가입 및 정규화 체크 </th>
        <th style="width:300px">회원가입 체크</th>
    </tr>
    <tr>
        <td align="center">
            <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/62255204-de9e-4793-9117-3945163daadf" style="width: 300px; height: 300px;" /><br/>
            <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/413a49ed-3afb-400d-b484-0563811862b0" style="width: 300px; height: 300px;" />
        </td>
        <td align="center">
            <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/a73d0157-8279-4fb7-9a1b-175fa4b5d5c9" style="width: 300px; height: 620px;" /> 
        </td>
    </tr>
    <tr>
        <th colspan="2" style="width:600px">회원가입 아이디, 비밀번호 찾기</th>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/2d60eec6-9868-447d-bf42-85220bb50433" style="width: 600px; height: 200px;" /><br/>
            <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/03e6dc82-4224-457a-b148-d1e8dceed9d1" style="width: 600px; height: 200px;" /> 
        </td>
    </tr>
    <tr>
        <th colspan="2" style="width:600px">카카오 로그인</th>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/1d3fda5a-1f85-46bb-968f-3ead208aa3e8" style="width: 600px; height: 500px;" /><br/>
        </td>
    </tr>
</table>
<br/>  

### 고속도로
<table>
    <tr>
        <th style="width:300px">고속도로 선택</th>
        <th style="width:300px">선택한 고속도로 휴게소 선택</th>
    </tr>
    <tr>
        <td align="center">
            <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/ecf4aa73-650e-4304-9f3e-2163bdf7c35d" style="width: 300px; height: 400px;" />
        </td>
        <td align="center">
            <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/0ba40a02-6801-4624-aad4-86abb3ae9dc3" style="width: 300px; height: 400px;" /> 
        </td>
    </tr>
    <tr>
        <th style="width:300px">휴게소 상세</th>
        <th style="width:300px">휴게소 메뉴</th>
    </tr>
    <tr>
        <td align="center">
            <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/037408e4-0560-4a00-8e2b-a928991389b5" style="width: 300px; height: 400px;" />
        </td>
        <td align="center">
            <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/dcaf1a62-f411-418f-acc7-b244d533feca" style="width: 300px; height: 400px;" /> 
        </td>
    </tr>
</table>
<br/>  

### 주문
<table>
    <tr>
        <th style="width:300px">결제창</th>
        <th style="width:300px">카카오 페이 결제</th>
    </tr>
    <tr>
        <td align="center">
            <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/ec25f1e7-baad-419d-ab35-7781354a713f" style="width: 300px; height: 400px;" />
        </td>
        <td align="center">
            <img src="https://github-production-user-asset-6210df.s3.amazonaws.com/141127270/278942698-6647739e-679b-4b8f-99b9-0862a780c787.png" style="width: 300px; height: 400px;" /> 
        </td>
    </tr>
    <tr>
        <th style="width:300px">주문 - 고객</th>
        <th style="width:300px">주문 - 휴게소(수락/거절)</th>
    </tr>
    <tr>
        <td align="center">
            <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/16c76c51-e62b-439b-9db4-a7eb354f0f0a" style="width: 300px; height: 400px;" />
        </td>
        <td align="center">
            <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/45d4c87f-3c1d-4194-baf9-092526b8f866" style="width: 300px; height: 400px;" />
        </td>
    </tr>
    <tr>
        <th style="width:300px">주문 - 휴게소(조리)</th>
        <th style="width:300px">주문 - 휴게소(수령)</th>
    </tr>
    <tr>
        <td align="center">
            <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/8db11bd6-65a5-4b57-bc77-ef5697215931" style="width: 300px; height: 400px;" />
        </td>
        <td align="center">
            <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/c7850d8c-ee26-4b8b-9f29-53577c333ae7" style="width: 300px; height: 400px;" />
        </td>
    </tr>
    <tr>
        <th style="width:300px">주문 - 휴게소(취소)</th>
        <th style="width:300px">주문 - 고객(수령완료)</th>
    </tr>
    <tr>
        <td align="center">
            <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/56f76f90-daf3-4d7b-a167-9d15179790b1" style="width: 300px; height: 400px;" />
        </td>
        <td align="center">
            <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/64160002-d1e9-4e8d-8c9d-2a62618e2d1c" style="width: 300px; height: 400px;" />
        </td>
    </tr>
</table>  
<br/>  

### 후기
<table>
    <tr>
        <th style="width:300px">리뷰 - 작성</th>
        <th style="width:300px">리뷰 - 작성(완료)</th>
    </tr>
    <tr>
        <td align="center">
            <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/9a5ed644-87aa-493b-a914-5346d7917f7f" style="width: 300px; height: 400px;" />
        </td>
        <td align="center">
            <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/7ce12692-6a59-4ebf-b489-6306d0272ce7" style="width: 300px; height: 300px;" />
        </td>
    </tr>
    <tr>
        <th style="width:300px">리뷰 - 수정</th>
        <th style="width:300px">리뷰 - 수정(완료)</th>
    </tr>
    <tr>
        <td align="center">
            <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/a073e40e-014e-45e3-a7f6-8ef9f609b7a9" style="width: 300px; height: 200px;" />
        </td>
        <td align="center">
            <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/e5368e8a-030e-4b6c-ac94-fbdb5eedd605" style="width: 300px; height: 300px;" />
        </td>
    </tr>
    <tr>
        <th style="width:300px">리뷰 - 삭제</th>
        <th style="width:300px"></th>
    </tr>
    <tr>
        <td align="center">
            <img src="https://github.com/yoojungkook/highwayrest/assets/141127270/96d3b954-ad48-49f5-888d-b532b3b7429c" style="width: 300px; height: 200px;" />
        </td>
        <td>
        </td>
    </tr>
</table>
