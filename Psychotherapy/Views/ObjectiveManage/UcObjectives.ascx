﻿<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IPagedList<Insourcia.Psychotherapy.Model.Objective>>" %>
<%@ Import Namespace="Insourcia.WebControls.MvcPaging" %>
<table class="table_list">
    <tr>
        <th>
            <input type="checkbox" onclick="ckAllistboxs(this)" />
        </th>
        <th>
            Title
        </th>
        <th style="width:100px">
            CreateTime
        </th>
    </tr>
    <%if (Model.Count() > 0)
      { %>
    <% foreach (var item in Model)
       { %>
    <tr>
        <td>
            <input type="checkbox" name="ckbObjective" value="<%:item.ObjectiveID %>" onclick="selected(this)" />
        </td>
        <td>
            <%= item.Title %>
        </td>
        <td>
            <%: String.Format("{0:g}", item.CreateTime) %>
        </td>
    </tr>
    <% } %>
    <%} %>
    <%else
      { %>
    <tr>
        <td colspan="3" align="center" style="color: Red">
            Objectives Record is empty.
        </td>
    </tr>
    <%} %>
</table>
<%=Html.AjaxPager(Model, "GetObjectives", "ObjectiveManage", new PagerOptions { PageIndexParameterName = "id", Id = "page", CssClass = "page-settings" }, new AjaxOptions { UpdateTargetId = "list-box" })%>
<%=Html.Hidden("hdPage",Model.CurrentPageIndex) %>
