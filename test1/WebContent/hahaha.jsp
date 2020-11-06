<%@page import="java.util.Random"%>
<%@page import="bo.Giohangbo"%>
<%@page import="bean.loaibean"%>
<%@page import="bo.loaibo"%>
<%@page import="bean.sachbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.sachbo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <title>MinhKhai Búc</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Import Boostrap css, js, font awesome here -->   
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- Bootstrap JS -->
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">    
    <link href="./css/home1.css" rel="stylesheet">
<script type="text/javascript" src="./js/script.js"></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="./css/home3.css">
   <link rel="stylesheet" href="css/minhkhai_style.css">
</head>
<body>
<%
	ArrayList<loaibean> dsloai=(ArrayList<loaibean>)request.getAttribute("dsloai");
	ArrayList<sachbean> ds=(ArrayList<sachbean>)request.getAttribute("dssach");
	int m=dsloai.size();
	int n=ds.size();
	 long soluong=0;
     if (session.getAttribute("GioHang")!=null){
     	Giohangbo gh=(Giohangbo)session.getAttribute("GioHang");
     	soluong=gh.Sum_cart();
     }
	Random rd=new Random();
	
%>
<div class="header-blue fixed-top">
            <nav class="navbar navbar-dark navbar-expand-md navigation-clean-search">
                <div class="container-fluid"><a class="navbar-brand" href="#">MinhKhaiBook</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navcol-1">
                        <ul class="nav navbar-nav">
                            <li class="nav-item" role="presentation"><a class="nav-link active" href="SachController">Trang Chủ</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link active" href="#">Lịch sử mua hàng</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link active" href="#">Thanh toán</a></li>
                          
                            
                        </ul>
                          <div class="search_book">
                            <form action="">
                              <input class="form-control " id="searchbook" placeholder="Tìm sách" name="txttk" >
                            
                            </form>
                          </div>
                        <form class="form-inline mr-auto" target="_self">
                            <!-- <div class="form-group"><label for="search-field"><i class="fa fa-search"></i></label><input class="form-control search-field" type="search" name="search" id="search-field"></div> -->
                        </form><span class="navbar-text"> <a href="#" class="login">Log In</a></span><a class="btn btn-light action-button" role="button" href="#">Sign Up</a></div>
                </div>
            </nav>
           
        </div>
 <div class="wrapper">
        <!-- Sidebar Holder -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h3><a href="#" id="mainlogo">MinhKhai Búc</a></h3>
            </div>

            <ul class="list-unstyled components">
                <p>Bảng điều khiển</p>
                <li  class="active"> <a href="hahaha.jsp" >Trang Chủ</a></li>
                <li>
                    <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Danh Mục Sách <span class="badge badge-pill badge-danger"style="margin-left: 10px;">Hot</span></a>
                    <ul class="collapse list-unstyled" id="homeSubmenu">
                        <% for(int i=0;i<m;i++){  %>
					 <li>
					    <a href="SachController?type=<%=dsloai.get(i).getTenloai() %>"><%=dsloai.get(i).getTenloai() %><span class="badge badge-pill badge-danger" style="margin-left: 10px;"><%=rd.nextInt(100)%></span></a>
					  </li>
					  
					  <%} %>
                    </ul>
                </li>
                <li><a href="index.php?type=Clone-VN">Văn phòng phẩm<span class="badge badge-pill badge-success"style="margin-left: 10px;">100</span></a></li>

                <li><a href="index.php?type=Clone-US">Đồ chơi- Thú bông <span class="badge badge-pill badge-success"style="margin-left: 10px;">150 </span></a></li>
              	 <li>
               		<a href="index.php?type=Clone-EU">Hàng lưu niệm <span class="badge badge-pill badge-success" style="margin-left: 10px;">134</span>
              		 </a>
               </li>
                 <li>
                            <a href="#"><i class="nav-main-link-icon fa fa-headset"></i>Hỗ Trợ</a>
                  </li>
            </ul>
    <div class="col-3 back-to-top">
                  <a id="buttonb"></a>
                </div>
            <ul class="list-unstyled CTAs">
                <li>
                    <a href="https://www.youtube.com/watch?v=6PebsRhDesA&t=64s" class="download" target="_blank"><i class="nav-main-link-icon fab fa-youtube " style="color: red;"></i>Video hướng dẫn mua acc</a>
                </li>
                <li>
                    <a href="SachController" class="article">Quay lại trang chủ</a>
                </li>
            </ul>
        </nav>

        <!-- Page Content Holder -->
        <div id="content">

            <nav class="navbar navbar-expand-lg navbar-light bg-light conten-nav">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" class="navbar-btn">
                        <span></span>
                        <span></span>
                        <span></span>
                    </button>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                     
                            
                         <li class="nav-item active">
                                <a class="nav-link" href="#"><i class="fas fa-bell nav-main-link-icon"></i>Thông báo
                                </a>
                            </li>
                 			<li class="nav-item" role="presentation"><a id="myycart" class="nav-link active" href="ViewcartController"><i class="fas fa-shopping-cart"></i> Rỏ Hàng<span class="badge badge-light" id="slcart" style="margin-left: 10px;"><%=soluong %></span></a></li>

                           
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- Content -->
            <div class="right" style="padding: 2%;" >
                    <div class="row">
                    
                       <% 
                      	if(request.getParameter("txttk")!=null){
                      		
                       		/* ArrayList<sachbean> dstk;
                       		dstk=sbo.TimTen(request.getParameter("txttk"));
                       		int sl=dstk.size(); */
                       		for(int i=0;i<n;i++){%>
                       			 <div class="book book_1 col-md-3 col-lg-3 col-sm-12 col-12">
                                <div class="card" >
                                    <img class="card-img-top" src="<%=ds.get(i).getAnh() %>" alt="Card image" style="width: 100%;height: 360px;">
                                    <div class="card-body">
                                      <h4 class="card-title"><%=ds.get(i).getTensach() %></h4>
                                       <p class="card-text">Giá : <%=ds.get(i).getGia()+"  đ" %></p>
                                       <a href="cart.jsp?id=<%=ds.get(i).getMasach() %>&action=view" class="btn btn-primary"><i class="fas fa-eye"></i> View</a>
                                     <a  href="cart.jsp?id=<%=ds.get(i).getMasach() %>
                                     	&action=add
                                     	&tensach=<%=ds.get(i).getTensach().toString()%>
                                     	&hinhanh=<%=ds.get(i).getAnh().toString() %>
                                       &gia=<%=ds.get(i).getGia() %>
                                       &tacgia=<%=ds.get(i).getTacgia().toString() %>" 
                                        class="btn btn-primary add_to_cart"><i class="fas fa-cart-plus"></i> Add To Cart</a>			
                                    </div>
                                  </div>
                       		 </div>	
                       	<%	}
                      	}
                      	else if(request.getParameter("type")==null){ %>
                       		<% for(int i=0;i<n;i++){
                    
                       			%>
                       			 <div class="book book_1 col-md-3 col-lg-3 col-sm-12 col-12">
                                <div class="card" >
                                    <img class="card-img-top img-fluid" src="<%=ds.get(i).getAnh() %>" alt="Card image" style="width: 100%;height: 360px;">
                                    <div class="card-body">
                                      <h4 class="card-title"><%=ds.get(i).getTensach() %></h4>
                                      <p class="card-text">Giá : <%=ds.get(i).getGia()+"  đ" %></p>
                                       <a href="cart.jsp?id=<%=ds.get(i).getMasach() %>&action=view" class="btn btn-primary"><i class="fas fa-eye"></i> View</a>
                                         <a  href="cart.jsp?id=<%=ds.get(i).getMasach() %>
                                         &action=add
                                         &tensach=<%=ds.get(i).getTensach().toString()%>
                                     	&hinhanh=<%=ds.get(i).getAnh().toString() %>
                                       &gia=<%=ds.get(i).getGia() %>
                                       &tacgia=<%=ds.get(i).getTacgia().toString() %>" 
                                        class="btn btn-primary add_to_cart" > <i class="fas fa-cart-plus"></i> Add To Cart</a>	
                                    </div>
                                  </div>
                       		 </div>
                     		<%} %>
                       	
                  <%     	}else if(request.getParameter("type")!=null){ %>

                 <% 		 	String loaisach=request.getParameter("type");
                   			for(int i=0;i<n;i++){
                   			if(ds.get(i).getLoai().equalsIgnoreCase(loaisach)){
                   				%>
                   			 <div class="book book_1 col-md-3 col-lg-3 col-sm-12 col-12">
                                <div class="card" >
                                    <img class="card-img-top" src="<%=ds.get(i).getAnh() %>" alt="Card image" style="width: 100%;height: 360px;">
                                    <div class="card-body">
                                      <h4 class="card-title"><%=ds.get(i).getTensach() %></h4>
                                       <p class="card-text">Giá : <%=ds.get(i).getGia()+"  đ" %></p>
                                       <a href="cart.jsp?id=<%=ds.get(i).getMasach() %>&action=view" class="btn btn-primary"><i class="fas fa-eye"></i> View</a>
                                           <a  href="cart.jsp?id=<%=ds.get(i).getMasach() %>
                                           &action=add
                                           &tensach=<%=ds.get(i).getTensach().toString()%>
                                     	&hinhanh=<%=ds.get(i).getAnh().toString() %>
                                       &gia=<%=ds.get(i).getGia() %>&tacgia=<%=ds.get(i).getTacgia().toString() %>" 
                                        class="btn btn-primary add_to_cart" > <i class="fas fa-cart-plus"></i> Add To Cart</a>			
                                    </div>
                                  </div>
                       		 </div>
                   			<% 	}
                   			}
                   			
                       	}
                       
                       
                       %>
                      
                    </div>

              </div>


            
	</div>
