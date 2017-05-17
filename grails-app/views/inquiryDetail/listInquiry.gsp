<%--
  Created by IntelliJ IDEA.
  User: arjun
  Date: 5/15/17
  Time: 3:49 PM
--%>

<!DOCTYPE html>
<html lang="en">
<head>
    %{--<meta name="layout" content="menu">--}%
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <asset:javascript src="jquery-2.1.4.min.js"/>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <asset:javascript src="jquery-2.1.4.min.js"/>
    <style>
h1{
    font-size: 30px;
    color: #fff;
    text-transform: uppercase;
    font-weight: 300;
    text-align: center;
    margin-bottom: 15px;
}
table{
    width:100%;
    table-layout: fixed;
}
.tbl-header{
    background-color: rgba(255,255,255,0.3);
}
.tbl-content{
    height:300px;
    overflow-x:auto;
    margin-top: 0px;
    border: 1px solid rgba(255,255,255,0.3);
}
th{
    padding: 20px 15px;
    text-align: left;
    font-weight: 500;
    font-size: 12px;
    color: #fff;
    text-transform: uppercase;
}
td{
    padding: 15px;
    text-align: left;
    vertical-align:middle;
    font-weight: 300;
    font-size: 12px;
    color: #fff;
    border-bottom: solid 1px rgba(255,255,255,0.1);
}


/* demo styles */

@import url(http://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
    background: -webkit-linear-gradient(left, #25c481, #25b7c4);
    background: linear-gradient(to right, #25c481, #25b7c4);
    font-family: 'Roboto', sans-serif;
}
section{
    margin: 50px;
}


/* follow me template */
.made-with-love {
    margin-top: 40px;
    padding: 10px;
    clear: left;
    text-align: center;
    font-size: 10px;
    font-family: arial;
    color: #fff;
}
.made-with-love i {
    font-style: normal;
    color: #F50057;
    font-size: 14px;
    position: relative;
    top: 2px;
}
.made-with-love a {
    color: #fff;
    text-decoration: none;
}
.made-with-love a:hover {
    text-decoration: underline;
}


/* for custom scrollbar for webkit browser*/

::-webkit-scrollbar {
    width: 6px;
}
::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
}
::-webkit-scrollbar-thumb {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
}
</style>
</head>
<body>


<!-- Page content -->
<div id="page-content-wrapper">
    <a href="${request.contextPath}/logoff" class="number-notify">Logout</a>
    <div class="page-content">
        <div class="container-fluid">
            <g:if test="${flash.messageE}">
                <div class="alert alert-danger fade in" role="alert">
                    <button class="close" data-dismiss="alert">x</button>
                    <i class="fa-fw fa fa-remove"></i>${flash.messageE}
                </div>
            </g:if>
            <g:if test="${flash.message}">
                <div class="alert alert-success fade in">
                    <button class="close" data-dismiss="alert">x</button>
                    <i class="fa-fw fa fa-check"></i>${flash.message}
                </div>
            </g:if>
            <div class="row">
            </div>
            <div class="row title-head">
                <div class="col-md-12">
                    <div class="title-line">
                        <a href="#" class="none-decoration">
                            <span class="page-name">Inquiry  List</span>
                        </a>
                    </div>
                </div>
            </div>
            <section>
                <!--for demo wrap-->
                <h1>Fixed Table header</h1>
                <div class="tbl-header">
                    <table cellpadding="0" cellspacing="0" border="0">
                        <thead>
                        <tr>
                            <th>S/N</th>
                            <th>Date</th>
                            <th>Destination</th>
                            <th>Days</th>
                            <th>Group of People</th>
                            <th>Name</th>
                            <th>Address</th>
                            <th>Contact</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                    </table>
                </div>
                <div class="tbl-content">
                    <table cellpadding="0" cellspacing="0" border="0">
                        <tbody>
                        <g:each in="${inquiryDetail}" var="in" status="i">
                        <tr>
                            <td>${i+1}</td>
                            <td>${in.}</td>

                        </tr>
                        </g:each>
                        </tbody>
                    </table>
                </div>
            </section>


            <!-- follow me template -->
            <div class="made-with-love">
                Made with
                <i>♥</i> by
                <a target="_blank" href="http://codepen.io/nikhil8krishnan">Nikhil Krishnan</a>
            </div>
           %{-- <div class="row">
                <div class="col-md-1">
                    --}%%{--<g:link controller="university" action="registerUniversity">
                        <button class="btn btn-small btn-add" title="Add new">ADD</button>
                    </g:link>--}%%{--
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 table-responsive">
                    <table class="table table-style" id="inquiryTable">
                        <thead>
                        <tr class="row-bg">
                            <th>SN.</th>
                            <th>Name</th>
                            <th>Address</th>
                            <th>Email</th>
                            <th>contact</th>
                            <th>Destination</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <g:each in="${inquiryDetail}" var='c' status="i">
                            <tr>
                                <td>${i+1}</td>
                                <td>${c.clientName}</td>
                                <td>${c.address}</td>
                                <td>${c.email}</td>
                                <td>${c.mobile}</td>
                                <td>${c.destination}</td>
                                --}%%{--<td>--}%%{--
                                    --}%%{--<form  method="POST" action="${createLink( controller : "university", action : "listUniversityCourse")}">--}%%{--
                                        --}%%{--<input type="hidden" name="universityId" value="${c.id}" />--}%%{--
                                        --}%%{--<button class="btn btn-small btn-add" title="View Course">View Course</button>--}%%{--
                                        --}%%{--<input type="submit" class="btn btn-small btn-add" value="Courses Available"/>--}%%{--
                                    --}%%{--</form>--}%%{--
                                    --}%%{--    <g:link controller="universityCourse" action="listUniversityCourse" >--}%%{--
                                            --}%%{--<input type="hidden" name="universityId" value="${c.id}" />--}%%{--
                                            --}%%{--<button class="btn btn-small btn-add" title="View Course">View Course</button>--}%%{--
                                        --}%%{--</g:link>--}%%{--
                                --}%%{--</td>--}%%{--
                            </tr>
                        </g:each>
                        </tbody>
                    </table>
                </div>
            </div>--}%
        </div>
    </div>

</div>
<script>
    // '.tbl-content' consumed little space for vertical scrollbar, scrollbar width depend on browser/os/platfrom. Here calculate the scollbar width .
    $(window).on("load resize ", function() {
        var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
        $('.tbl-header').css({'padding-right':scrollWidth});
    }).resize();
   /* function deleteUniversity(){
        var ans =  confirm('Are you sure to delete?')
        if(ans){
            return true
        }else{
            return false
        }
    }
    $(document).ready(function() {
        $('#universityTable').DataTable();
    } );*/
</script>
</body>

</html>
