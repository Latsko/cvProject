<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/header.jspf" %>


<!-- Page Content-->
<div class="container-fluid p-0">
    <!-- Education-->
    <div class="container">

        <section class="resume-section" id="education">
            <div class="resume-section-content">
                <form method="post" action='<c:url value="/education/editEducation/${educationModel.id}"/>'>
                    <h2 class="mb-5">Editing</h2>

                    <%--input for title --%>
                    <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon1">@</span>
                            </div>
                            <input type="text" class="form-control" name="title" placeholder="Enter title"
                                   aria-label="Username" aria-describedby="basic-addon1"
                                   value="${educationModel.title}">
                        </div>
                    </div>
                    <%-----------------------------------------------%>

                    <%--         input for experience company name       --%>
                    <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon1">@</span>
                            </div>
                            <input type="text" class="form-control" name="subTitle" placeholder="Enter subtitle"
                                   aria-label="Username"
                                   aria-describedby="basic-addon1"
                                   value="${educationModel.subTitle}">
                        </div>
                    </div>
                    <%-----------------------------------------------%>

                    <%--    input for experience description   --%>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Description</span>
                        </div>
                        <textarea class="form-control" name="description"
                                  aria-label="With textarea">${educationModel.description}</textarea>
                    </div>
                    <%-----------------------------------------------%>

                    <br/>
                    <br/>

                    <%--Date for experience span time (from -> to) --%>
                    <div class="flex-shrink-0">
                    <span class="text-primary">

                         <div class="form-group row">
                                        <label class="col-2 col-form-label">From</label>
                                        <div class="col-10">
                                            <input class="form-control" type="date" name="dateFrom" min="1900-12-31"
                                                   max="<fmt:formatDate pattern = "yyyy-MM-dd" value="${now}" />"
                                                   value="<fmt:formatDate pattern='yyyy-MM-dd' value='${educationModel.dateFrom}'/>">
                                        </div>
                         </div>

                        <br/>

                        <div class="form-group row">
                                        <label class="col-2 col-form-label">To</label>
                                        <div class="col-10">
                                            <input class="form-control" type="date" name="dateTo" min="1900-12-31"
                                                   max="<fmt:formatDate pattern = "yyyy-MM-dd" value="${now}" />"
                                                   value="<fmt:formatDate pattern='yyyy-MM-dd' value='${educationModel.dateFrom}'/>">
                                        </div>
                        </div>

                    </span>
                    </div>
                    <%-----------------------------------------------%>

                    <br/>
                    <br/>
                    <br/>

                    <%--     Button to post data       --%>
                    <button type="submit" class="btn btn-secondary btn-lg btn-block">Edit education</button>
                    <%---------------------------------------%>
                </form>



            <br/>
            <div class="button-next-to-edit">
                <form action="/education/delete/${educationModel.id}" method="post" style="display: flex;">

                    <input type="hidden" name="_method" value="DELETE">
                    <button type="submit" class="btn btn-danger" data-toggle="modal" data-target="#myModal">Delete
                    </button>

                </form>
            </div>
            </div>
        </section>


    </div>


</div>