</div>
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Thông Báo</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" id="my_modal">
       
      </div>
      <div class="modal-footer">
        <a type="button" class="btn btn-outline-primary" data-dismiss="modal">Tiếp Tục Mua Sách</a>
      <!--   <a href="index.jsp" type="button" class="btn btn-outline-primary">Tiếp Tục Mua Sách</a> -->
   		<a href="viewmycart.jsp" type="button" class="btn btn-outline-success">Xem giỏ hàng</a>
      </div>
    </div>
  </div>
</div>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
                $(this).toggleClass('active');
            });
        });
    </script>
<script type="text/javascript">
					  $(document).ready(function(){
					 
					 $('.add_to_cart').click(function(){
						 var url=$(this).attr('href');
						 event.preventDefault();
						 var data = url.split("&");
						 var idtam=data[0].split("?");
						 var id=idtam[1].split("=");
						 var tensach=data[2].split("=");
						 var hinhanh=data[3].split("=");
						 var gia=data[4].split("=");
						 var tacgia=data[5].split("=");
						 var sl=4;
						   // Delete id
						//   var deleteid = splitid[1];
					//	 $('#my_modal').html('Đã thêm <strong>'+tacgia[1]+'</strong> vào giỏ hàng');
						// $('#exampleModalCenter').modal('show');
					   // AJAX Request
		 			   $.ajax({
					     url: 'cart.jsp',
					     type: 'GET',
					     data: { id:id[1],
					    	 	tensach:tensach[1],
					    	 	tacgia:tacgia[1],
					    	 	gia:gia[1],
					    	 	hinhanh:hinhanh[1]},
					     success:function(response){
					       if(response){
					    	   $('#my_modal').html('Đã thêm <strong>'+tensach[1]+'</strong> vào giỏ hàng');
							   $('#exampleModalCenter').modal('show');
							   document.getElementById('slcart').innerHTML = parseInt($("#slcart").html())+1;
					      }else{
					    alert(response);
					    alert("Lỗi");
					      }
					       }
					   }); 
					 });
					
					});
					
					</script>
					
					<script>
					$("#myycart").click(function(){
						alert($("slcart").html());
					})

					</script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>