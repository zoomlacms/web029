﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CollectionStep1.aspx.cs" Inherits="ZoomLaCMS.Manage.Content.Collect.CollectionStep1"  MasterPageFile="~/Manage/I/Default.master" %>
<asp:Content runat="server" ContentPlaceHolderID="head"><title>采集管理</title></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
    <table class="table table-striped table-bordered">
        <tr>
            <td class="td_m">
                <strong>项目名称：</strong>
            </td>
            <td>
                <ZL:TextBox ID="txtItemName" runat="server" class="form-control text_300" AllowEmpty="false" />
            </td>
        </tr>
        <tr>
            <td>
                <strong>网站名称： </strong>
            </td>
            <td>
                <ZL:TextBox ID="txtSiteName" runat="server" class="form-control text_300" AllowEmpty="false"/>
            </td>
        </tr>
        <tr>
            <td>
                <strong>目标模型：</strong>
            </td>
            <td>
                <asp:DropDownList ID="ddlModel" runat="server" CssClass="form-control text_300" DataTextField="ModelName" DataValueField="ModelID"></asp:DropDownList>
                <asp:Label ID="Lbl_checkNode" runat="server" Visible="false" Text="你选择的栏目没有绑定数据表单！" Style="font-size: 12px; color: Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><strong>入库节点：</strong></td>
            <td>
                <asp:Label runat="server" ID="Node_L"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><strong>采集URL：</strong></td>
            <td>
                <asp:DropDownList runat="server" ID="Proto_DP" CssClass="form-control text_s">
                    <asp:ListItem Text="http://" Value="http://"></asp:ListItem>
                    <asp:ListItem Text="https://" Value="https://"></asp:ListItem>
                </asp:DropDownList>
                <ZL:TextBox ID="txtUrl" class="form-control text_500" runat="server" AllowEmpty="false" />
            </td>
        </tr>
                <tr>
            <td><strong>编码选择：</strong></td>
            <td>
                <div style="float:left;">
                <asp:RadioButtonList ID="rblCoding" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="0" Selected="True">自动获取</asp:ListItem>
                    <asp:ListItem Value="1">UTF-8</asp:ListItem>
                    <asp:ListItem Value="2">GB2312</asp:ListItem>
                    <asp:ListItem Value="3">Big5</asp:ListItem>
                </asp:RadioButtonList>
                </div>
            </td>
        </tr>
        <tr>
            <td><strong>网站登录：</strong></td>
            <td>
                <asp:TextBox runat="server" ID="Cookies_T" TextMode="MultiLine" CssClass="form-control m715-50" style="height:100px;" placeholder="请拷贝入对应站点Cookies的值" />
                <div class="rd_green">如需要验证身份信息的网站,则必须设置Cookies,才能进行登录采集</div>
            </td>
        </tr>
 <%--       <tr>
            <td><strong>采集数量：</strong></td>
            <td>
                <asp:TextBox ID="txtNum" class="form-control text_300" runat="server"></asp:TextBox>
                <span style="color: Green"> 注：不指定为全部</span>
            </td>
        </tr>--%>
        <tr>
            <td><strong>备 注：</strong></td>
            <td>
                <asp:TextBox ID="txtContext" runat="server" Rows="8" TextMode="MultiLine" class="form-control m715-50" Height="68px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="下一步" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ScriptContent">
<script src="/JS/Controls/ZL_Dialog.js"></script>
<script>
function selNode() {
    ShowComDiag("/Common/NodeList.aspx?Source=content", "请选择节点<input type='button' value='确定' onclick='GetDiagCon().SureFunc();' class='btn btn-primary'>");
}
function setNodeDP(nid)
{
    $("#node_dp").val(nid);
}
</script>    
</asp:Content>
