<!DOCTYPE html>
<html lang="en">
<%@  taglib  prefix="c"   uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ include file = "/Web/Header.jsp" %>
    <section id="page-breadcrumb">
        <div class="vertical-center sun">
             <div class="container">
                <div class="row">
                    <div class="action">
                        <div class="col-sm-12">
                            <h1 class="title">${PObjs[0].difficulty}</h1>
                           
                        </div>
                     </div>
                </div>
            </div>
        </div>
   </section>
   

<script type="text/javascript">

var TSort_Data = new Array ('tableSection', 'i', 's', 's','d');
var TSort_Initial = "3D";
tsRegister();

</script>

   <div style="padding-top: 1cm">
   <div style="margin-left: 80px; margin-right: 550px;">
   
   <table class="tableSection" id ="tableSection">
   <thead>
   <tr>
   <th><span class="text"> Problem ID </span></th>
   <th><span class="text"> Name </span></th>
   <th><span class="text"> Author </span></th>
   <th><span class="text"> Time </span></th>
  
   </tr> 
   </thead>
   


   <tbody>
   <c:forEach var="problem" items="${PObjs}" varStatus="index">
  

   <tr>
   <td ><c:out value="${problem.pid}" /></td>
   <td><a href="/CodeSalad/ViewProblem?pid=${problem.pid}">${problem.problemName}</a></td>
   <td>${problem.author} </td>
   <td>${problem.createdOn} </td>
   </tr>
   
   </c:forEach>
   </tbody>
   </table>
   </div> 
   </div>

<div style="padding-top: 1cm;">
    <footer id="footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 text-center bottom-separator">
                    <img src="${path}/images/home/under.png" class="img-responsive inline" alt="">
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="testimonial bottom">
                        <h2>Testimonial</h2>
                        <div class="media">
                            <div class="pull-left">
                                <a href="#"><img src="${path}/images/home/profile1.png" alt=""></a>
                            </div>
                            <div class="media-body">
                                <blockquote>Nisi commodo bresaola, leberkas venison eiusmod bacon occaecat labore tail.</blockquote>
                                <h3><a href="#">- Jhon Kalis</a></h3>
                            </div>
                         </div>
                        <div class="media">
                            <div class="pull-left">
                                <a href="#"><img src="${path}/images/home/profile2.png" alt=""></a>
                            </div>
                            <div class="media-body">
                                <blockquote>Capicola nisi flank sed minim sunt aliqua rump pancetta leberkas venison eiusmod.</blockquote>
                                <h3><a href="">- Abraham Josef</a></h3>
                            </div>
                        </div>   
                    </div> 
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="contact-info bottom">
                        <h2>Contacts</h2>
                        <address>
                        E-mail: <a href="mailto:someone@example.com">email@email.com</a> <br> 
                        Phone: +1 (123) 456 7890 <br> 
                        Fax: +1 (123) 456 7891 <br> 
                        </address>

                        <h2>Address</h2>
                        <address>
                        Unit C2, St.Vincent's Trading Est., <br> 
                        Feeder Road, <br> 
                        Bristol, BS2 0UY <br> 
                        United Kingdom <br> 
                        </address>
                    </div>
                </div>
                <div class="col-md-4 col-sm-12">
                    <div class="contact-form bottom">
                        <h2>Send a message</h2>
                        <form id="main-contact-form" name="contact-form" method="post" action="sendemail.php">
                            <div class="form-group">
                                <input type="text" name="name" class="form-control" required="required" placeholder="Name">
                            </div>
                            <div class="form-group">
                                <input type="email" name="email" class="form-control" required="required" placeholder="Email Id">
                            </div>
                            <div class="form-group">
                                <textarea name="message" id="message" required="required" class="form-control" rows="8" placeholder="Your text here"></textarea>
                            </div>                        
                            <div class="form-group">
                                <input type="submit" name="submit" class="btn btn-submit" value="Submit">
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="copyright-text text-center">
                        <p>&copy; Your Company 2014. All Rights Reserved.</p>
                        <p>Crafted by <a target="_blank" href="http://designscrazed.org/">Allie</a></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    </div>
    <!--/#footer-->

    <script type="${path}/text/javascript" src="js/jquery.js"></script>
    <script type="${path}/text/javascript" src="js/bootstrap.min.js"></script>
    <script type="${path}/text/javascript" src="js/lightbox.min.js"></script>
    <script type="${path}/text/javascript" src="js/wow.min.js"></script>
    <script type="${path}/text/javascript" src="js/jquery.countTo.js"></script>
  
   
</body>
</html>
