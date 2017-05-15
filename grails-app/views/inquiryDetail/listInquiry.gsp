<%--
  Created by IntelliJ IDEA.
  User: arjun
  Date: 5/15/17
  Time: 3:49 PM
--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="layout" content="menu">
</head>
<body>


<!-- Page content -->
<div id="page-content-wrapper">
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
                            <span class="page-name">University List</span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-1">
                    <g:link controller="university" action="registerUniversity">
                        <button class="btn btn-small btn-add" title="Add new">ADD</button>
                    </g:link>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 table-responsive">
                    <table class="table table-style" id="universityTable">
                        <thead>
                        <tr class="row-bg">
                            <th>SN.</th>
                            <th>Name</th>
                            <th>Location</th>
                            <th>Contact</th>
                            <th>Weblink</th>
                            <th>Email</th>
                            <th></th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <g:each in="${university}" var='c' status="i">
                            <tr>
                                <td>${i+1}</td>
                                <td>${c.name}</td>
                                <td>${c.location}</td>
                                <td>${c.contact}</td>
                                <td>${c.weblink}</td>
                                <td>${c.emailAddress}</td>
                                <td>
                                    <form  method="POST" action="${createLink( controller : "university", action : "listUniversityCourse")}">
                                        <input type="hidden" name="universityId" value="${c.id}" />
                                        %{--<button class="btn btn-small btn-add" title="View Course">View Course</button>--}%
                                        <input type="submit" class="btn btn-small btn-add" value="Courses Available"/>
                                    </form>
                                    %{--    <g:link controller="universityCourse" action="listUniversityCourse" >
                                            <input type="hidden" name="universityId" value="${c.id}" />
                                            <button class="btn btn-small btn-add" title="View Course">View Course</button>
                                        </g:link>--}%
                                </td>
                                <td>
                                    <ul class="list-inline">
                                        <li>
                                            <form  method="POST" action="${createLink( controller : "university", action : "editUniversity")}">
                                                <input type="hidden" name="universityId" value="${c.id}" />
                                                <input type="submit" class="btn btn-small btn-green" value="EDIT"/>
                                            </form>
                                        </li>
                                        <li>
                                            <form controller="university" action="deleteUniversity" method="POST">
                                                <input type="hidden" class="form-control" value="${c.id}" name="universityId"/>
                                                <input type="submit" class="btn btn-small btn-red" value="Delete" onclick="return deleteUniversity()"/>
                                            </form>

                                        </li>
                                    </ul>
                                </td>
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
