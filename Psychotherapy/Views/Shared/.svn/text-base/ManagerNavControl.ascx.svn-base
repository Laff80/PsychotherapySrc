<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<% string[] strRequest = Request.Path.Split('/');%>
<% string controllerName = strRequest[1];%>
<% string actionName = strRequest[2];%>
<% bool selectedUser = false, selectedSite = false, selectedDepartment = false,
       selectedCategory = false, selectedForms = false, selectedProcess = false, selectedCluster = false, selsctedSymptom = false, selectedLongTermGoal = false,
       selectedObjective = false, selectedStrategy = false,
       selectedRights = false, selectedGroup = false, selectedLog = false;
%>
<%switch (controllerName)
  {
      case "UserManage":
          selectedUser = true;
          break;
      case "SiteManage":
          selectedSite = true;
          break;
      case "DepartmentManage":
          selectedDepartment = true;
          break;
      case "CategoryManage":
          selectedCategory = true;
          break;
      case "FormsManage":
          selectedForms = true;
          break;
      case "ProcessGuideManage":
          selectedProcess = true;
          break;
      case "ClusterManage":
          selectedCluster = true;
          break;
      case "SymptomManage":
          selsctedSymptom = true;
          break;
      case "LongTermGoalManage":
          selectedLongTermGoal = true;
          break;
      case "ObjectiveManage":
          selectedObjective = true;
          break;
      case "StrategyManage":
          selectedStrategy = true;
          break;
      case "RightsManager":
          if (actionName == "RightsList") { selectedRights = true; }
          else {
              selectedGroup = true;
          }
          break;
      case "LogInfoManage":
          selectedLog = true;
          break;
      default:
          break;
  } %>
<ul>
    <li style="border-top:1px solid #5BACBD" onclick="actionLink('/UserManage/Users')" class="<%:selectedUser ? "selected" : ""%>"><span>User</span></li>
    <li onclick="actionLink('/SiteManage/Sites')" class="<%:selectedSite ? "selected" : ""%>"><span>Site</span></li>
    <li onclick="actionLink('/DepartmentManage/Departments')" class="<%:selectedDepartment ? "selected" : ""%>"><span>Department</span></li>
    <li onclick="actionLink('/CategoryManage/Categories')" class="<%:selectedCategory ? "selected" : ""%>"><span>Category</span></li>
    <li onclick="actionLink('/FormsManage/Forms')" class="<%:selectedForms ? "selected" : ""%>"><span>Forms</span></li>
    <li onclick="actionLink('/ProcessGuideManage/ProcessElement')" class="<%:selectedProcess ? "selected" : ""%>"><span>Process Element</span></li>
    <li onclick="actionLink('/ClusterManage/Clusters')" class="<%:selectedCluster ? "selected" : ""%>"><span>Clusters</span></li>
    <li onclick="actionLink('/SymptomManage/Symptoms')" class="<%:selsctedSymptom ? "selected" : ""%>"><span>Symptom</span></li>
    <li onclick="actionLink('/LongTermGoalManage/LongTermGoals')" class="<%:selectedLongTermGoal ? "selected" : ""%>"><span>Long Term Goal</span></li>
    <li onclick="actionLink('/ObjectiveManage/Objectives')" class="<%:selectedObjective ? "selected" : ""%>"><span>Objective</span></li>
    <li onclick="actionLink('/StrategyManage/Strategies')" class="<%:selectedStrategy ? "selected" : ""%>"><span>Therapeutic Strategy</span></li>
    <li onclick="actionLink('/RightsManager/RightsList')" class="<%:selectedRights ? "selected" : ""%>"><span>Permission manage</span></li>
    <li onclick="actionLink('/RightsManager/GroupList')" class="<%:selectedGroup ? "selected" : ""%>"><span>Groups manage</span></li>
    <li onclick="actionLink('/LogInfoManage/LogList')" class="<%:selectedLog ? "selected" : ""%>"><span>Log information manage</span></li>
</ul>
