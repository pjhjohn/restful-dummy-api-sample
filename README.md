#restful-dummy-api-sample

>
### jQuery ajax + Mustache.js
\- jQuery AJAX와 Mustache.js를 이용해서 erb를 사용하지 않고 뷰를 렌더링하는 샘플 코드입니다.  
\- /dummy : app/views/dummy/index.html.erb => 메인 페이지  
\- form을 작성하면 $.post ($.ajax에 url: "post"를 대신 넣어준 함수라고 보면 됨)를 이용해 form의 데이터를 serialize하여 rails서버에 보냄(dummy/c : create)로 보내면, DB에 넣고, 넣은 데이터를 JSON형식으로 리턴  
\- JSON형식으로 리턴된 정보에서 data부분을 뽑아서 Mustache.js로 렌더링 (Mustache.js(view,data))한 후 테이블에 추가

