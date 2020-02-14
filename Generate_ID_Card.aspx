<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Kshipappmaster.Master" AutoEventWireup="true" CodeBehind="Generate_ID_Card.aspx.cs" Inherits="KSHIP_Project.Operations.Generate_ID_Card" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Assembly="obout_Grid_NET" Namespace="Obout.Grid" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .rBn td {
            border: none;
        }
    </style>

    <h1 class="ribbon">
        <strong class="ribbon-content">Generate ID Card</strong>
    </h1>
    <div style="float: right; margin-top: -35px;">
        <asp:Button ID="Button1" runat="server" CausesValidation="false" Text="<< Back" CssClass="uBtn w10" PostBackUrl="~/Operations/Generate_ID_Card_View.aspx" />
    </div>
    <div class="frm">
        <asp:ScriptManager runat="server" ID="sc1"></asp:ScriptManager>
        <asp:UpdatePanel runat="server" ID="upd1">
            <ContentTemplate>
                <div class="row">
                    <div class="col-md-2">
                        <asp:Label ID="Label28" runat="server" Text="Label" CssClass="lbl">Package:</asp:Label>
                    </div>

                    <div class="col-md-4">
                        <asp:DropDownList ID="ddl_packName" AutoPostBack="true" Initialvalue="0" runat="server" CssClass="dIp" OnSelectedIndexChanged="ddl_packName_SelectedIndexChanged">
                        </asp:DropDownList>
                    </div>

                    <div class="col-md-2">
                        <asp:Label ID="Label2" runat="server" Text="Label" CssClass="lbl">Name of the Road:</asp:Label>
                    </div>
                    <div class="col-md-4">
                        <asp:DropDownList ID="ddl_NameoftheRoad" runat="server" AutoPostBack="true" CssClass="dIp" >
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-2">
                        <asp:Label ID="Label6" runat="server" Text="Label" CssClass="lbl">Village:</asp:Label>
                    </div>

                    <div class="col-md-4">
                        <asp:DropDownList ID="ddl_Village" runat="server" AutoPostBack="true" CssClass="dIp" OnSelectedIndexChanged="ddl_Village_SelectedIndexChanged">
                        </asp:DropDownList>
                    </div>

                    <div class="col-md-2">
                        <asp:Label ID="Label7" runat="server" Text="Label" CssClass="lbl">District:</asp:Label>
                    </div>

                    <div class="col-md-4">
                        <asp:TextBox runat="server" ID="tb_district" Enabled="false" CssClass="txtIp"></asp:TextBox>
                    </div>

                    <div class="col-md-2">
                        <asp:Label ID="Label8" runat="server" Text="Label" CssClass="lbl">Taluk:</asp:Label>
                    </div>

                    <div class="col-md-4">
                        <asp:TextBox runat="server" ID="tb_taluk" Enabled="false" CssClass="txtIp"></asp:TextBox>
                    </div>

                    <div class="col-md-2">
                        <asp:Label ID="Label10" runat="server" Text="Label" CssClass="lbl">PAP Name:</asp:Label>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ControlToValidate="ddl_PAP" InitialValue="0" ErrorMessage="*" ForeColor="Red" ValidationGroup="save">*</asp:RequiredFieldValidator>
                    </div>

                    <div class="col-md-4">
                        <asp:DropDownList ID="ddl_PAP" runat="server" CssClass="dIp" AutoPostBack="true" OnSelectedIndexChanged="ddl_PAP_SelectedIndexChanged">
                        </asp:DropDownList>
                    </div>
                   
                    <div class="col-md-2" style="display:none">
                        <asp:Label ID="Label29" runat="server" Text="Label" CssClass="lbl">Corridor:</asp:Label>
                    </div>

                    <div class="col-md-4" style="display:none">
                        <asp:DropDownList ID="ddl_corrName" runat="server" AutoPostBack="true" CssClass="dIp" OnSelectedIndexChanged="ddl_corrName_SelectedIndexChanged">
                        </asp:DropDownList>
                    </div>

                    <div class="col-md-2" style="display:none">
                        <asp:Label ID="Label1" runat="server" Text="Label" CssClass="lbl">Link:</asp:Label>
                    </div>

                    <div class="col-md-4" style="display:none">
                        <asp:DropDownList ID="ddl_linkName" runat="server" CssClass="dIp" OnSelectedIndexChanged="ddl_linkName_SelectedIndexChanged" AutoPostBack="true">
                        </asp:DropDownList>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-2" style="display:none">
                        <asp:Label ID="Label5" runat="server" Text="Label" CssClass="lbl">Link ID:</asp:Label>
                    </div>

                    <div class="col-md-4" style="display:none">
                        <asp:TextBox runat="server" ID="tb_linkID" Enabled="false" CssClass="txtIp"></asp:TextBox>
                    </div>

                    

                </div>
                <div class="row">
                    

                    <div class="col-md-2">
                        <asp:Label ID="Label11" runat="server" Text="Label" CssClass="lbl">Impact Details:</asp:Label>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="tb_Impact" ErrorMessage="*" ForeColor="Red" ValidationGroup="save">*</asp:RequiredFieldValidator>
                    </div>

                    <div class="col-md-4">
                        <asp:TextBox runat="server" ID="tb_Impact" CssClass="txtIp" Enabled="false"> </asp:TextBox>
                    </div>
                    <div class="col-md-2">
                        <asp:Label ID="Label12" runat="server" Text="Label" CssClass="lbl">Status:</asp:Label>
                    </div>

                    <div class="col-md-4">
                        <asp:TextBox runat="server" ID="tb_Status" Enabled="false" CssClass="txtIp"></asp:TextBox>
                    </div>

                    <div class="col-md-2">
                        <asp:Label ID="Label13" runat="server" Text="Label" CssClass="lbl">Side:</asp:Label>
                    </div>

                    <div class="col-md-4">
                        <asp:TextBox runat="server" ID="tb_Side" Enabled="false" CssClass="txtIp"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    

                    <div class="col-md-2">
                        <asp:Label ID="Label14" runat="server" Text="Label" CssClass="lbl">Chainage:</asp:Label>
                    </div>

                    <div class="col-md-4">
                        <asp:TextBox runat="server" ID="tb_Chainage" Enabled="false" CssClass="txtIp"></asp:TextBox>
                    </div>
                    <div class="col-md-2">
                        <asp:Label ID="Label15" runat="server" Text="Label" CssClass="lbl">ID No:</asp:Label>
                        <asp:RequiredFieldValidator runat="server" ID="re1" ControlToValidate="tb_IDNo" ErrorMessage="*" ForeColor="Red" ValidationGroup="save">*</asp:RequiredFieldValidator>
                    </div>

                    <div class="col-md-4">
                        <asp:TextBox runat="server" ID="tb_IDNo" CssClass="txtIp"></asp:TextBox>
                    </div>

                    <div class="col-md-2">
                        <asp:Label ID="Label16" runat="server" Text="Label" CssClass="lbl">Fa/Mo/Hus name:</asp:Label>
                    </div>

                    <div class="col-md-4">
                        <asp:TextBox runat="server" ID="tb_Name" CssClass="txtIp"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2">
                        <asp:Label ID="Label17" runat="server" Text="Label" CssClass="lbl">Bank:</asp:Label>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ControlToValidate="ddl_Bank" InitialValue="0" ErrorMessage="*" ForeColor="Red" ValidationGroup="save">*</asp:RequiredFieldValidator>
                    </div>

                    <div class="col-md-4">
                        <asp:DropDownList runat="server" ID="ddl_Bank" CssClass="dIp"></asp:DropDownList>
                    </div>

                    <div class="col-md-2">
                        <asp:Label ID="Label18" runat="server" Text="Label" CssClass="lbl">Branch:</asp:Label>
                    </div>

                    <div class="col-md-4">
                        <asp:TextBox runat="server" ID="tb_Branch" CssClass="txtIp"></asp:TextBox>
                    </div>

                    <div class="col-md-2">
                        <asp:Label ID="Label19" runat="server" Text="Label" CssClass="lbl">Account No:</asp:Label>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ControlToValidate="tb_AccNo" ErrorMessage="*" ForeColor="Red" ValidationGroup="save">*</asp:RequiredFieldValidator>
                    </div>

                    <div class="col-md-4">
                        <asp:TextBox runat="server" ID="tb_AccNo" CssClass="txtIp"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2">
                        <asp:Label ID="Label20" runat="server" Text="Label" CssClass="lbl">IFSC:</asp:Label>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ControlToValidate="tb_IFSC" ErrorMessage="*" ForeColor="Red" ValidationGroup="save">*</asp:RequiredFieldValidator>
                    </div>

                    <div class="col-md-4">
                        <asp:TextBox runat="server" ID="tb_IFSC" CssClass="txtIp"></asp:TextBox>
                    </div>

                    <div class="col-md-2" style="display:none">
                        <asp:Label ID="Label3" runat="server" Text="Label" CssClass="lbl">PAN No:</asp:Label>
                    </div>

                    <div class="col-md-4" style="display:none">
                        <asp:TextBox runat="server" ID="txtPANno" CssClass="txtIp" MaxLength="10"></asp:TextBox>
                    </div>

                    <div class="col-md-2">
                        <asp:Label ID="Label4" runat="server" Text="Label" CssClass="lbl">Aadhar No:</asp:Label>
                    </div>

                    <div class="col-md-4">
                        <asp:TextBox runat="server" ID="txtAadharNo" CssClass="txtIp" onkeyPress="return allowOnlyNumber(event)" MaxLength="12"></asp:TextBox>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-2">
                        <asp:Label ID="Label21" runat="server" Text="Label" CssClass="lbl">Annual Income:</asp:Label>
                    </div>

                    <div class="col-md-4">
                        <asp:TextBox runat="server" ID="tb_Income" CssClass="txtIp" onkeyPress="return allowOnlydecimalNumber(event)"></asp:TextBox>
                    </div>

                    <div class="col-md-2">
                        <asp:Label ID="Label22" runat="server" Text="Label" CssClass="lbl">Earning Member(No.):</asp:Label>
                    </div>

                    <div class="col-md-4">
                        <asp:TextBox runat="server" ID="tb_Earning" CssClass="txtIp" onkeyPress="return allowOnlyNumber(event)"></asp:TextBox>
                    </div>

                    <div class="col-md-2">
                        <asp:Label ID="Label23" runat="server" Text="Label" CssClass="lbl">Occupation Household Head:</asp:Label>
                    </div>

                    <div class="col-md-4">
                        <asp:TextBox runat="server" ID="tb_Ocupation" CssClass="txtIp"></asp:TextBox>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-2">
                        <asp:Label ID="Label24" runat="server" Text="Label" CssClass="lbl">R&R Manager:</asp:Label>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ControlToValidate="tb_RR" ErrorMessage="*" ForeColor="Red" ValidationGroup="save">*</asp:RequiredFieldValidator>
                    </div>

                    <div class="col-md-4">
                        <asp:TextBox runat="server" ID="tb_RR" Enabled="false" CssClass="txtIp"></asp:TextBox>
                    </div>

                    <div class="col-md-2">
                        <asp:Label ID="Label25" runat="server" Text="Label" CssClass="lbl">NGO:</asp:Label>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" ControlToValidate="ddl_Ngo" ErrorMessage="*" InitialValue="0" ForeColor="Red" ValidationGroup="save">*</asp:RequiredFieldValidator>
                    </div>

                    <div class="col-md-4">
                        <asp:DropDownList runat="server" ID="ddl_Ngo" CssClass="dIp" AutoPostBack="true" OnSelectedIndexChanged="ddl_Ngo_SelectedIndexChanged"></asp:DropDownList>
                    </div>

                    <div class="col-md-2">
                        <asp:Label ID="Label26" runat="server" Text="Label" CssClass="lbl">NGO Person:</asp:Label>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator12" ControlToValidate="ddl_NGOPerson" ErrorMessage="*" InitialValue="0" ForeColor="Red" ValidationGroup="save">*</asp:RequiredFieldValidator>
                    </div>

                    <div class="col-md-4">
                        <asp:DropDownList runat="server" ID="ddl_NGOPerson" CssClass="dIp"></asp:DropDownList>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-2">
                        <asp:Label ID="Label27" runat="server" Text="Label" CssClass="lbl">Assistant Engineer:</asp:Label>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator9" ControlToValidate="ddl_ASEng" InitialValue="0" ErrorMessage="*" ForeColor="Red" ValidationGroup="save"></asp:RequiredFieldValidator>

                    </div>

                    <div class="col-md-4">
                        <asp:DropDownList runat="server" ID="ddl_ASEng" CssClass="dIp"></asp:DropDownList>
                    </div>

                    <div class="col-md-2">
                        <asp:Label ID="Label30" runat="server" Text="Label" CssClass="lbl">Assistant Director:</asp:Label>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator10" ControlToValidate="ddl_ASDir" InitialValue="0" ErrorMessage="*" ForeColor="Red" ValidationGroup="save"></asp:RequiredFieldValidator>

                    </div>

                    <div class="col-md-4">
                        <asp:DropDownList runat="server" ID="ddl_ASDir" CssClass="dIp"></asp:DropDownList>
                    </div>

                    <div class="col-md-2">
                        <asp:Label ID="Label31" runat="server" Text="Label" CssClass="lbl">CAO:</asp:Label>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator11" ControlToValidate="ddl_CAO" InitialValue="0" ErrorMessage="*" ForeColor="Red" ValidationGroup="save"></asp:RequiredFieldValidator>

                    </div>

                    <div class="col-md-4">
                        <asp:DropDownList runat="server" ID="ddl_CAO" CssClass="dIp"></asp:DropDownList>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-2">
                        <asp:Label ID="Label32" runat="server" Text="Label" CssClass="lbl">PD:</asp:Label>
                    </div>

                    <div class="col-md-4">
                        <asp:TextBox runat="server" ID="tb_PD" Enabled="false" CssClass="txtIp"></asp:TextBox>
                    </div>

                    <div class="col-md-2">
                        <asp:Label ID="Label33" runat="server" Text="Label" CssClass="lbl">Date of Issue:</asp:Label>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="tb_IssueDate" ErrorMessage="*" ForeColor="Red" ValidationGroup="save">*</asp:RequiredFieldValidator>
                    </div>

                    <div class="col-md-4">
                        <asp:TextBox runat="server" ID="tb_IssueDate" CssClass="txtIp" onKeyPress="javascript: return false;" onPaste="javascript: return false;"></asp:TextBox>
                        <asp:CalendarExtender runat="server" Format="dd/MM/yyyy" ID="calenderextender" TargetControlID="tb_IssueDate"></asp:CalendarExtender>
                    </div>

                    <div class="col-md-2">
                        <asp:Label ID="Label34" runat="server" Text="Label" CssClass="lbl">Entitlement Year:</asp:Label>
                    </div>

                    <div class="col-md-4">
                        <asp:DropDownList runat="server" ID="ddl_Year" CssClass="dIp" AutoPostBack="true" OnSelectedIndexChanged="ddl_Year_SelectedIndexChanged">
                        </asp:DropDownList>

                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2">
                        <asp:Label runat="server" ID="lblUpload" Text="Upload Photo" CssClass="lbl"></asp:Label>

                    </div>
                    <div class="col-md-4">
                        <asp:FileUpload runat="server" ID="fpUpload" />
                        <asp:LinkButton runat="server" ID="lnkDof" Text='<%#Eval("Filename")%>' CausesValidation="false"></asp:LinkButton>
                    </div>
                    <asp:Image runat="server" ID="imgupload" Width="50" />
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <center>
         
        <div class="row" runat="server" id="divHeading"  visible="false">
            <div class="col-md-12">
                <asp:Label runat="server" ID="lblHeading" Text="R & R Assitance for the PAP"></asp:Label>
            </div>
        </div>
            </center>
        <asp:UpdatePanel runat="server" ID="rr">
            <ContentTemplate>

                <div class="row" runat="server" id="divEntitlement" visible="false">
                    <center>
              <div class="col-md-12">
                <table class="TB">
                  <tr>
                    <th>Type</th>
                    <th>Category</th>
                    <th></th>
                    <th></th>
                    <th>Amount</th>
                </tr>
             
                  <tr style="display:none;">
                        <td rowspan="4" >Owner Loss Of Land</td>
                        <td >Water yielding Bore Replacement?
                            <asp:RangeValidator runat="server" ID="RangeValidator6" Type="Double" ForeColor="Red" ControlToValidate="txtWaterYielding" MinimumValue="0" MaximumValue="100" ErrorMessage="Please enter the Value between 0 and 100!" />
                        </td>
                        <td > 
                          <asp:RadioButtonList runat="server" ID="rblWater" RepeatDirection="Horizontal" OnSelectedIndexChanged="rblWater_SelectedIndexChanged" CssClass="rBn" AutoPostBack="True" >
                              <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                              <asp:ListItem Text="No" Value="2"></asp:ListItem>
                          </asp:RadioButtonList>
                      </td>     
                        <td></td>      
                        <td > <asp:TextBox ID="txtWaterYielding" runat="server" CssClass="txtIp" Enabled="false" AutoPostBack="true"  OnTextChanged="txtWaterYielding_TextChanged" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="6"></asp:TextBox>
                            

                        </td>
                    </tr>
                  <tr style="display:none;">
                        <td>Subsistence Allowance</td>
                       <td> 
                          <asp:RadioButtonList runat="server" AutoPostBack="true" CssClass="rBn" ID="rblSubAllowence" OnSelectedIndexChanged="rblSubAllowence_SelectedIndexChanged" RepeatDirection="Horizontal" >
                              <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                              <asp:ListItem Text="No" Value="2"></asp:ListItem>
                          </asp:RadioButtonList>
                      </td>      
                        <td></td>   
                        <td><asp:TextBox ID="txtSubAllowOwner" runat="server" CssClass="txtIp" Enabled="false"  AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>
                   
                    </tr>
                  <tr style="display:none;">
                        <td>Income Generating Asset Assistance</td>
                      <td> 
                          <asp:RadioButtonList runat="server" AutoPostBack="true" CssClass="rBn" ID="rblIncomeGen" RepeatDirection="Horizontal" OnSelectedIndexChanged="rblIncomeGen_SelectedIndexChanged" >
                              <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                              <asp:ListItem Text="No" Value="2"></asp:ListItem>
                          </asp:RadioButtonList>
                      </td>
                      <td></td>
                        <td> <asp:TextBox ID="txtIncomeGen" runat="server" CssClass="txtIp"  Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>
                   
                    
                 </tr>       
                  <tr style="display:none;">
                        <td>Training Assistance</td>
                      <td> 
                          <asp:RadioButtonList runat="server" ID="rblTrainAsst" CssClass="rBn" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="rblTrainAsst_SelectedIndexChanged" >
                              <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                              <asp:ListItem Text="No" Value="2"></asp:ListItem>
                          </asp:RadioButtonList>
                      </td>
                      <td></td>
                        <td> 
                    <asp:TextBox ID="txtTraining_Assistance" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="6"></asp:TextBox>
                            </td>
                            
                    
                 </tr>
               
                  <tr style="display:none;">
                         <td rowspan="7">Owner Loss of Residential Structure</td>
                         <td>Compensation with Solatium <asp:Label runat="server" ID="lblCompSolatium" CssClass="lbl"></asp:Label>
                             <asp:RangeValidator runat="server" ID="RangeValidator4" Type="Double" ForeColor="Red" ControlToValidate="txtSolatium" MinimumValue="0" MaximumValue="100" ErrorMessage="Please enter the Value between 0 and 100!"/>
                         </td>
                      <td> 
                          <asp:RadioButtonList runat="server" ID="rdoSolatium" CssClass="rBn" RepeatDirection="Horizontal" OnSelectedIndexChanged="rdoSolatium_SelectedIndexChanged" AutoPostBack="True" >
                              <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                              <asp:ListItem Text="No" Value="2"></asp:ListItem>
                          </asp:RadioButtonList>
                      </td>
                      <td></td>
                         <td> <asp:TextBox ID="txtSolatium" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="6"></asp:TextBox>
                         </td>

                 </tr>
                  <tr style="display:none;">
                    <td>Replacement House or cost</td>
                      <td>
                          <asp:RadioButtonList runat="server" ID="rblReplaceHouseorCost" CssClass="rBn" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rblReplaceHouseorCost_SelectedIndexChanged" >
                              <asp:ListItem Text="House" Value="1"></asp:ListItem>
                              <asp:ListItem Text="Construction Cost" Value="2"></asp:ListItem>
                          </asp:RadioButtonList>
                      </td>
                     <td>
                          <asp:RadioButtonList runat="server" ID="rblReplaceHouseorCost1" CssClass="rBn" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rblReplaceHouseorCost1_SelectedIndexChanged" >
                              <asp:ListItem Text="Rural" Value="1"></asp:ListItem>
                              <asp:ListItem Text="Urban" Value="2"></asp:ListItem>
                          </asp:RadioButtonList>
                      </td>
                    <td> <asp:TextBox ID="txtReplaceHouseorCost" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>

                </tr>
                  <tr style="display:none;">
                        <td>Shifting Assistance</td>
                    <td>
                          <asp:RadioButtonList runat="server" ID="rblShiftAsstRES" CssClass="rBn" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rblShiftAsstRES_SelectedIndexChanged" >
                              <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                              <asp:ListItem Text="No" Value="2"></asp:ListItem>
                          </asp:RadioButtonList>
                      </td>
                    <td></td>
                        <td> <asp:TextBox ID="txtShiftAsstRES" Enabled="false"  AutoPostBack="true"  OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>

                </tr>
                  <tr style="display:none;">
                        <td>Subsistence Allowance</td>
                    <td>
                          <asp:RadioButtonList runat="server" ID="rblSubAllowRES" CssClass="rBn" RepeatDirection="Horizontal" AutoPostBack="true"  OnSelectedIndexChanged="rblSubAllowRES_SelectedIndexChanged">
                              <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                              <asp:ListItem Text="No" Value="2"></asp:ListItem>
                          </asp:RadioButtonList>
                      </td>
                    <td></td>
                        <td> <asp:TextBox ID="txtSubAllowRES" Enabled="false" AutoPostBack="true"  OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>
                      
                </tr>
                  <tr style="display:none;">
                    <td>Resettlement Assistance</td>
                    <td>
                          <asp:RadioButtonList runat="server" ID="rblRestleRES" CssClass="rBn" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rblRestleRES_SelectedIndexChanged" >
                              <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                              <asp:ListItem Text="No" Value="2"></asp:ListItem>
                          </asp:RadioButtonList>
                      </td>
                    <td></td>
                    <td> <asp:TextBox ID="txtRestleRES" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>

                </tr>
                  <tr style="display:none;">
                    <td>Site Development Cost</td>
                    <td>
                          <asp:RadioButtonList runat="server" ID="rblSiteDevRES" CssClass="rBn" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rblSiteDevRES_SelectedIndexChanged" >
                              <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                              <asp:ListItem Text="No" Value="2"></asp:ListItem>
                          </asp:RadioButtonList>
                      </td>
                    <td></td>
                    <td> <asp:TextBox ID="txtSiteDevRES" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>

                </tr>
                  <tr style="display:none;">
                    <td>Additional <asp:Label runat="server" ID="lblPartial" CssClass="lbl"></asp:Label> for partially affected Structure</td>
                    <td>
                            <asp:RadioButtonList runat="server" CssClass="rBn" ID="rblAdditionalRES" RepeatDirection="Horizontal" OnSelectedIndexChanged="rblAdditionalRES_SelectedIndexChanged" AutoPostBack="True" >
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    <td></td>
                    <td> <asp:TextBox ID="txtAdditionalRES" Enabled="false"  AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>

                </tr>
                  <tr style="display:none;">
                    <td rowspan="7">Owner Loss of Commercial Structure</td>
                    <td>Compensation with Solatium <asp:Label runat="server" ID="lblSolatium" CssClass="lbl"></asp:Label> 
                        <asp:RangeValidator runat="server" ID="RangeValidator7" Type="Double" ForeColor="Red" ControlToValidate="txtSolatiumCommercial" MinimumValue="0" MaximumValue="100" ErrorMessage="Please enter the Value between 0 and 100!"/></td>
                    <td>
                            <asp:RadioButtonList runat="server" CssClass="rBn" ID="rblSolatiumCommercial" RepeatDirection="Horizontal" OnSelectedIndexChanged="rblSolatiumCommercial_SelectedIndexChanged" AutoPostBack="True" >
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    <td></td>
                    <td> <asp:TextBox ID="txtSolatiumCommercial" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="6"></asp:TextBox>
              
                    </td>

                </tr>
                  <tr style="display:none;">
                    <td>Shifting Assistance</td>
                    <td>
                            <asp:RadioButtonList runat="server" CssClass="rBn" ID="rblShiftCommercial" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rblShiftCommercial_SelectedIndexChanged" >
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    <td></td>
                    <td> <asp:TextBox ID="txtShiftCommercial" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>

                </tr>
                  <tr style="display:none;">
                    <td>Subsistence Allowance</td>
                        <td>
                            <asp:RadioButtonList runat="server" CssClass="rBn" ID="rblSubCommercial" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rblSubCommercial_SelectedIndexChanged" >
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td></td>
                    <td> <asp:TextBox ID="txtSubCommercial" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>

                </tr>
                  <tr style="display:none;">
                    <td>Resettlement Allowance</td>
                    <td>
                            <asp:RadioButtonList runat="server" CssClass="rBn" ID="rblResetCommercial" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rblResetCommercial_SelectedIndexChanged" >
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    <td></td>
                    <td> <asp:TextBox ID="txtResetCommercial" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>

                </tr>
                  <tr style="display:none;">
                    <td>One time grant for reconstruction</td>
                    <td>
                            <asp:RadioButtonList runat="server" CssClass="rBn" ID="rblReconstCommercial" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rblReconstCommercial_SelectedIndexChanged" >
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    <td></td>
                    <td> <asp:TextBox ID="txtReconstCommercial" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>

                </tr>
                  <tr style="display:none;">
                    <td>Commercial Structure >50 Sqmt
                        <asp:RangeValidator runat="server" ID="RangeValidator8" Type="Double" ForeColor="Red" ControlToValidate="txtStructCommercial" MinimumValue="0" MaximumValue="100" ErrorMessage="Please enter the Value between 0 and 100!" />
                    </td>
                    <td> 
                            <asp:RadioButtonList runat="server" CssClass="rBn" ID="rblStructCommercial" RepeatDirection="Horizontal" OnSelectedIndexChanged="rblStructCommercial_SelectedIndexChanged" AutoPostBack="true" >
                                <asp:ListItem Text="Lumpsum" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Employment Benefit" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    <td></td>
                    <td> <asp:TextBox ID="txtStructCommercial" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="6"></asp:TextBox>
                    </td>

                </tr>
                  <tr style="display:none;">
                    <td>Additional <asp:Label runat="server" ID="lblPartCommercial" CssClass="lbl"></asp:Label> for partially affected structure
                        <asp:RangeValidator runat="server" ID="RangeValidator1" Type="Double" ForeColor="Red" ControlToValidate="txtaffectStructCommercial" MinimumValue="0" MaximumValue="100" ErrorMessage="Please enter the Value between 0 and 100!" />
                    </td>
                    <td>
                            <asp:RadioButtonList runat="server" CssClass="rBn" ID="rblaffectStructCommercial" RepeatDirection="Horizontal" OnSelectedIndexChanged="rblaffectStructCommercial_SelectedIndexChanged" AutoPostBack="True" >
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                                <td></td>
                    <td> <asp:TextBox ID="txtaffectStructCommercial" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="6"></asp:TextBox>
                    </td>

                </tr>
                  <tr>
                
                    <td >Tenant</td>
                    <td>Resettlement Allowance</td>
                    <td>
                            <asp:RadioButtonList runat="server" CssClass="rBn" ID="rblRentCommercial" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rblRentCommercial_SelectedIndexChanged" >
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="NO" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    <td></td>
                    <td> <asp:TextBox ID="txtRentCommercial" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>

                </tr>
                  <tr style="display:none;">
                        <td>Shifting Assistance</td>
                        <td>
                            <asp:RadioButtonList runat="server" CssClass="rBn" ID="rblShiftTen" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rblShiftTen_SelectedIndexChanged" >
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td></td>
                        <td> <asp:TextBox ID="txtShiftTen" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>

                    </tr>
                  <tr style="display:none;">
                    <td>Cash Allowance for house construction</td>
                        <td>
                            <asp:RadioButtonList runat="server" CssClass="rBn" ID="rblCashTen" RepeatDirection="Horizontal" OnSelectedIndexChanged="rblCashTen_SelectedIndexChanged" AutoPostBack="True" >
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td></td>
                    <td> <asp:TextBox ID="txtCashTen" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>

                    </tr>
                     <tr style="display:none;">
                  
                    <td>IGA</td>
                    <td>
                            <asp:RadioButtonList runat="server" CssClass="rBn" ID="rblIncomeSqt2" RepeatDirection="Horizontal"  AutoPostBack="True" OnSelectedIndexChanged="rblIncomeSqt2_SelectedIndexChanged" >
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    <td><asp:RadioButtonList runat="server" CssClass="rBn" ID="rblIncomeSqt22" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rblIncomeSqt22_SelectedIndexChanged"  >
                                <asp:ListItem Text="Shop" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Assistance" Value="2"></asp:ListItem>
                            </asp:RadioButtonList></td>
                    <td> <asp:TextBox ID="txtIncomeSqt2" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>

                </tr>
                  <tr style="display:none;">
                   
                    <td >Subsistence Allowance</td>
                        <td>
                            <asp:RadioButtonList runat="server" CssClass="rBn" ID="rblSubTen" RepeatDirection="Horizontal" OnSelectedIndexChanged="rblSubTen_SelectedIndexChanged" >
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                       <td></td>
                                
                    <td> <asp:TextBox ID="txtSubTen" Enabled="true" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>
                    </tr>

                  <tr>
                    <td rowspan="5">Residential squatter</td>
                    <td>Transportation Allowance</td>
                        <td>
                            <asp:RadioButtonList runat="server" CssClass="rBn" ID="rblResident" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rblResident_SelectedIndexChanged" >
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="NO" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td></td>
                    <td> 
                        <asp:TextBox ID="txtResident" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> 

                    </td>

                </tr>
                  <tr>
                    <td>Resettlement Allowance</td>
                    <td>
                            <asp:RadioButtonList runat="server" CssClass="rBn" ID="rblShiftRes" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rblShiftRes_SelectedIndexChanged" >
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    <td></td>
                    <td> <asp:TextBox ID="txtShiftRes" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>

                </tr>
                  <tr>
                    <td>Substitance Allowance</td>
                        <td>
                            <asp:RadioButtonList runat="server" CssClass="rBn" ID="rblSubRes" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rblSubRes_SelectedIndexChanged" >
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td></td>
                    <td> <asp:TextBox ID="txtSubRes" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>

                </tr>
                  <tr>
                    <td>Structure Value</td>
                    <td>
                            <asp:RadioButtonList runat="server" CssClass="rBn" ID="rblGovtRes" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rblGovtRes_SelectedIndexChanged" >
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    <td></td>
                    <td> <asp:TextBox ID="txtGovtRes" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>

                </tr>
                  <tr>
                    <td>Construction Cost</td>
                    <td>
                            <asp:RadioButtonList runat="server" CssClass="rBn" ID="rblReplaceCostRes" RepeatDirection="Horizontal" OnSelectedIndexChanged="rblReplaceCostRes_SelectedIndexChanged" AutoPostBack="True" >
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    <td></td>
                    <td> <asp:TextBox ID="txtReplaceCostRes" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>

                </tr>
                  <tr style="display:none;">
                    <td>Cash Assistance for less than 3 years</td>
                    <td>
                            <asp:RadioButtonList runat="server" CssClass="rBn" ID="rblCashAssistRes" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rblCashAssistRes_SelectedIndexChanged" >
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    <td></td>
                    <td> <asp:TextBox ID="txtCashAssistRes" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>

                </tr>
                  <tr>
                    <td rowspan="4">Commercial squatter</td>
                    <td>Transportation Allowance</td>
                    <td>
                            <asp:RadioButtonList runat="server" CssClass="rBn" ID="rblIncomeSqt" RepeatDirection="Horizontal" OnSelectedIndexChanged="rblIncomeSqt_SelectedIndexChanged1" AutoPostBack="True" >
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    <td>
                        <asp:RadioButtonList runat="server" CssClass="rBn" ID="rblIncomeSqt1" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rblIncomeSqt_SelectedIndexChanged" Visible="false" >
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList></td>
                    <td> <asp:TextBox ID="txtIncomeSqt" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>

                </tr>
                  <tr>
                    <td>Resettlement Allowance</td>
                        <td>
                            <asp:RadioButtonList runat="server" CssClass="rBn" ID="rblShiftSqt" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rblShiftSqt_SelectedIndexChanged" >
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td> </td>
                    <td> <asp:TextBox ID="txtShiftSqt" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>

                </tr>
                  <tr>
              
                    <td>Substitance Allowance</td>
                        <td>
                            <asp:RadioButtonList runat="server" CssClass="rBn" ID="rblSubSqt" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rblSubSqt_SelectedIndexChanged" >
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td></td>
                    <td> <asp:TextBox ID="txtSubSqt" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>

                </tr>
                  <tr>
               
                    <td>Structure Value</td>
                        <td>
                            <asp:RadioButtonList runat="server" CssClass="rBn" ID="rblRcostSqt" RepeatDirection="Horizontal" OnSelectedIndexChanged="rblRcostSqt_SelectedIndexChanged" AutoPostBack="True" >
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td></td>
                    <td> <asp:TextBox ID="txtRcostSqt" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>

                </tr>
                  <tr>
                        <td>Encroacher</td>
                    <td>Replacement cost of affected structure calculated at current PWC scheduled rates without depreciation</td>
                    <td>
                            <asp:RadioButtonList runat="server" CssClass="rBn" ID="rblRCostEnch" RepeatDirection="Horizontal" OnSelectedIndexChanged="rblRCostEnch_SelectedIndexChanged" AutoPostBack="True" >
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    <td></td>
                    <td> <asp:TextBox ID="txtRCostEnch" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>

                </tr>
                  <tr style="display:none;">                
                    <td>Compensation for crop loss</td>
                    <td>
                            <asp:RadioButtonList runat="server" CssClass="rBn" ID="rblCompEnch" RepeatDirection="Horizontal" OnSelectedIndexChanged="rblCompEnch_SelectedIndexChanged" AutoPostBack="True" >
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    <td></td>
                    <td> <asp:TextBox ID="txtCompEnch" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>

                </tr>
                  <tr style="display:none;">
                        <td>Gramthana Land without Title</td>
                    <td>Exgratia Compensation</td>
                    <td>
                            <asp:RadioButtonList runat="server" CssClass="rBn" ID="rblExGramatha" RepeatDirection="Horizontal" OnSelectedIndexChanged="rblExGramatha_SelectedIndexChanged" AutoPostBack="true" >
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                            <td></td>
                    <td> <asp:TextBox ID="txtExGramatha" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>

                </tr>
                  <tr style="display:none;">
                        <td>Loss of Livelihood</td>
                    <td>One time grant for loss of livelihood</td>
                    <td>
                            <asp:RadioButtonList runat="server" CssClass="rBn" ID="rblLiveHood" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rblLiveHood_SelectedIndexChanged" >
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                            <td></td>
                    <td> <asp:TextBox ID="txtLiveHood" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>

                </tr>
                  <tr style="display:none;">
                        <td rowspan="3">Vulnerable People</td>
                    <td>Assistance to include Govt pension scheme</td>
                    <td>
                            <asp:RadioButtonList runat="server" CssClass="rBn" ID="rblRcostVun" RepeatDirection="Horizontal" OnSelectedIndexChanged="rblRcostVun_SelectedIndexChanged" AutoPostBack="True" >
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                            <td></td>
                    <td> <asp:label ID="txtRcostVun" Enabled="false" runat="server"></asp:label> </td>
                </tr>
                  <tr style="display:none;">
               
                    <td>One Time Lumpsum amount</td>
                    <td>
                            <asp:RadioButtonList runat="server" CssClass="rBn" ID="rblLumsumVun" RepeatDirection="Horizontal" OnSelectedIndexChanged="rblLumsumVun_SelectedIndexChanged" AutoPostBack="true" >
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                            <td><asp:RadioButtonList runat="server" ID="rblLumsumVun1" CssClass="rBn" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rblLumsumVun1_SelectedIndexChanged" >
                                <asp:ListItem Text="TH/Gramthana" Value="1"></asp:ListItem>
                                <asp:ListItem Text="NTH" Value="2"></asp:ListItem>
                            </asp:RadioButtonList></td>
                    <td> <asp:TextBox ID="txtLumsumVun" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>

                </tr>
                  <tr style="display:none;">
                
                    <td>Additional benefit for SC, ST</td>
                    <td>
                            <asp:RadioButtonList runat="server" CssClass="rBn" ID="rblSCSTVun" RepeatDirection="Horizontal" OnSelectedIndexChanged="rblSCSTVun_SelectedIndexChanged" AutoPostBack="True" >
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                            <td></td>
                    <td> <asp:TextBox ID="txtSCSTVun" Enabled="false" AutoPostBack="true" OnTextChanged="txtWaterYielding_TextChanged" runat="server" CssClass="txtIp" onkeypress="return allowOnlydecimalNumber(event)" MaxLength="19"></asp:TextBox> </td>

                </tr>
                  <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>Total</td>
                            <td> <asp:TextBox ID="txtTotal" runat="server" CssClass="txtIp"  Enabled="false"></asp:TextBox> </td>
                          
                        </tr>
            </table> 
            </div>
            </center>
                </div>


            </ContentTemplate>
        </asp:UpdatePanel>
        <div class="row">
            <div class="upBtn">
                <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="uBtn" OnClick="btnSave_Click" ValidationGroup="save" />
                <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="uBtn" Visible="false" OnClick="btnUpdate_Click" ValidationGroup="save" />
                <asp:Button runat="server" ID="btnSendAD" Text="Send To AD" CssClass="uBtn" Visible="false" OnClick="btnSendAD_Click" />
            </div>
        </div>


        <div class="row" runat="server" visible="false">
            <center>                         
                           <u></u>  
                       <asp:GridView runat="server" ID="gvID" AutoGenerateColumns="false" CssClass="TB" width="60%" OnRowDataBound="gvID_RowDataBound" PageSize="10" EmptyDataText="No Records Found" AllowPaging="true" OnPageIndexChanging="gvID_PageIndexChanging" >
                           <Columns>                               
                               <asp:TemplateField HeaderText="Select" ItemStyle-Width="10px" >
                                   <HeaderTemplate>
                                       <asp:CheckBox ID="chkSelectAll" Visible="false" runat="server" AutoPostBack="true" Text="Select All" OnCheckedChanged="chkboxSelectAll_CheckedChanged" />
                                   </HeaderTemplate>
                                   <ItemTemplate>
                                       <asp:UpdatePanel runat="server" ID="upd1">
                                           <ContentTemplate>
                                                <asp:CheckBox runat="server" ID="chkSelect"  />
                                           </ContentTemplate>
                                       </asp:UpdatePanel>                                      
                                   </ItemTemplate>
                               </asp:TemplateField>
                                <asp:TemplateField HeaderText="PAP Category" >                                  
                                   <ItemTemplate >
                                       <asp:Label runat="server" id="lblOwn" text='<%#Eval("PAPCategory") %>'></asp:Label>
                                   </ItemTemplate>
                               </asp:TemplateField>
                                <asp:TemplateField HeaderText="Impact Category" >                                   
                                   <ItemTemplate>
                                       <asp:Label runat="server" id="Label9" text='<%#Eval("Impact_Category") %>'></asp:Label>
                                   </ItemTemplate>
                               </asp:TemplateField>
                                <asp:TemplateField HeaderText="Entitlement Category" >                                  
                                   <ItemTemplate>
                                        <asp:Label runat="server" id="lblentcat" text='<%#Eval("Entitlement_Category") %>'></asp:Label>
                                   </ItemTemplate>
                               </asp:TemplateField>
                                <asp:TemplateField HeaderText="Entitlement Amount"  >
                                  
                                   <ItemTemplate>
                                      <asp:Label runat="server" id="lblent" text='<%#Eval("Entitlement_Amount") %>'></asp:Label>
                                   </ItemTemplate>
                               </asp:TemplateField>
                               <asp:TemplateField HeaderText="Short Desc"   >                                  
                                   <ItemTemplate>
                                        <asp:TextBox runat="server" id="tb_desc" Text='<%#Eval("Entitlement") %>' ></asp:TextBox>                                       
                                   </ItemTemplate>
                               </asp:TemplateField>
                                <asp:TemplateField HeaderText="Eligible Amount"   >
                                  
                                   <ItemTemplate>
                                      <asp:TextBox runat="server" id="tb_Amt" Text='<%#Eval("Eligible_Amount") %>' onkeyPress="return allowOnlydecimalNumber(event)"></asp:TextBox>                                      
                                   </ItemTemplate>
                               </asp:TemplateField>
                             
                               <asp:TemplateField HeaderText="id"  ItemStyle-Width="70px" Visible="false"  >
                                  
                                   <ItemTemplate>
                                      <asp:Label runat="server" id="lblem" text='<%#Eval("EM_ID") %>'></asp:Label>
                                   </ItemTemplate>
                               </asp:TemplateField>
                                 <asp:TemplateField HeaderText="id"  ItemStyle-Width="70px" Visible="false"  >
                                  
                                   <ItemTemplate>
                                      <asp:Label runat="server" id="lblnthidcard" text='<%#Eval("NTH_IDcard_ID") %>'></asp:Label>
                                   </ItemTemplate>
                               </asp:TemplateField>
                           
                           </Columns>
                       </asp:GridView>
                    </center>
        </div>

        <div class="row" runat="server" id="div1" visible="false">
            <div class="upBtn">
                <asp:Button ID="btnUpd" runat="server" Text="Update" CssClass="uBtn" Visible="false" OnClick="btnUpd_Click" />
            </div>
        </div>

    </div>
</asp:Content>
