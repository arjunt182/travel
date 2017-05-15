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
            <div class="row">
                <div class="col-md-1">
                    %{--<g:link controller="university" action="registerUniversity">
                        <button class="btn btn-small btn-add" title="Add new">ADD</button>
                    </g:link>--}%
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
                                %{--<td>--}%
                                    %{--<form  method="POST" action="${createLink( controller : "university", action : "listUniversityCourse")}">--}%
                                        %{--<input type="hidden" name="universityId" value="${c.id}" />--}%
                                        %{--<button class="btn btn-small btn-add" title="View Course">View Course</button>--}%
                                        %{--<input type="submit" class="btn btn-small btn-add" value="Courses Available"/>--}%
                                    %{--</form>--}%
                                    %{--    <g:link controller="universityCourse" action="listUniversityCourse" >--}%
                                            %{--<input type="hidden" name="universityId" value="${c.id}" />--}%
                                            %{--<button class="btn btn-small btn-add" title="View Course">View Course</button>--}%
                                        %{--</g:link>--}%
                                %{--</td>--}%
                            </tr>
                        </g:each>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

</div>
<script>
    function deleteUniversity(){
        var ans =  confirm('Are you sure to delete?')
        if(ans){
            return true
        }else{
            return false
        }
    }
    $(document).ready(function() {
        $('#universityTable').DataTable();
    } );
</script>
</body>

</html>
