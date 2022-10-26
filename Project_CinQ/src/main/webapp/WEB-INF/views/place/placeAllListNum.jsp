
<!-- place/placeAllListNum.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>placeAllListNum</title>
<style type="text/css">
.placeTable{
   align : center;
   border-collapse: collapse;
}
.title1{
   background-color: #e6f1ff;
}
tr {border-top: 1px solid black;
   }

tr:hover {background-color: #dcdcdc; cursor: pointer;}

td {
   padding: 5px;
}
a {
   text-decoration: none;
}
a:link {color:black;}
a:visited {color:#000069;}
</style>
</head>
<body>
   <c:import url="../default/header.jsp"/>
   <div align="center">
   <br>
   <h1 align="center"> 등록된 장소 목록 </h1>
   <br>
   <table class="placeTable">
      <tr class= "title1">
         <th width="100px">ID</th>
         <th width="300px">PROFILE</th>
         <th width="300px">PROJECT</th>
        <th width="300px">loc_name</th>
         <th width="800px">CONTENT</th>
      </tr>
      <c:if test="${placeList.size() == 0}">
            <tr>
               <th colspan="6">등록된 글이 없습니다</th>
            </tr>   
      </c:if>
      <c:forEach var="dto" items="${placeList}">
            <tr>
				<td>${dto.id}</td>
				<td><a href="/root/place/placeView?write_no=${dto.write_no}">${dto.title}</a></td>
				  
				  <c:if test="${dto.image == 'nan'}">
                    <td>
                     	<b>이미지가 없습니다..</b>
                  	</td>
                  </c:if>
                  <c:if test="${dto.image != 'nan'}">
                 	<td>
                 	<a href="/root/place/placeView?write_no=${dto.write_no}">${dto.title}><img src="${contextPath}/place/download?imageFileName=${dto.image}" width="200px" height="200px"></a>
                  	</td>
                  </c:if>
                <td><a href="/root/place/placeView?write_no=${dto.write_no}">${dto.loc_sep_name}</a></td>
				<td><a href="/root/place/placeView?write_no=${dto.write_no}">${dto.content}</a></td>
            </tr>
      </c:forEach>
      <tr>
         <tr>
            <td colspan="6" align="center">
               <c:forEach var="num" begin="1" end="${repeat}">
                  <a href="placeAllListNum?num=${num}">[${num}]</a>
               </c:forEach>
            </td>
         </tr>
         <tr>
            <td colspan="6">
               <a href="${contextPath }/place/rentPlace">글작성</a>
            </td>
         </tr>
   </table>
   </div>
   <c:import url="../default/footer.jsp"/>
</body>
</html> 