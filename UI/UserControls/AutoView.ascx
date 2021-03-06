﻿<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="AutoView.ascx.cs" Inherits="InfoCaster.Umbraco.UrlTracker.UI.UserControls.AutoView" %>

<%@ Import Namespace="InfoCaster.Umbraco.UrlTracker" %>

<fieldset>
	<legend>Required</legend>
	<asp:Panel runat="server" ID="pnlRootNode" CssClass="control-group">
		<label class="control-label"><%= UrlTrackerResources.RootNode %> <i class="icon-question-sign" data-toggle="tooltip" title="<%= UrlTrackerResources.RootNodeInfo %>"></i></label>
		<div class="controls">
			<asp:HyperLink runat="server" ID="lnkRootNode" CssClass="simple" data-toggle="tooltip" />
		</div>
	</asp:Panel>
	<div class="control-group">
		<label class="control-label"><%= UrlTrackerResources.OldUrl %> <i class="icon-question-sign" data-toggle="tooltip" title="<%= UrlTrackerResources.OldUrlInfo %>"></i></label>
		<div class="controls">
			<asp:HyperLink runat="server" ID="lnkOldUrl" Target="_blank" CssClass="simple" data-toggle="tooltip" />
		</div>
	</div>
	<div class="control-group">
		<label class="control-label"><%= UrlTrackerResources.RedirectNode %> <i class="icon-question-sign" data-toggle="tooltip" title="<%= UrlTrackerResources.RedirectNodeInfo %>"></i></label>
		<div class="controls">
			<asp:HyperLink runat="server" ID="lnkRedirectNode" CssClass="simple" data-toggle="tooltip" />
		</div>
	</div>
</fieldset>
<fieldset>
	<legend>Optional</legend>
	<div class="control-group">
		<label class="control-label"><%= UrlTrackerResources.RedirectType %> <i class="icon-question-sign" data-toggle="tooltip" title="<%= UrlTrackerResources.RedirectTypeInfo %>"></i></label>
		<div class="controls">
			<label class="radio inline">
				<asp:RadioButton runat="server" ID="rbPermanent" GroupName="RedirectType" />
			</label>
			<label class="radio inline">
				<asp:RadioButton runat="server" ID="rbTemporary" GroupName="RedirectType" />
			</label>
		</div>
	</div>
	<div class="control-group">
		<label class="control-label" for="<%= cbRedirectPassthroughQueryString.ClientID %>"><%= UrlTrackerResources.PassthroughQueryString %> <i class="icon-question-sign" data-toggle="tooltip" title="<%= UrlTrackerResources.PassthroughQueryStringInfo %>"></i></label>
		<div class="controls">
			<label class="checkbox">
				<asp:CheckBox runat="server" ID="cbRedirectPassthroughQueryString" />
			</label>
		</div>
	</div>
	<div class="control-group">
		<label class="control-label">Mapping reason</label>
		<div class="controls">
			<asp:Label runat="server" ID="lblNotes" CssClass="simple" />
		</div>
	</div>
	<div class="control-group">
		<label class="control-label">Created</label>
		<div class="controls">
			<asp:Label runat="server" ID="lblInserted" CssClass="simple" />
		</div>
	</div>
</fieldset>