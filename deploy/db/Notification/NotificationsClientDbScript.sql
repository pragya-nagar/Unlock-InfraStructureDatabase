-- START SPRINT 2.9.1 A

IF (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = N'dbo' AND  TABLE_NAME = N'MailerTemplate'))
BEGIN
IF NOT EXISTS(SELECT TOP 1 * FROM [MailerTemplate] where [TemplateName]='Draft OKR')
BEGIN
INSERT [dbo].[MailerTemplate] ([TemplateName], [TemplateCode], [Subject], [Body], [CreatedBy], [CreatedOn], [isActive]) VALUES (N'Draft OKR', N'DO', N'<username>, pick up your incomplete OKRs from where you left last time', '<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">  <!--[if IE]>  <html xmlns="http://www.w3.org/1999/xhtml" class="ie">     <![endif]-->  <!--[if !IE]><!-->  <html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">  <!--<![endif]-->    <head>   <meta http-equiv="Content-Type" content="text/html; charset=utf-8">   <title></title>   <meta http-equiv="Content-Type" content="text/html; charset=utf-8">   <!--[if !mso]><!-->   <meta http-equiv="X-UA-Compatible" content="IE=edge">   <!--<![endif]-->   <meta name="viewport" content="width=device-width">   <title>Okr Assignment Complete</title>   <style>    body {     -webkit-text-size-adjust: 100%;     margin: 0;     padding: 0;     border: 0px;     font-family: Calibri;     font-weight: 400;     font-size: 16px;    }      table,    tr,    td {     margin: 0px;     padding: 0px;    }   </style>  </head>    <!--[if mso]>        <body class="mso" style="padding:0px;margin: 0px;">           <![endif]-->  <!--[if !mso]><!-->    <body style="padding:0px;margin: 0px;">   <!--<![endif]-->     <!--[if !mso]><!-->   <table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"    style="background: #EEF5FF; Margin: 0 auto; padding:0px;">    <!--<![endif]-->    <!--[if (mso)|(IE)]>                   <table class="wrapper" width="100%" align="center"  style="background: #EEF5FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->    <tr>     <td cellspacing="0" cellpadding="0" width="100%">      <img src="topBar" width="100%" style="display: block;" />     </td>    </tr>    <tr>     <td cellspacing="0" cellpadding="0">      <table align="center" width="600" cellspacing="0" cellpadding="0"       style="margin: 0px auto; color: #292929; font-weight: normal; ">       <tr>        <td cellpadding="0" cellspacing="0" style="padding: 20px 0 40px;">         <table width="100%" cellspacing="0" cellpadding="0">          <tr>           <td style="width: 50%;">            <a href="<URL>" target="_blank"             style="text-decoration: none;">             <img src="logo" style=" display: block;" />            </a>           </td>             <td style="text-align: right; vertical-align: bottom; font-family: Calibri; ">            <a href="<URL>" target="_blank"             style="text-decoration: none; color: #39A3FA;">             <img src="loggedInButton" alt="arrow" />            </a>           </td>          </tr>         </table>        </td>       </tr>       <tr>        <td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;">         <table width="100%" cellspacing="0" cellpadding="0"          style="background-color: #ffffff;  border-radius: 6px;">          <tr>           <td cellpadding="0" cellspacing="0" style="padding: 33px 35px;">            <table width="100%" cellspacing="0" cellpadding="0">             <tr>              <td align="center" cellpadding="0" cellspacing="0"               style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 12px;text-align: center;">               Hello <strong>name,</strong>              </td>             </tr>             <tr>              <td cellpadding="0" cellspacing="0" align="center"               style="padding-bottom: 0px;">               <img src="draftImage" alt="okr-assignment-completed"                style="display:block;max-width:100%;padding: 0px;margin: 0px">              </td>             </tr>             <tr>              <td cellpadding="0" cellspacing="0" align="center"               style="padding-bottom: 5px;">               <table width="393" cellspacing="0" cellpadding="0"                style:"393px;Margin:0 auto">                <tr>                 <td align="center" cellpadding="0" cellspacing="0"                  style="font-size:16px;line-height:21px;color:#292929;font-family: Calibri,Arial;text-align: center;">                  <a href="<GoalUrl>"                   traget="_blank"                   style="font-size:16px;font-family: Calibri,Arial;font-weight:bold;color: #39A3FA;text-decoration: none;">“KeyDescription”</a>                   </td>                </tr>                <tr>                 <td align="center" cellpadding="0" cellspacing="0"                  style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;text-align: center;">                  has now been successfully saved in draft                 </td>                </tr>               </table>              </td>             </tr>             <tr>              <td cellpadding="0" cellspacing="0" align="center"               style="text-align: center;padding-top: 20px;">                              <table cellspacing="0" cellpadding="0" style="Margin:0 auto">                <tr>                 <td align="center" width="158" height="40" bgcolor="#39A3FA"                  style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">                  <a href="<Button>"                   style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">                   View Dashboard                  </a>                 </td>                </tr>               </table>                             </td>             </tr>            </table>           </td>          </tr>         </table>        </td>       </tr>       <tr>        <td cellpadding="0" cellspacing="0"         style="padding-bottom: 20px;padding-left:10px;padding-right:10px;border-bottom: 1px solid #c3cedc;">         <table cellspacing="0" cellpadding="0">          <tr>           <td cellpadding="0" cellspacing="0"            style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy            Unlocking!           </td>          </tr>         </table>        </td>       </tr>       <tr>        <td valign="top" cellpadding="0" cellspacing="0"         style="padding-top:20px;padding-bottom: 20px;padding-left:10px;padding-right:10px;border-bottom: 1px solid #c3cedc;">         <table cellspacing="0" cellpadding="0">          <tr>           <td valign="top" cellpadding="0" cellspacing="0"            style="padding-bottom:10px;font-size:14px;font-family: Calibri,Arial;vertical-align: top;">            Note: Please            do            not reply to this email. Emails sent to this address will not be            answered</td>          </tr>          <tr>           <td valign="top" cellpadding="0" cellspacing="0"            style="padding-bottom:10px;font-size:14px;font-family: Calibri,Arial;">            Help/Feedback - Write to us at <a href="mailto:supportEmailId"             style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a>           </td>          </tr>          <tr>           <td valign="top" cellpadding="0" cellspacing="0"            style="font-size:14px;font-family: Calibri,Arial;">If you are            having            trouble viewing this email, you can update your outlook settings by <a             target="_blank"             href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error"             style="color: #39A3FA; text-decoration: underline;">clicking             here</a>.</td>          </tr>         </table>        </td>       </tr>       <tr>        <td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px 10px 22px 10px;">         <table width="100%" cellspacing="0" cellpadding="0">          <tr>           <td cellpadding="0" cellspacing="0" style="width: 50%;">            <a href="<URL>" target="_blank"             style="text-decoration: none;">             <img src="footer" style="display: block;" />            </a>           </td>             <td cellpadding="0" cellspacing="0" align="right">            <a href="https://www.linkedin.com/company/unlock-okr/" target="_blank"             style="text-decoration: none; color: #39A3FA;">             <img src="linkden" alt="linkden" />            </a>           </td>          </tr>         </table>        </td>       </tr>       <tr>        <td valign="top" cellpadding="0" cellspacing="0"         style="padding-bottom: 20px;text-align: center;vertical-align: top;" align="center">         <table width="auto" cellspacing="0" cellpadding="0" style="Margin:0 auto">          <tr>           <td cellpadding="0" cellspacing="0"            style="vertical-align:top;font-size: 14px;font-family: Calibri,Arial;padding-right: 18px;padding-top: 0;"            valign="top">            <a href="privacy" target="_blank"             style="color: #39A3FA; text-decoration: underline;">Privacy             Policy</a>           </td>             <td align="center" cellpadding="0" cellspacing="0"            style="padding-top:0px;font-size: 14px;font-family: Calibri,Arial;text-align: center;padding-right: 18px;vertical-align: top;"            valign="top">            <table width="auto" cellspacing="0" cellpadding="0" style="">             <tr>              <td cellpadding="0" cellspacing="0" style="padding-top: 8px;">                 <img style="display:block;" src="dot" alt="sep" />              </td>             </tr>            </table>           </td>           <td cellpadding="0" cellspacing="0"            style="font-size: 14px;font-family: Calibri,Arial;padding-right: 18px;vertical-align:top;"            valign="top">            <a href="terming" target="_blank"             style="color: #39A3FA; text-decoration: underline;">Terms of Use</a>           </td>           <!-- <td align="center" cellpadding="0" cellspacing="0" -->            <!-- style="padding-top:0px;font-size: 14px;font-family: Calibri,Arial;text-align: center;padding-right: 18px;vertical-align: top;" -->            <!-- valign="top"> -->            <!-- <table width="auto" cellspacing="0" cellpadding="0" style=""> -->             <!-- <tr> -->              <!-- <td cellpadding="0" cellspacing="0" style="padding-top: 8px;"> -->                 <!-- <img style="display:block;" src="dot" alt="sep" /> -->              <!-- </td> -->             <!-- </tr> -->            <!-- </table> -->           <!-- </td> -->                      <!-- <td valign="top" cellpadding="0" cellspacing="0" -->            <!-- style="font-size: 14px;font-family: Calibri,Arial;padding-right: 18px;vertical-align:top;"> -->            <!-- <a href="contact" target="_blank" -->             <!-- style="color: #39A3FA; text-decoration: underline;">Contacts</a> -->           <!-- </td> -->           <!-- <td align="center" cellpadding="0" cellspacing="0" -->            <!-- style="padding-top:0px;font-size: 14px;font-family: Calibri,Arial;text-align: center;padding-right: 18px;vertical-align: top;" -->            <!-- valign="top"> -->            <!-- <table width="auto" cellspacing="0" cellpadding="0" style=""> -->             <!-- <tr> -->              <!-- <td cellpadding="0" cellspacing="0" style="padding-top: 8px;"> -->                 <!-- <img style="display:block;" src="dot" alt="sep" /> -->              <!-- </td> -->             <!-- </tr> -->            <!-- </table> -->           <!-- </td> -->           <!-- <td valign="top" cellpadding="0" cellspacing="0" -->            <!-- style="font-size: 14px;vertical-align:top;font-family: Calibri,Arial;"> -->            <!-- <a href="technicalSupport" target="_blank" -->             <!-- style="color: #39A3FA; text-decoration: underline;">Technical -->             <!-- Support</a> -->           <!-- </td> -->          </tr>         </table>        </td>       </tr>      </table>     </td>    </tr>    <tr>     <td cellspacing="0" cellpadding="0" width="100%" bgcolor="#F1F3F4" align="center"      style="padding:10px ;text-align: center;background-color: #F1F3F4;font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">      &copy; year Infopro Learning, 103 Morgan Lane, Suite 102, Plainsboror, NJ, USA. All rights reserved     </td>    </tr>   </table>  </body>', 331, CAST(N'2021-03-30T07:48:47.727' AS DateTime), 1)
END 
END
GO

IF (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = N'dbo' AND  TABLE_NAME = N'MailerTemplate'))
BEGIN
IF NOT EXISTS(SELECT TOP 1 * FROM [MailerTemplate] where [TemplateName]='Draft OKR Interim Message After 3 days')
BEGIN

INSERT [dbo].[MailerTemplate] ([TemplateName], [TemplateCode], [Subject], [Body], [CreatedBy], [CreatedOn], [isActive]) VALUES (N'Draft OKR Interim Message After 3 days', N'DIM', N'<username>, pick up your incomplete OKRs from where you left last time', '<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">  <!--[if IE]>  <html xmlns="http://www.w3.org/1999/xhtml" class="ie">     <![endif]-->  <!--[if !IE]><!-->  <html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">   <!--<![endif]-->   <head>    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">     <title/>     <meta http-equiv="Content-Type" content="text/html; charset=utf-8">      <!--[if !mso]><!-->      <meta http-equiv="X-UA-Compatible" content="IE=edge">       <!--<![endif]-->       <meta name="viewport" content="width=device-width">        <title>When Anurag accepts email to john</title>        <style>    body {     -webkit-text-size-adjust: 100%;     margin: 0;     padding: 0;     border: 0px;     font-family: Calibri;     font-weight: 400;     font-size: 16px;    }      table,    tr,    td {     margin: 0px;     padding: 0px;    }   </style>       </head>       <!--[if mso]>        <body class="mso" style="padding:0px;margin: 0px;">           <![endif]-->       <!--[if !mso]><!-->       <body style="padding:0px;margin: 0px;">        <!--<![endif]-->        <!--[if !mso]><!-->        <table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"    style="background: #EEF5FF; Margin: 0 auto; padding:0px;">         <!--<![endif]-->         <!--[if (mso)|(IE)]>                   <table class="wrapper" width="100%" align="center"  style="background: #EEF5FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->         <tr>          <td cellspacing="0" cellpadding="0" width="100%">           <img src="topBar" width="100%" style="display: block;" />          </td>         </tr>         <tr>          <td cellspacing="0" cellpadding="0">           <table align="center" width="600" cellspacing="0" cellpadding="0"       style="margin: 0px auto; color: #292929; font-weight: normal; ">            <tr>             <td cellpadding="0" cellspacing="0" style="padding: 20px 0 40px;">              <table width="100%" cellspacing="0" cellpadding="0">               <tr>                <td style="width: 50%;">                 <a href="<URL>" target="_blank"             style="text-decoration: none;">             <img src="logo" style=" display: block;" />                  </a>                 </td>                 <td style="text-align: right; vertical-align: bottom; font-family: Calibri; ">                  <a href="<URL>" target="_blank"             style="text-decoration: none; color: #39A3FA;">             <img src="loggedInButton" alt="arrow" />                   </a>                  </td>                 </tr>                </table>               </td>              </tr>              <tr>               <td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;">                <table width="100%" cellspacing="0" cellpadding="0"          style="background-color: #ffffff;  border-radius: 6px;">                 <tr>                  <td cellpadding="0" cellspacing="0" style="padding: 26px 0px 21px;">                   <table width="100%" cellspacing="0" cellpadding="0">                    <tr>                     <td valign="top" cellpadding="0" cellspacing="0"               style="padding-left:30px;padding-right: 28px;">                      <table width="100%" cellspacing="0" cellpadding="0">                       <tr>                        <td valign="top" width="60%" cellpadding="0" cellspacing="0"                  style="width:60%">                         <table width="100%" cellspacing="0" cellpadding="0">                          <tr>                           <td align="left" cellpadding="0" cellspacing="0"                     style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;text-align: left;">                     Hello <strong>name</strong>,                    </td>                          </tr>                          <tr>                           <td align="left" cellpadding="0" cellspacing="0"                     style="font-size:16px;line-height:21px;color:#292929;font-family: Calibri,Arial;padding-top:19px;text-align: left;">                     Some of your <strong>OKRs</strong> are in                     draft mode, and                     unless                     you finalize them, they will be archived                     when the planning session ends                    </td>                          </tr>                          <tr>                           <td cellpadding="0" cellspacing="0" align="left"                     style="text-align: left;padding-top: 28px;">                            <table cellspacing="0" cellpadding="0"                      style="">                             <tr>                              <td align="center" width="181"                        height="40" bgcolor="#39A3FA"                        style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">                               <a href="<Button>"                         style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">                         View Dashboard                        </a>                               </td>                              </tr>                             </table>                            </td>                           </tr>                          </table>                         </td>                         <td valign="top" cellpadding="0" cellspacing="0"                  align="right" style="text-align: right;padding-top:8px">                          <img width="206" height="186"                   src="messageInterm" alt="hand-shake"                   style="display:block;max-width:100%;padding: 0px;margin: 0px">                          </td>                         </tr>                        </table>                       </td>                      </tr>                     </table>                    </td>                   </tr>                  </table>                 </td>                </tr>                <tr>                 <td cellpadding="0" cellspacing="0"         style="padding-bottom: 20px;padding-left:10px;padding-right:10px;border-bottom: 1px solid #c3cedc;">                  <table cellspacing="0" cellpadding="0">                   <tr>                    <td cellpadding="0" cellspacing="0"            style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Sincerely,           </td>                   </tr>                   <tr>                    <td cellpadding="0" cellspacing="0"            style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Unlock:OKR Team           </td>                   </tr>                  </table>                 </td>                </tr>                <tr>                 <td valign="top" cellpadding="0" cellspacing="0"         style="padding-top:20px;padding-bottom: 20px;padding-left:10px;padding-right:10px;border-bottom: 1px solid #c3cedc;">                  <table cellspacing="0" cellpadding="0">                   <tr>                    <td valign="top" cellpadding="0" cellspacing="0"            style="padding-bottom:10px;font-size:14px;font-family: Calibri,Arial;vertical-align: top;">            Note: Please            do            not reply to this email. Emails sent to this address will not be            answered.</td>                   </tr>                   <tr>                    <td valign="top" cellpadding="0" cellspacing="0"            style="padding-bottom:10px;font-size:14px;font-family: Calibri,Arial;">            Help/Feedback - Write to us at <a href="mailto:supportEmailId"             style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a>                    </td>                   </tr>                   <tr>                    <td valign="top" cellpadding="0" cellspacing="0"            style="font-size:14px;font-family: Calibri,Arial;">If you are            having            trouble viewing this email, you can update your outlook settings by <a             target="_blank"             href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error"             style="color: #39A3FA; text-decoration: underline;">clicking             here</a>.</td>                   </tr>                  </table>                 </td>                </tr>                <tr>                 <td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px 10px 22px 10px;">                  <table width="100%" cellspacing="0" cellpadding="0">                   <tr>                    <td cellpadding="0" cellspacing="0" style="width: 50%;">                     <a href="<URL>" target="_blank"             style="text-decoration: none;">             <img src="footer" style="display: block;" />                      </a>                     </td>                     <td cellpadding="0" cellspacing="0" align="right">                      <a href="https://www.linkedin.com/company/unlock-okr/" target="_blank"             style="text-decoration: none; color: #39A3FA;">                       <img src="linkden" alt="linkden" />                      </a>                     </td>                    </tr>                   </table>                  </td>                 </tr>                 <tr>                  <td valign="top" cellpadding="0" cellspacing="0"         style="padding-bottom: 20px;text-align: center;vertical-align: top;" align="center">                   <table width="auto" cellspacing="0" cellpadding="0" style="Margin:0 auto">                    <tr>                     <td cellpadding="0" cellspacing="0"            style="vertical-align:top;font-size: 14px;font-family: Calibri,Arial;padding-right: 18px;padding-top: 0;"            valign="top">                      <a href="privacy" target="_blank"             style="color: #39A3FA; text-decoration: underline;">Privacy             Policy</a>                     </td>                     <td align="center" cellpadding="0" cellspacing="0"            style="padding-top:0px;font-size: 14px;font-family: Calibri,Arial;text-align: center;padding-right: 18px;vertical-align: top;"            valign="top">                      <table width="auto" cellspacing="0" cellpadding="0" style="">                       <tr>                        <td cellpadding="0" cellspacing="0" style="padding-top: 8px;">                         <img style="display:block;" src="dot" alt="sep" />                        </td>                       </tr>                      </table>                     </td>                     <td cellpadding="0" cellspacing="0"            style="font-size: 14px;font-family: Calibri,Arial;padding-right: 18px;vertical-align:top;"            valign="top">                      <a href="terming" target="_blank"             style="color: #39A3FA; text-decoration: underline;">Terms of Use</a>                     </td>                     <!-- <td align="center" cellpadding="0" cellspacing="0" -->                     <!-- style="padding-top:0px;font-size: 14px;font-family: Calibri,Arial;text-align: center;padding-right: 18px;vertical-align: top;" -->                     <!-- valign="top"> -->                     <!-- <table width="auto" cellspacing="0" cellpadding="0" style=""> -->                     <!-- <tr> -->                     <!-- <td cellpadding="0" cellspacing="0" style="padding-top: 8px;"> -->                     <!-- <img style="display:block;" src="dot" alt="sep" /> -->                     <!-- </td> -->                     <!-- </tr> -->                     <!-- </table> -->                     <!-- </td> -->                     <!-- <td valign="top" cellpadding="0" cellspacing="0" -->                     <!-- style="font-size: 14px;font-family: Calibri,Arial;padding-right: 18px;vertical-align:top;"> -->                     <!-- <a href="contact" target="_blank" -->                     <!-- style="color: #39A3FA; text-decoration: underline;">Contacts</a> -->                     <!-- </td> -->                     <!-- <td align="center" cellpadding="0" cellspacing="0" -->                     <!-- style="padding-top:0px;font-size: 14px;font-family: Calibri,Arial;text-align: center;padding-right: 18px;vertical-align: top;" -->                     <!-- valign="top"> -->                     <!-- <table width="auto" cellspacing="0" cellpadding="0" style=""> -->                     <!-- <tr> -->                     <!-- <td cellpadding="0" cellspacing="0" style="padding-top: 8px;"> -->                     <!-- <img style="display:block;" src="dot" alt="sep" /> -->                     <!-- </td> -->                     <!-- </tr> -->                     <!-- </table> -->                     <!-- </td> -->                     <!-- <td valign="top" cellpadding="0" cellspacing="0" -->                     <!-- style="font-size: 14px;vertical-align:top;font-family: Calibri,Arial;"> -->                     <!-- <a href="technicalSupport" target="_blank" -->                     <!-- style="color: #39A3FA; text-decoration: underline;">Technical -->                     <!-- Support</a> -->                     <!-- </td> -->                    </tr>                   </table>                  </td>                 </tr>                </table>               </td>              </tr>              <tr>               <td cellspacing="0" cellpadding="0" width="100%" bgcolor="#F1F3F4" align="center"      style="padding:10px ;text-align: center;background-color: #F1F3F4;font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">      &copy; year Infopro Learning, 103 Morgan Lane, Suite 102, Plainsboror, NJ, USA. All rights reserved     </td>              </tr>             </table>            </body>', 331, CAST(N'2021-03-31T07:48:47.727' AS DateTime), 1)
END 
END
GO

IF (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = N'dbo' AND  TABLE_NAME = N'NotificationType'))
BEGIN
IF NOT EXISTS(SELECT TOP 1 * FROM [NotificationType] where [Notification]='Draft OKR')
BEGIN
INSERT [dbo].[NotificationType] ([Notification], [CreatedOn], [isdeleted], [NotificationCode]) VALUES (N'Draft OKR', CAST(N'2021-03-30T07:48:47.727' AS DateTime), 0, N'DOKR')
END 
END
GO



IF NOT EXISTS(SELECT TOP 1 * FROM [MailerTemplate] where [TemplateCode]='AK')
BEGIN
Insert into MailerTemplate Values('Assignment of KR','AK','Assignment to KR','<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">  <!--[if IE]>  <html xmlns="http://www.w3.org/1999/xhtml" class="ie">     <![endif]-->  <!--[if !IE]><!-->  <html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">  <!--<![endif]-->    <head>   <meta http-equiv="Content-Type" content="text/html; charset=utf-8">   <title></title>   <meta http-equiv="Content-Type" content="text/html; charset=utf-8">   <!--[if !mso]><!-->   <meta http-equiv="X-UA-Compatible" content="IE=edge">   <!--<![endif]-->   <meta name="viewport" content="width=device-width">   <title>Align and Assign</title>   <style>    body {     -webkit-text-size-adjust: 100%;     margin: 0;     padding: 0;     border: 0px;     font-family: Calibri;     font-weight: 400;     font-size: 16px;    }      table,    tr,    td {     margin: 0px;     padding: 0px;    }   </style>  </head>    <!--[if mso]>        <body class="mso" style="padding:0px;margin: 0px;">           <![endif]-->  <!--[if !mso]><!-->    <body style="padding:0px;margin: 0px;">   <!--<![endif]-->     <!--[if !mso]><!-->   <table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"    style="background: #EEF5FF; Margin: 0 auto; padding:0px;">    <!--<![endif]-->    <!--[if (mso)|(IE)]>                   <table class="wrapper" width="100%" align="center"  style="background: #EEF5FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->    <tr>     <td cellspacing="0" cellpadding="0" width="100%">      <img src="topBar" width="100%" style="display: block;" />     </td>    </tr>    <tr>     <td cellspacing="0" cellpadding="0">      <table align="center" width="600" cellspacing="0" cellpadding="0"       style="margin: 0px auto; color: #292929; font-weight: normal; ">       <tr>        <td cellpadding="0" cellspacing="0" style="padding: 20px 0 40px;">         <table width="100%" cellspacing="0" cellpadding="0">          <tr>           <td style="width: 50%;">            <a href="<URL>" target="_blank"             style="text-decoration: none;">             <img src="logo" style=" display: block;" />            </a>           </td>             <td style="text-align: right; vertical-align: bottom; font-family: Calibri; ">            <a href="<URL>" target="_blank"             style="text-decoration: none; color: #39A3FA;">             <img src="login" alt="arrow" />            </a>           </td>          </tr>         </table>        </td>       </tr>       <tr>        <td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;">         <table width="100%" cellspacing="0" cellpadding="0"          style="background-color: #ffffff;  border-radius: 6px;">          <tr>           <td cellpadding="0" cellspacing="0" style="padding: 33px 38px 21px;">            <table width="100%" cellspacing="0" cellpadding="0">             <tr>              <td align="left" cellpadding="0" cellspacing="0"               style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 27px;text-align: left;">               Hello <strong>Contri</strong>,              </td>             </tr>             <tr>              <td valign="top" cellpadding="0" cellspacing="0">               <table width="100%" cellspacing="0" cellpadding="0">                <tr>                 <td align="left" cellpadding="0" cellspacing="0"                  style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 27px;text-align: left;">                  user values that you are the best person to help                  him achieve "<a href="tinggg"                   traget="_blank"                   style="font-size:16px;font-family: Calibri,Arial;font-weight:bold;color: #39A3FA;text-decoration: none;">KeyDescription</a>".                 </td>                </tr>                <tr>                 <td align="left" cellpadding="0" cellspacing="0"                  style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 27px;text-align: left;">                  If you agree with user and can help, why not                  <a href="<GoTo>"                   traget="_blank"                   style="font-size:16px;font-family: Calibri,Arial;color: #39A3FA;text-decoration: underline;">accept</a>                  this                  immediately?                 </td>                </tr>                <tr>                 <td align="left" cellpadding="0" cellspacing="0"                  style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;text-align: left;">                  If you cant help user, you can let them know by                  <a href="<abcd>"                   traget="_blank"                   style="font-size:16px;font-family: Calibri,Arial;color: #39A3FA;text-decoration: underline;">denying</a>                  here.                 </td>                </tr>                  <tr>                 <td cellpadding="0" cellspacing="0" align="left"                  style="text-align: left;padding-top: 20px;">                                     <table cellspacing="0" cellpadding="0" style="">                   <tr>                    <td align="center" width="181" height="40"                     bgcolor="#39A3FA"                     style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">                     <a href="<bdbdbdb>"                      style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">                      View My OKRs                     </a>                    </td>                   </tr>                  </table>                                   </td>                </tr>               </table>                </td>             </tr>                  </table>           </td>          </tr>         </table>        </td>       </tr>       <tr>        <td cellpadding="0" cellspacing="0"         style="padding-bottom: 20px;padding-left:10px;padding-right:10px;border-bottom: 1px solid #c3cedc;">         <table cellspacing="0" cellpadding="0">          <tr>           <td cellpadding="0" cellspacing="0"            style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy            Unlocking!           </td>          </tr>         </table>        </td>       </tr>       <tr>        <td valign="top" cellpadding="0" cellspacing="0"         style="padding-top:20px;padding-bottom: 20px;padding-left:10px;padding-right:10px;border-bottom: 1px solid #c3cedc;">         <table cellspacing="0" cellpadding="0">          <tr>           <td valign="top" cellpadding="0" cellspacing="0"            style="padding-bottom:10px;font-size:14px;font-family: Calibri,Arial;vertical-align: top;">            Note: Please            do            not reply to this email. Emails sent to this address will not be            answered</td>          </tr>          <tr>           <td valign="top" cellpadding="0" cellspacing="0"            style="padding-bottom:10px;font-size:14px;font-family: Calibri,Arial;">            Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com"             style="color: #39A3FA; text-decoration: underline;">supportEmailId</a>           </td>          </tr>          <tr>           <td valign="top" cellpadding="0" cellspacing="0"            style="font-size:14px;font-family: Calibri,Arial;">If you are            having            trouble viewing this email, you can update your outlook settings by <a             target="_blank"             href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error"             style="color: #39A3FA; text-decoration: underline;">clicking             here</a>.</td>          </tr>         </table>        </td>       </tr>       <tr>        <td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px 10px 22px 10px;">         <table width="100%" cellspacing="0" cellpadding="0">          <tr>           <td cellpadding="0" cellspacing="0" style="width: 50%;">            <a href="<URL>" target="_blank"             style="text-decoration: none;">             <img src="footer" style="display: block;" />            </a>           </td>             <td cellpadding="0" cellspacing="0" align="right">            <a href="https://www.linkedin.com/company/unlock-okr/" target="_blank"             style="text-decoration: none; color: #39A3FA;">             <img src="linkden" alt="linkden" />            </a>           </td>          </tr>         </table>        </td>       </tr>       <tr>        <td valign="top" cellpadding="0" cellspacing="0"         style="padding-bottom: 20px;text-align: center;vertical-align: top;" align="center">         <table width="auto" cellspacing="0" cellpadding="0" style="Margin:0 auto">          <tr>           <td cellpadding="0" cellspacing="0"            style="vertical-align:top;font-size: 14px;font-family: Calibri,Arial;padding-right: 18px;padding-top: 0;"            valign="top">            <a href="privacy" target="_blank"             style="color: #39A3FA; text-decoration: underline;">Privacy             Policy</a>           </td>             <td align="center" cellpadding="0" cellspacing="0"            style="padding-top:0px;font-size: 14px;font-family: Calibri,Arial;text-align: center;padding-right: 18px;vertical-align: top;"            valign="top">            <table width="auto" cellspacing="0" cellpadding="0" style="">             <tr>              <td cellpadding="0" cellspacing="0" style="padding-top: 8px;">                 <img style="display:block;" src="dot" alt="sep" />              </td>             </tr>            </table>           </td>           <td cellpadding="0" cellspacing="0"            style="font-size: 14px;font-family: Calibri,Arial;padding-right: 18px;vertical-align:top;"            valign="top">            <a href="terming" target="_blank"             style="color: #39A3FA; text-decoration: underline;">Terms of Use</a>           </td>           <!-- <td align="center" cellpadding="0" cellspacing="0" -->            <!-- style="padding-top:0px;font-size: 14px;font-family: Calibri,Arial;text-align: center;padding-right: 18px;vertical-align: top;" -->            <!-- valign="top"> -->            <!-- <table width="auto" cellspacing="0" cellpadding="0" style=""> -->             <!-- <tr> -->              <!-- <td cellpadding="0" cellspacing="0" style="padding-top: 8px;"> -->                 <!-- <img style="display:block;" src="dot" alt="sep" /> -->              <!-- </td> -->             <!-- </tr> -->            <!-- </table> -->           <!-- </td> -->           <!-- <td valign="top" cellpadding="0" cellspacing="0" -->            <!-- style="font-size: 14px;font-family: Calibri,Arial;padding-right: 18px;vertical-align:top;"> -->            <!-- <a href="https://okr-qa-v2.compunnel.com/terms-of-use" target="_blank" -->             <!-- style="color: #39A3FA; text-decoration: underline;">Contacts</a> -->           <!-- </td> -->           <!-- <td align="center" cellpadding="0" cellspacing="0" -->            <!-- style="padding-top:0px;font-size: 14px;font-family: Calibri,Arial;text-align: center;padding-right: 18px;vertical-align: top;" -->            <!-- valign="top"> -->            <!-- <table width="auto" cellspacing="0" cellpadding="0" style=""> -->             <!-- <tr> -->              <!-- <td cellpadding="0" cellspacing="0" style="padding-top: 8px;"> -->                 <!-- <img style="display:block;" src="./images/dot.png" alt="sep" /> -->              <!-- </td> -->             <!-- </tr> -->            <!-- </table> -->           <!-- </td> -->           <!-- <td valign="top" cellpadding="0" cellspacing="0" -->            <!-- style="font-size: 14px;vertical-align:top;font-family: Calibri,Arial;"> -->            <!-- <a href="https://okr-qa-v2.compunnel.com/terms-of-use" target="_blank" -->             <!-- style="color: #39A3FA; text-decoration: underline;">Technical -->             <!-- Support</a> -->           <!-- </td> -->          </tr>         </table>        </td>       </tr>        </table>     </td>    </tr>    <tr>     <td cellspacing="0" cellpadding="0" width="100%" bgcolor="#F1F3F4" align="center"      style="padding:10px ;text-align: center;background-color: #F1F3F4;font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">      &copy; year Infopro Learning, 103 Morgan Lane, Suite 102, Plainsboror, NJ, USA. All rights reserved     </td>    </tr>   </table>  </body>',620,GETDATE(),1)
END
GO

IF NOT EXISTS(SELECT TOP 1 * FROM [MailerTemplate] where [TemplateCode]='AKR')
BEGIN
Insert into MailerTemplate Values('Alignment of KR','AKR','Alignment of KR','<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">  <!--[if IE]>  <html xmlns="http://www.w3.org/1999/xhtml" class="ie">     <![endif]-->  <!--[if !IE]><!-->  <html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">  <!--<![endif]-->    <head>   <meta http-equiv="Content-Type" content="text/html; charset=utf-8">   <title></title>   <meta http-equiv="Content-Type" content="text/html; charset=utf-8">   <!--[if !mso]><!-->   <meta http-equiv="X-UA-Compatible" content="IE=edge">   <!--<![endif]-->   <meta name="viewport" content="width=device-width">   <title>Align and Assign</title>   <style>    body {     -webkit-text-size-adjust: 100%;     margin: 0;     padding: 0;     border: 0px;     font-family: Calibri;     font-weight: 400;     font-size: 16px;    }      table,    tr,    td {     margin: 0px;     padding: 0px;    }   </style>  </head>    <!--[if mso]>        <body class="mso" style="padding:0px;margin: 0px;">           <![endif]-->  <!--[if !mso]><!-->    <body style="padding:0px;margin: 0px;">   <!--<![endif]-->     <!--[if !mso]><!-->   <table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"    style="background: #EEF5FF; Margin: 0 auto; padding:0px;">    <!--<![endif]-->    <!--[if (mso)|(IE)]>                   <table class="wrapper" width="100%" align="center"  style="background: #EEF5FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->    <tr>     <td cellspacing="0" cellpadding="0" width="100%">      <img src="topBar" width="100%" style="display: block;" />     </td>    </tr>    <tr>     <td cellspacing="0" cellpadding="0">      <table align="center" width="600" cellspacing="0" cellpadding="0"       style="margin: 0px auto; color: #292929; font-weight: normal; ">       <tr>        <td cellpadding="0" cellspacing="0" style="padding: 20px 0 40px;">         <table width="100%" cellspacing="0" cellpadding="0">          <tr>           <td style="width: 50%;">            <a href="<URL>" target="_blank"             style="text-decoration: none;">             <img src="logo" style=" display: block;" />            </a>           </td>             <td style="text-align: right; vertical-align: bottom; font-family: Calibri; ">            <a href="<URL>" target="_blank"             style="text-decoration: none; color: #39A3FA;">             <img src="login" alt="arrow" />            </a>           </td>          </tr>         </table>        </td>       </tr>       <tr>        <td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;">         <table width="100%" cellspacing="0" cellpadding="0"          style="background-color: #ffffff;  border-radius: 6px;">          <tr>           <td cellpadding="0" cellspacing="0" style="padding: 33px 38px 21px;">            <table width="100%" cellspacing="0" cellpadding="0">             <tr>              <td align="left" cellpadding="0" cellspacing="0"               style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 27px;text-align: left;">               Hello <strong>Source</strong>,              </td>             </tr>             <tr>              <td valign="top" cellpadding="0" cellspacing="0">               <table width="100%" cellspacing="0" cellpadding="0">                <tr>                 <td align="left" cellpadding="0" cellspacing="0"                  style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 27px;text-align: left;">                  user values that you are the best person to help                  him achieve "<a href="tinggg"                   traget="_blank"                   style="font-size:16px;font-family: Calibri,Arial;font-weight:bold;color: #39A3FA;text-decoration: none;">KeyDescription</a>".                 </td>                </tr>                                                <tr>                 <td cellpadding="0" cellspacing="0" align="left"                  style="text-align: left;padding-top: 20px;">                                     <table cellspacing="0" cellpadding="0" style="">                   <tr>                    <td align="center" width="181" height="40"                     bgcolor="#39A3FA"                     style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">                     <a href="<abcdefg>"                      style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">                      View My OKRs                     </a>                    </td>                   </tr>                  </table>                                   </td>                </tr>               </table>                </td>             </tr>                  </table>           </td>          </tr>         </table>        </td>       </tr>       <tr>        <td cellpadding="0" cellspacing="0"         style="padding-bottom: 20px;padding-left:10px;padding-right:10px;border-bottom: 1px solid #c3cedc;">         <table cellspacing="0" cellpadding="0">          <tr>           <td cellpadding="0" cellspacing="0"            style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy            Unlocking!           </td>          </tr>         </table>        </td>       </tr>       <tr>        <td valign="top" cellpadding="0" cellspacing="0"         style="padding-top:20px;padding-bottom: 20px;padding-left:10px;padding-right:10px;border-bottom: 1px solid #c3cedc;">         <table cellspacing="0" cellpadding="0">          <tr>           <td valign="top" cellpadding="0" cellspacing="0"            style="padding-bottom:10px;font-size:14px;font-family: Calibri,Arial;vertical-align: top;">            Note: Please            do            not reply to this email. Emails sent to this address will not be            answered</td>          </tr>          <tr>           <td valign="top" cellpadding="0" cellspacing="0"            style="padding-bottom:10px;font-size:14px;font-family: Calibri,Arial;">            Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com"             style="color: #39A3FA; text-decoration: underline;">supportEmailId</a>           </td>          </tr>          <tr>           <td valign="top" cellpadding="0" cellspacing="0"            style="font-size:14px;font-family: Calibri,Arial;">If you are            having            trouble viewing this email, you can update your outlook settings by <a             target="_blank"             href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error"             style="color: #39A3FA; text-decoration: underline;">clicking             here</a>.</td>          </tr>         </table>        </td>       </tr>       <tr>        <td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px 10px 22px 10px;">         <table width="100%" cellspacing="0" cellpadding="0">          <tr>           <td cellpadding="0" cellspacing="0" style="width: 50%;">            <a href="<URL>" target="_blank"             style="text-decoration: none;">             <img src="footer" style="display: block;" />            </a>           </td>             <td cellpadding="0" cellspacing="0" align="right">            <a href="https://www.linkedin.com/company/unlock-okr/" target="_blank"             style="text-decoration: none; color: #39A3FA;">             <img src="linkden" alt="linkden" />            </a>           </td>          </tr>         </table>        </td>       </tr>       <tr>        <td valign="top" cellpadding="0" cellspacing="0"         style="padding-bottom: 20px;text-align: center;vertical-align: top;" align="center">         <table width="auto" cellspacing="0" cellpadding="0" style="Margin:0 auto">          <tr>           <td cellpadding="0" cellspacing="0"            style="vertical-align:top;font-size: 14px;font-family: Calibri,Arial;padding-right: 18px;padding-top: 0;"            valign="top">            <a href="privacy" target="_blank"             style="color: #39A3FA; text-decoration: underline;">Privacy             Policy</a>           </td>             <td align="center" cellpadding="0" cellspacing="0"            style="padding-top:0px;font-size: 14px;font-family: Calibri,Arial;text-align: center;padding-right: 18px;vertical-align: top;"            valign="top">            <table width="auto" cellspacing="0" cellpadding="0" style="">             <tr>              <td cellpadding="0" cellspacing="0" style="padding-top: 8px;">                 <img style="display:block;" src="dot" alt="sep" />              </td>             </tr>            </table>           </td>           <td cellpadding="0" cellspacing="0"            style="font-size: 14px;font-family: Calibri,Arial;padding-right: 18px;vertical-align:top;"            valign="top">            <a href="terming" target="_blank"             style="color: #39A3FA; text-decoration: underline;">Terms of Use</a>           </td>           <!-- <td align="center" cellpadding="0" cellspacing="0" -->            <!-- style="padding-top:0px;font-size: 14px;font-family: Calibri,Arial;text-align: center;padding-right: 18px;vertical-align: top;" -->            <!-- valign="top"> -->            <!-- <table width="auto" cellspacing="0" cellpadding="0" style=""> -->             <!-- <tr> -->              <!-- <td cellpadding="0" cellspacing="0" style="padding-top: 8px;"> -->                 <!-- <img style="display:block;" src="dot" alt="sep" /> -->              <!-- </td> -->             <!-- </tr> -->            <!-- </table> -->           <!-- </td> -->           <!-- <td valign="top" cellpadding="0" cellspacing="0" -->            <!-- style="font-size: 14px;font-family: Calibri,Arial;padding-right: 18px;vertical-align:top;"> -->            <!-- <a href="https://okr-qa-v2.compunnel.com/terms-of-use" target="_blank" -->             <!-- style="color: #39A3FA; text-decoration: underline;">Contacts</a> -->           <!-- </td> -->           <!-- <td align="center" cellpadding="0" cellspacing="0" -->            <!-- style="padding-top:0px;font-size: 14px;font-family: Calibri,Arial;text-align: center;padding-right: 18px;vertical-align: top;" -->            <!-- valign="top"> -->            <!-- <table width="auto" cellspacing="0" cellpadding="0" style=""> -->             <!-- <tr> -->              <!-- <td cellpadding="0" cellspacing="0" style="padding-top: 8px;"> -->                 <!-- <img style="display:block;" src="./images/dot.png" alt="sep" /> -->              <!-- </td> -->             <!-- </tr> -->            <!-- </table> -->           <!-- </td> -->           <!-- <td valign="top" cellpadding="0" cellspacing="0" -->            <!-- style="font-size: 14px;vertical-align:top;font-family: Calibri,Arial;"> -->            <!-- <a href="https://okr-qa-v2.compunnel.com/terms-of-use" target="_blank" -->             <!-- style="color: #39A3FA; text-decoration: underline;">Technical -->             <!-- Support</a> -->           <!-- </td> -->          </tr>         </table>        </td>       </tr>        </table>     </td>    </tr>    <tr>     <td cellspacing="0" cellpadding="0" width="100%" bgcolor="#F1F3F4" align="center"      style="padding:10px ;text-align: center;background-color: #F1F3F4;font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">      &copy; year Infopro Learning, 103 Morgan Lane, Suite 102, Plainsboror, NJ, USA. All rights reserved     </td>    </tr>   </table>  </body>',620,GETDATE(),1)
END
GO

IF NOT EXISTS(SELECT TOP 1 * FROM [MailerTemplate] where [TemplateCode]='PC')
BEGIN
Insert into MailerTemplate Values('Pending Email to Contributors','PC','Weekly Summary of your assigned objectives and key results','<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">  <!--[if IE]>  <html xmlns="http://www.w3.org/1999/xhtml" class="ie">     <![endif]-->  <!--[if !IE]><!-->  <html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">  <!--<![endif]-->    <head>   <meta http-equiv="Content-Type" content="text/html; charset=utf-8">   <title></title>   <meta http-equiv="Content-Type" content="text/html; charset=utf-8">   <!--[if !mso]><!-->   <meta http-equiv="X-UA-Compatible" content="IE=edge">   <!--<![endif]-->   <meta name="viewport" content="width=device-width">   <title>Some assignements</title>   <style>    body {     -webkit-text-size-adjust: 100%;     margin: 0;     padding: 0;     border: 0px;     font-family: Calibri;     font-weight: 400;     font-size: 16px;    }      table,    tr,    td {     margin: 0px;     padding: 0px;    }   </style>  </head>    <!--[if mso]>        <body class="mso" style="padding:0px;margin: 0px;">           <![endif]-->  <!--[if !mso]><!-->    <body style="padding:0px;margin: 0px;">   <!--<![endif]-->     <!--[if !mso]><!-->   <table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"    style="background: #EEF5FF; Margin: 0 auto; padding:0px;">    <!--<![endif]-->    <!--[if (mso)|(IE)]>                   <table class="wrapper" width="100%" align="center"  style="background: #EEF5FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->    <tr>     <td cellspacing="0" cellpadding="0" width="100%">      <img src="topBar" width="100%" style="display: block;" />     </td>    </tr>    <tr>     <td cellspacing="0" cellpadding="0">      <table align="center" width="600" cellspacing="0" cellpadding="0"       style="margin: 0px auto; color: #292929; font-weight: normal; ">       <tr>        <td cellpadding="0" cellspacing="0" style="padding: 20px 0 40px;">         <table width="100%" cellspacing="0" cellpadding="0">          <tr>           <td style="width: 50%;">            <a href="<URL>" target="_blank"             style="text-decoration: none;">             <img src="logo" style=" display: block;" />            </a>           </td>             <td style="text-align: right; vertical-align: bottom; font-family: Calibri; ">            <a href="<URL>" target="_blank"             style="text-decoration: none; color: #39A3FA;">             <img src="login" alt="arrow" />            </a>           </td>          </tr>         </table>        </td>       </tr>       <tr>        <td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;">         <table width="100%" cellspacing="0" cellpadding="0"          style="background-color: #ffffff;  border-radius: 6px;">          <tr>           <td cellpadding="0" cellspacing="0" style="padding: 33px 0px 21px;">            <table width="100%" cellspacing="0" cellpadding="0">             <tr>              <td align="left" cellpadding="0" cellspacing="0"               style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-left:38px;padding-right:35px;text-align: left;">               Hello <strong>Contri</strong>,              </td>             </tr>             <tr>              <td valign="top" cellpadding="0" cellspacing="0"               style="padding-left:38px;padding-right: 8px;">               <table width="100%" cellspacing="0" cellpadding="0">                <tr>                 <td valign="top" width="62%" cellpadding="0" cellspacing="0"                  style="width:62%">                  <table width="100%" cellspacing="0" cellpadding="0">                   <tr>                    <td align="left" cellpadding="0" cellspacing="0"                     style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 2px;padding-top:26px;text-align: left;">                     You had some assignements which you never                     acknowledged. Do not worry, if you forgot                     about them, you can still raise a reset                     request and accept those.                    </td>                   </tr>                   <tr>                    <td align="left" cellpadding="0" cellspacing="0"                     style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 2px;padding-top:26px;text-align: left;">                     <strong>Here is a reminder of what was                      archived for you:</strong>                    </td>                   </tr>                   <tr>                    <td valign="top" align="left" cellpadding="0"                     cellspacing="0"                     style="padding-bottom: 24px;">                     <table cellspacing="0" cellpadding="0"                      style="">                       <subordinate>                     </table>                    </td>                   </tr>                   <tr>                    <td align="left" cellpadding="0" cellspacing="0"                     style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-top:0px;text-align: left;">                       Should you wish to pick those assignment you                     can do so here.                    </td>                   </tr>                   <tr>                    <td cellpadding="0" cellspacing="0" align="left"                     style="text-align: left;padding-top: 20px;">                                            <table cellspacing="0" cellpadding="0"                      style="">                      <tr>                       <td align="center" width="181"                        height="40" bgcolor="#39A3FA"                        style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">                        <a href="<URL>"                         style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">                         Unlock Account                        </a>                       </td>                      </tr>                     </table>                                         </td>                   </tr>                  </table>                   </td>                 <td valign="top" cellpadding="0" cellspacing="0"                  align="right" style="text-align: right;padding-top:8px">                  <img src="assignments" alt="watch"                   style="display:inline-block;max-width:100%;padding: 0px;margin: 0px">                 </td>                </tr>               </table>                </td>             </tr>                  </table>           </td>          </tr>         </table>        </td>       </tr>       <tr>        <td cellpadding="0" cellspacing="0"         style="padding-bottom: 20px;padding-left:10px;padding-right:10px;border-bottom: 1px solid #c3cedc;">         <table cellspacing="0" cellpadding="0">          <tr>           <td cellpadding="0" cellspacing="0"            style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy            Unlocking!           </td>          </tr>         </table>        </td>       </tr>       <tr>        <td valign="top" cellpadding="0" cellspacing="0"         style="padding-top:20px;padding-bottom: 20px;padding-left:10px;padding-right:10px;border-bottom: 1px solid #c3cedc;">         <table cellspacing="0" cellpadding="0">          <tr>           <td valign="top" cellpadding="0" cellspacing="0"            style="padding-bottom:10px;font-size:14px;font-family: Calibri,Arial;vertical-align: top;">            Note: Please            do            not reply to this email. Emails sent to this address will not be            answered</td>          </tr>          <tr>           <td valign="top" cellpadding="0" cellspacing="0"            style="padding-bottom:10px;font-size:14px;font-family: Calibri,Arial;">            Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com"             style="color: #39A3FA; text-decoration: underline;">supportEmailId</a>           </td>          </tr>          <tr>           <td valign="top" cellpadding="0" cellspacing="0"            style="font-size:14px;font-family: Calibri,Arial;">If you are            having            trouble viewing this email, you can update your outlook settings by <a             target="_blank"             href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error"             style="color: #39A3FA; text-decoration: underline;">clicking             here</a>.</td>          </tr>         </table>        </td>       </tr>       <tr>        <td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px 10px 22px 10px;">         <table width="100%" cellspacing="0" cellpadding="0">          <tr>           <td cellpadding="0" cellspacing="0" style="width: 50%;">            <a href="<URL>" target="_blank"             style="text-decoration: none;">             <img src="footer" style="display: block;" />            </a>           </td>             <td cellpadding="0" cellspacing="0" align="right">            <a href="https://www.linkedin.com/company/unlock-okr/" target="_blank"             style="text-decoration: none; color: #39A3FA;">             <img src="linkden" alt="linkden" />            </a>           </td>          </tr>         </table>        </td>       </tr>       <tr>        <td valign="top" cellpadding="0" cellspacing="0"         style="padding-bottom: 20px;text-align: center;vertical-align: top;" align="center">         <table width="auto" cellspacing="0" cellpadding="0" style="Margin:0 auto">          <tr>           <td cellpadding="0" cellspacing="0"            style="vertical-align:top;font-size: 14px;font-family: Calibri,Arial;padding-right: 18px;padding-top: 0;"            valign="top">            <a href="policy" target="_blank"             style="color: #39A3FA; text-decoration: underline;">Privacy             Policy</a>           </td>             <td align="center" cellpadding="0" cellspacing="0"            style="padding-top:0px;font-size: 14px;font-family: Calibri,Arial;text-align: center;padding-right: 18px;vertical-align: top;"            valign="top">            <table width="auto" cellspacing="0" cellpadding="0" style="">             <tr>              <td cellpadding="0" cellspacing="0" style="padding-top: 8px;">                 <img style="display:block;" src="dot" alt="sep" />              </td>             </tr>            </table>           </td>           <td cellpadding="0" cellspacing="0"            style="font-size: 14px;font-family: Calibri,Arial;padding-right: 18px;vertical-align:top;"            valign="top">            <a href="terming" target="_blank"             style="color: #39A3FA; text-decoration: underline;">Terms of Use</a>           </td>           <!-- <td align="center" cellpadding="0" cellspacing="0" -->            <!-- style="padding-top:0px;font-size: 14px;font-family: Calibri,Arial;text-align: center;padding-right: 18px;vertical-align: top;" -->            <!-- valign="top"> -->            <!-- <table width="auto" cellspacing="0" cellpadding="0" style=""> -->             <!-- <tr> -->              <!-- <td cellpadding="0" cellspacing="0" style="padding-top: 8px;"> -->                 <!-- <img style="display:block;" src="./images/dot.png" alt="sep" /> -->              <!-- </td> -->             <!-- </tr> -->            <!-- </table> -->           <!-- </td> -->           <!-- <td valign="top" cellpadding="0" cellspacing="0" -->            <!-- style="font-size: 14px;font-family: Calibri,Arial;padding-right: 18px;vertical-align:top;"> -->            <!-- <a href="https://okr-qa-v2.compunnel.com/terms-of-use" target="_blank" -->             <!-- style="color: #39A3FA; text-decoration: underline;">Contacts</a> -->           <!-- </td> -->           <!-- <td align="center" cellpadding="0" cellspacing="0" -->            <!-- style="padding-top:0px;font-size: 14px;font-family: Calibri,Arial;text-align: center;padding-right: 18px;vertical-align: top;" -->            <!-- valign="top"> -->            <!-- <table width="auto" cellspacing="0" cellpadding="0" style=""> -->             <!-- <tr> -->              <!-- <td cellpadding="0" cellspacing="0" style="padding-top: 8px;"> -->                 <!-- <img style="display:block;" src="./images/dot.png" alt="sep" /> -->              <!-- </td> -->             <!-- </tr> -->            <!-- </table> -->           <!-- </td> -->           <!-- <td valign="top" cellpadding="0" cellspacing="0" -->            <!-- style="font-size: 14px;vertical-align:top;font-family: Calibri,Arial;"> -->            <!-- <a href="https://okr-qa-v2.compunnel.com/terms-of-use" target="_blank" -->             <!-- style="color: #39A3FA; text-decoration: underline;">Technical -->             <!-- Support</a> -->           <!-- </td> -->          </tr>         </table>        </td>       </tr>        </table>     </td>    </tr>    <tr>     <td cellspacing="0" cellpadding="0" width="100%" bgcolor="#F1F3F4" align="center"      style="padding:10px ;text-align: center;background-color: #F1F3F4;font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">      &copy; year Infopro Learning, 103 Morgan Lane, Suite 102, Plainsboror, NJ, USA. All rights reserved     </td>    </tr>   </table>  </body>',620,GETDATE(),1)
END
GO


IF NOT EXISTS(SELECT TOP 1 * FROM [MailerTemplate] where [TemplateCode]='LDS')
BEGIN
Insert into MailerTemplate Values('Summary on Last day to source of all the Pending KRs','LDS','Final Reminder to re-assign pending objectives and key results','<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">  <!--[if IE]>  <html xmlns="http://www.w3.org/1999/xhtml" class="ie">     <![endif]-->  <!--[if !IE]><!-->  <html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">   <!--<![endif]-->   <head>    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">     <title/>     <meta http-equiv="Content-Type" content="text/html; charset=utf-8">      <!--[if !mso]><!-->      <meta http-equiv="X-UA-Compatible" content="IE=edge">       <!--<![endif]-->       <meta name="viewport" content="width=device-width">        <title>Okr Assignment Complete</title>        <style>body { -webkit-text-size-adjust: 100%; margin: 0; padding: 0; border: 0px; font-family: Calibri; font-weight: 400; font-size: 16px; } table, tr, td { margin: 0px; padding: 0px; }</style>       </head>       <!--[if mso]>        <body class="mso" style="padding:0px;margin: 0px;">           <![endif]-->       <!--[if !mso]><!-->       <body style="padding:0px;margin: 0px;">        <!--<![endif]-->        <!--[if !mso]><!-->        <table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #EEF5FF; Margin: 0 auto; padding:0px;">         <!--<![endif]-->         <!--[if (mso)|(IE)]>                   <table class="wrapper" width="100%" align="center"  style="background: #EEF5FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->         <tr>          <td cellspacing="0" cellpadding="0" width="100%">           <img src="topBar" width="100%" style="display: block;"/>          </td>         </tr>         <tr>          <td cellspacing="0" cellpadding="0">           <table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; ">            <tr>             <td cellpadding="0" cellspacing="0" style="padding: 20px 0 40px;">              <table width="100%" cellspacing="0" cellpadding="0">               <tr>                <td style="width: 50%;">                 <a href="<url>" target="_blank" style="text-decoration: none;">                  <img src="logo" style=" display: block;"/>                  </a>                 </td>                 <td style="text-align: right; vertical-align: bottom; font-family: Calibri; ">                  <a href="<url>" target="_blank" style="text-decoration: none; color: #39A3FA;">                  <img src="login" alt="arrow"/>                   </a>                  </td>                 </tr>                </table>               </td>              </tr>              <tr>               <td align="left" cellpadding="0" cellspacing="0" style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 5px;">Hello              <strong>name,</strong>               </td>              </tr>              <tr>               <td align="left" cellpadding="0" cellspacing="0" style="font-size:24px;line-height:29px;color:#292929;font-family: Calibri,Arial;padding-bottom: 44px;">                <strong>Today is the last day of Planning Session</strong>               </td>              </tr>              <tr>               <td cellpadding="0" cellspacing="0" valign="middle" style="padding-bottom: 18px;">                <table cellspacing="0" cellpadding="0">                 <tr>                  <td cellpadding="0" cellspacing="0" valign="middle" style="padding-right: 10px;">                   <img style="display: block;" src="infoo" alt="info"/>                  </td>                  <td valign="middle" align="left" cellpadding="0" cellspacing="0" style="font-size:18px;line-height:18px;color:#292929;font-family: Calibri,Arial;">                   <strong>Nume Action Required</strong>                  </td>                 </tr>                </table>               </td>              </tr>              <tr>               <td cellspacing="0" cellpadding="0">                <table width="100%" cellspacing="0" cellpadding="0">                 <!--row 1 start here-->                 <Gist>                  <!--row 2 end here-->                 </table>                </td>               </tr>               <tr>                <td cellpadding="0" cellspacing="0" align="left" style="text-align: left;padding-top: 20px;">                 <table cellspacing="0" cellpadding="0" style="">                  <tr>                   <td align="center" width="136" height="40" bgcolor="#39A3FA" style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">                    <a href="<dashUrl>" style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">Take Action</a>                    </td>                   </tr>                  </table>                 </td>                </tr>                <tr>                 <td cellpadding="0" cellspacing="0" style="padding-top: 20px;padding-bottom: 20px;padding-left:10px;padding-right:10px;border-bottom: 1px solid #c3cedc;">                  <table cellspacing="0" cellpadding="0">                   <tr>                    <td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking!</td>                   </tr>                  </table>                 </td>                </tr>                <tr>                 <td valign="top" cellpadding="0" cellspacing="0" style="padding-top:20px;padding-bottom: 20px;padding-left:10px;padding-right:10px;border-bottom: 1px solid #c3cedc;">                  <table cellspacing="0" cellpadding="0">                   <tr>                    <td valign="top" cellpadding="0" cellspacing="0" style="padding-bottom:10px;font-size:14px;font-family: Calibri,Arial;vertical-align: top;">Note: Please do not reply to this email. Emails sent to this address will not be answered.</td>                   </tr>                   <tr>                    <td valign="top" cellpadding="0" cellspacing="0" style="padding-bottom:10px;font-size:14px;font-family: Calibri,Arial;">Help/Feedback - Write to us at                  <a href="mailto:<supportEmailId>" style="color: #39A3FA; text-decoration: underline;">                   <supportEmailId>                       </a>                      </td>                     </tr>                     <tr>                      <td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;">If you are having trouble viewing this email, you can update your outlook settings by                  <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.                                   </td>                     </tr>                    </table>                   </td>                  </tr>                  <tr>                   <td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px 10px 22px 10px;">                    <table width="100%" cellspacing="0" cellpadding="0">                     <tr>                      <td cellpadding="0" cellspacing="0" style="width: 50%;">                       <a href="<url>" target="_blank" style="text-decoration: none;">                   <img src="footer" style="display: block;"/>                        </a>                       </td>                       <td cellpadding="0" cellspacing="0" align="right">                        <a href="<linkedin>" target="_blank" style="text-decoration: none; color: #39A3FA;">                   <img src="linkden" alt="linkden"/>                         </a>                        </td>                       </tr>                      </table>                     </td>                    </tr>                    <tr>                     <td valign="top" cellpadding="0" cellspacing="0" style="padding-bottom: 20px;text-align: center;vertical-align: top;" align="center">                      <table width="auto" cellspacing="0" cellpadding="0" style="Margin:0 auto">                       <tr>                        <td cellpadding="0" cellspacing="0" style="vertical-align:top;font-size: 14px;font-family: Calibri,Arial;padding-right: 18px;padding-top: 0;" valign="top">                         <a href="<pri>" target="_blank" style="color: #39A3FA; text-decoration: underline;">Privacy Policy</a>                         </td>                         <td align="center" cellpadding="0" cellspacing="0" style="padding-top:0px;font-size: 14px;font-family: Calibri,Arial;text-align: center;padding-right: 18px;vertical-align: top;" valign="top">                          <table width="auto" cellspacing="0" cellpadding="0" style="">                           <tr>                            <td cellpadding="0" cellspacing="0" style="padding-top: 8px;">                             <img style="display:block;" src="dot" alt="sep"/>                            </td>                           </tr>                          </table>                         </td>                         <td cellpadding="0" cellspacing="0" style="font-size: 14px;font-family: Calibri,Arial;padding-right: 18px;vertical-align:top;" valign="top">                          <a href="<tos>" target="_blank" style="color: #39A3FA; text-decoration: underline;">Terms of Use</a>                          </td>                          <!-- <td align="center" cellpadding="0" cellspacing="0" style="padding-top:0px;font-size: 14px;font-family: Calibri,Arial;text-align: center;padding-right: 18px;vertical-align: top;" valign="top"> -->                          <!-- <table width="auto" cellspacing="0" cellpadding="0" style=""> -->                          <!-- <tr> -->                          <!-- <td cellpadding="0" cellspacing="0" style="padding-top: 8px;"> -->                          <!-- <img style="display:block;" src="dot" alt="sep"/> -->                          <!-- </td> -->                          <!-- </tr> -->                          <!-- </table> -->                          <!-- </td>  -->                          <!-- <td valign="top" cellpadding="0" cellspacing="0" style="font-size: 14px;font-family: Calibri,Arial;padding-right: 18px;vertical-align:top;"> -->                          <!-- <a href="https://okr-qa-v2.compunnel.com/terms-of-use" target="_blank" style="color: #39A3FA; text-decoration: underline;">Contacts</a> -->                          <!-- </td> -->                          <!-- <td align="center" cellpadding="0" cellspacing="0" style="padding-top:0px;font-size: 14px;font-family: Calibri,Arial;text-align: center;padding-right: 18px;vertical-align: top;" valign="top"> -->                          <!-- <table width="auto" cellspacing="0" cellpadding="0" style=""> -->                          <!-- <tr> -->                          <!-- <td cellpadding="0" cellspacing="0" style="padding-top: 8px;"> -->                          <!-- <img style="display:block;" src="images/dot.png" alt="sep"/> -->                          <!-- </td> -->                          <!-- </tr> -->                          <!-- </table> -->                          <!-- </td> -->                          <!-- <td valign="top" cellpadding="0" cellspacing="0" style="font-size: 14px;vertical-align:top;font-family: Calibri,Arial;"> -->                          <!-- <a href="https://okr-qa-v2.compunnel.com/terms-of-use" target="_blank" style="color: #39A3FA; text-decoration: underline;">Technical Support</a> -->                          <!-- </td> -->                         </tr>                        </table>                       </td>                      </tr>                     </table>                    </td>                   </tr>                   <tr>                    <td cellspacing="0" cellpadding="0" width="100%" bgcolor="#F1F3F4" align="center" style="padding:10px ;text-align: center;background-color: #F1F3F4;font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">&copy; yer Infopro Learning, 103 Morgan Lane, Suite 102, Plainsboror, NJ, USA. All rights reserved</td>                   </tr>                  </table>                 </body>  ',620,GETDATE(),1)
END
GO

IF NOT EXISTS(SELECT TOP 1 * FROM [MailerTemplate] where [TemplateCode]='CPS')
BEGIN
Insert into MailerTemplate Values('Contributors With pending Status','CPS',' Weekly Summary of your assigned objectives and key results','<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">  <!--[if IE]>  <html xmlns="http://www.w3.org/1999/xhtml" class="ie">     <![endif]-->  <!--[if !IE]><!-->  <html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">   <!--<![endif]-->   <head>    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">     <title/>     <meta http-equiv="Content-Type" content="text/html; charset=utf-8">      <!--[if !mso]><!-->      <meta http-equiv="X-UA-Compatible" content="IE=edge">       <!--<![endif]-->       <meta name="viewport" content="width=device-width">        <title>2 days before the end of planning session</title>        <style>body { -webkit-text-size-adjust: 100%; margin: 0; padding: 0; border: 0px; font-family: Calibri; font-weight: 400; font-size: 16px; } table, tr, td { margin: 0px; padding: 0px; }</style>       </head>       <!--[if mso]>        <body class="mso" style="padding:0px;margin: 0px;">           <![endif]-->       <!--[if !mso]><!-->       <body style="padding:0px;margin: 0px;">        <!--<![endif]-->        <!--[if !mso]><!-->        <table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #EEF5FF; Margin: 0 auto; padding:0px;">         <!--<![endif]-->         <!--[if (mso)|(IE)]>                   <table class="wrapper" width="100%" align="center"  style="background: #EEF5FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->         <tr>          <td cellspacing="0" cellpadding="0" width="100%">           <img src="topBar" width="100%" style="display: block;"/>          </td>         </tr>         <tr>          <td cellspacing="0" cellpadding="0">           <table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; ">            <tr>             <td cellpadding="0" cellspacing="0" style="padding: 20px 0 40px;">              <table width="100%" cellspacing="0" cellpadding="0">               <tr>                <td style="width: 50%;">                 <a href="<url>" target="_blank" style="text-decoration: none;">                  <img src="logo" style=" display: block;"/>                  </a>                 </td>                 <td style="text-align: right; vertical-align: bottom; font-family: Calibri; ">                  <a href="<url>" target="_blank" style="text-decoration: none; color: #39A3FA;">                  <img src="login" alt="arrow"/>                   </a>                  </td>                 </tr>                </table>               </td>              </tr>              <tr>               <td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;">                <table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff;  border-radius: 6px;">                 <tr>                  <td cellpadding="0" cellspacing="0" style="padding: 33px 0px 21px;">                   <table width="100%" cellspacing="0" cellpadding="0">                    <tr>                     <td align="left" cellpadding="0" cellspacing="0" style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-left:38px;padding-right:35px;text-align: left;">Hello <strong>name</strong>,                                           </td>                    </tr>                    <tr>                     <td valign="top" cellpadding="0" cellspacing="0" style="padding-left:38px;padding-right: 15px;">                      <table width="100%" cellspacing="0" cellpadding="0">                       <tr>                        <td valign="top" width="62%" cellpadding="0" cellspacing="0" style="width:62%">                         <table width="100%" cellspacing="0" cellpadding="0">                          <tr>                           <td align="left" cellpadding="0" cellspacing="0" style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 28px;padding-top:26px;text-align: left;">You still have gotten no reply on the assignment(s). You might need to nudge your contributors, or risk the assignments going into archive mode!.</td>                          </tr>                          <tr>                           <td align="left" cellpadding="0" cellspacing="0" style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-top:0px;text-align: left;">                            <strong>Here is some help:</strong>                           </td>                          </tr>                          <tr>                           <td valign="top" align="left" cellpadding="0" cellspacing="0">                            <table cellspacing="0" cellpadding="0" style="">                             <Gist>                             </table>                            </td>                           </tr>                           <tr>                            <td cellpadding="0" cellspacing="0" align="left" style="text-align: left;padding-top: 20px;">                             <table cellspacing="0" cellpadding="0" style="">                              <tr>                               <td align="center" width="181" height="40" bgcolor="#39A3FA" style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">                                <a href="<RedirectOkR>" style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">View My OKRs</a>                                </td>                               </tr>                              </table>                             </td>                            </tr>                           </table>                          </td>                          <td valign="top" cellpadding="0" cellspacing="0" align="right" style="text-align: right;">                           <img src="watch" alt="watch" style="display:inline-block;max-width:100%;padding: 0px;margin: 0px">                           </td>                          </tr>                         </table>                        </td>                       </tr>                      </table>                     </td>                    </tr>                   </table>                  </td>                 </tr>                 <tr>                  <td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:10px;padding-right:10px;border-bottom: 1px solid #c3cedc;">                   <table cellspacing="0" cellpadding="0">                    <tr>                     <td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking!</td>                    </tr>                   </table>                  </td>                 </tr>                 <tr>                  <td valign="top" cellpadding="0" cellspacing="0" style="padding-top:20px;padding-bottom: 20px;padding-left:10px;padding-right:10px;border-bottom: 1px solid #c3cedc;">                   <table cellspacing="0" cellpadding="0">                    <tr>                     <td valign="top" cellpadding="0" cellspacing="0" style="padding-bottom:10px;font-size:14px;font-family: Calibri,Arial;vertical-align: top;">Note: Please do not reply to this email. Emails sent to this address will not be answered.</td>                    </tr>                    <tr>                     <td valign="top" cellpadding="0" cellspacing="0" style="padding-bottom:10px;font-size:14px;font-family: Calibri,Arial;">Help/Feedback - Write to us at                 <a href="mailto:<supportEmailId>" style="color: #39A3FA; text-decoration: underline;">                  <supportEmailId>                        </a>                       </td>                      </tr>                      <tr>                       <td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;">If you are having trouble viewing this email, you can update your outlook settings by                 <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.                              </td>                      </tr>                     </table>                    </td>                   </tr>                   <tr>                    <td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px 10px 22px 10px;">                     <table width="100%" cellspacing="0" cellpadding="0">                      <tr>                       <td cellpadding="0" cellspacing="0" style="width: 50%;">                        <a href="<unlocklink>" target="_blank" style="text-decoration: none;">                  <img src="footer" style="display: block;"/>                         </a>                        </td>                        <td cellpadding="0" cellspacing="0" align="right">                         <a href="<linkedin>" target="_blank" style="text-decoration: none; color: #39A3FA;">                  <img src="linkedin" alt="linkden"/>                          </a>                         </td>                        </tr>                       </table>                      </td>                     </tr>                     <tr>                      <td valign="top" cellpadding="0" cellspacing="0" style="padding-bottom: 20px;text-align: center;vertical-align: top;" align="center">                       <table width="auto" cellspacing="0" cellpadding="0" style="Margin:0 auto">                        <tr>                         <td cellpadding="0" cellspacing="0" style="vertical-align:top;font-size: 14px;font-family: Calibri,Arial;padding-right: 18px;padding-top: 0;" valign="top">                          <a href="<pri>" target="_blank" style="color: #39A3FA; text-decoration: underline;">Privacy Policy</a>                          </td>                          <td align="center" cellpadding="0" cellspacing="0" style="padding-top:0px;font-size: 14px;font-family: Calibri,Arial;text-align: center;padding-right: 18px;vertical-align: top;" valign="top">                           <table width="auto" cellspacing="0" cellpadding="0" style="">                            <tr>                             <td cellpadding="0" cellspacing="0" style="padding-top: 8px;">                              <img style="display:block;" src="dot" alt="sep"/>                             </td>                            </tr>                           </table>                          </td>                          <td cellpadding="0" cellspacing="0" style="font-size: 14px;font-family: Calibri,Arial;padding-right: 18px;vertical-align:top;" valign="top">                           <a href="<tos>" target="_blank" style="color: #39A3FA; text-decoration: underline;">Terms of Use</a>                           </td>                           <!-- <td align="center" cellpadding="0" cellspacing="0" style="padding-top:0px;font-size: 14px;font-family: Calibri,Arial;text-align: center;padding-right: 18px;vertical-align: top;" valign="top"> -->                           <!-- <table width="auto" cellspacing="0" cellpadding="0" style=""> -->                           <!-- <tr> -->                           <!-- <td cellpadding="0" cellspacing="0" style="padding-top: 8px;"> -->                           <!-- <img style="display:block;" src="dot" alt="sep"/> -->                           <!-- </td> -->                           <!-- </tr> -->                           <!-- </table> -->                           <!-- </td> -->                           <!-- <td valign="top" cellpadding="0" cellspacing="0" style="font-size: 14px;font-family: Calibri,Arial;padding-right: 18px;vertical-align:top;"> -->                           <!-- <a href="<contacts>" target="_blank" style="color: #39A3FA; text-decoration: underline;">Contacts</a> -->                           <!-- </td> -->                           <!-- <td align="center" cellpadding="0" cellspacing="0" style="padding-top:0px;font-size: 14px;font-family: Calibri,Arial;text-align: center;padding-right: 18px;vertical-align: top;" valign="top"> -->                           <!-- <table width="auto" cellspacing="0" cellpadding="0" style=""> -->                           <!-- <tr> -->                           <!-- <td cellpadding="0" cellspacing="0" style="padding-top: 8px;"> -->                           <!-- <img style="display:block;" src="dot" alt="sep"/> -->                           <!-- </td> -->                           <!-- </tr> -->                           <!-- </table> -->                           <!-- </td> -->                           <!-- <td valign="top" cellpadding="0" cellspacing="0" style="font-size: 14px;vertical-align:top;font-family: Calibri,Arial;"> -->                           <!-- <a href="<TechS>" target="_blank" style="color: #39A3FA; text-decoration: underline;">Technical Support</a> -->                           <!-- </td> -->                          </tr>                         </table>                        </td>                       </tr>                      </table>                     </td>                    </tr>                    <tr>                     <td cellspacing="0" cellpadding="0" width="100%" bgcolor="#F1F3F4" align="center" style="padding:10px ;text-align: center;background-color: #F1F3F4;font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">&copy; yer Infopro Learning, 103 Morgan Lane, Suite 102, Plainsboro, NJ, USA. All rights reserved</td>                    </tr>                   </table>                  </body>   ',620,GETDATE(),1)
END
GO


IF (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = N'dbo' AND  TABLE_NAME = N'MailerTemplate'))
BEGIN
IF NOT EXISTS(SELECT TOP 1 * FROM [MailerTemplate] where [TemplateName]='Draft OKR Summary')
BEGIN

INSERT [dbo].[MailerTemplate] ([TemplateName], [TemplateCode], [Subject], [Body], [CreatedBy], [CreatedOn], [isActive]) VALUES ('Draft OKR Summary','DOS','<username>, pick up your incomplete OKRs from where you left last time', '<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">  <!--[if IE]>  <html xmlns="http://www.w3.org/1999/xhtml" class="ie">     <![endif]-->  <!--[if !IE]><!-->  <html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">   <!--<![endif]-->   <head>    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">     <title/>     <meta http-equiv="Content-Type" content="text/html; charset=utf-8">      <!--[if !mso]><!-->      <meta http-equiv="X-UA-Compatible" content="IE=edge">       <!--<![endif]-->       <meta name="viewport" content="width=device-width">        <title>Okr Assignment Complete</title>        <style>    body {     -webkit-text-size-adjust: 100%;     margin: 0;     padding: 0;     border: 0px;     font-family: Calibri;     font-weight: 400;     font-size: 16px;    }      table,    tr,    td {     margin: 0px;     padding: 0px;    }   </style>       </head>       <!--[if mso]>        <body class="mso" style="padding:0px;margin: 0px;">           <![endif]-->       <!--[if !mso]><!-->       <body style="padding:0px;margin: 0px;">        <!--<![endif]-->        <!--[if !mso]><!-->        <table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"    style="background: #EEF5FF; Margin: 0 auto; padding:0px;">         <!--<![endif]-->         <!--[if (mso)|(IE)]>                   <table class="wrapper" width="100%" align="center"  style="background: #EEF5FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->         <tr>          <td cellspacing="0" cellpadding="0" width="100%">           <img src="topBar" width="100%" style="display: block;" />          </td>         </tr>         <tr>          <td cellspacing="0" cellpadding="0">           <table align="center" width="600" cellspacing="0" cellpadding="0"       style="margin: 0px auto; color: #292929; font-weight: normal; ">            <tr>             <td cellpadding="0" cellspacing="0" style="padding: 20px 0 40px;">              <table width="100%" cellspacing="0" cellpadding="0">               <tr>                <td style="width: 50%;">                 <a href="<URL>" target="_blank"             style="text-decoration: none;">             <img src="logo" style=" display: block;" />                  </a>                 </td>                 <td style="text-align: right; vertical-align: bottom; font-family: Calibri; ">                  <a href="<URL>" target="_blank"             style="text-decoration: none; color: #39A3FA;">             <img src="loggedInButton" alt="arrow" />                   </a>                  </td>                 </tr>                </table>               </td>              </tr>              <tr>               <td align="left" cellpadding="0" cellspacing="0"         style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 5px;">         Hello <strong>name,</strong>               </td>              </tr>              <tr>               <td align="left" cellpadding="0" cellspacing="0"         style="font-size:24px;line-height:29px;color:#292929;font-family: Calibri,Arial;padding-bottom: 44px;">                <strong>Today is the last day of Planning Session</strong>               </td>              </tr>              <tr>               <td cellpadding="0" cellspacing="0" valign="middle" style="padding-bottom: 18px;">                <table cellspacing="0" cellpadding="0">                 <tr>                  <td cellpadding="0" cellspacing="0" valign="middle" style="padding-right: 10px;">                   <img style="display: block;" src="infoIcon" alt="info" />                  </td>                  <td valign="middle" align="left" cellpadding="0" cellspacing="0"            style="font-size:18px;line-height:18px;color:#292929;font-family: Calibri,Arial;">                   <strong>count OKR(s) Saved as Draft</strong>                  </td>                 </tr>                </table>               </td>              </tr>              <tr>               <td cellspacing="0" cellpadding="0">                <table width="100%" cellspacing="0" cellpadding="0">                 <!--row 1 start here-->          Listing          <!--row 1 end here-->                 <!--row 2 start here-->                 <!--row 2 end here-->                 <!--row 3 start here-->                 <!--row 3 end here-->                </table>               </td>              </tr>              <tr>               <td cellpadding="0" cellspacing="0" align="left" style="text-align: left;padding-top: 20px;">                <table cellspacing="0" cellpadding="0" style="">                 <tr>                  <td align="center" width="141" height="40" bgcolor="#39A3FA"            style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">                   <a href="<Button>"             style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">             View Dashboard            </a>                   </td>                  </tr>                 </table>                </td>               </tr>               <tr>                <td cellpadding="0" cellspacing="0"         style="padding-top: 20px;padding-bottom: 20px;padding-left:10px;padding-right:10px;border-bottom: 1px solid #c3cedc;">                 <table cellspacing="0" cellpadding="0">                  <tr>                   <td cellpadding="0" cellspacing="0"            style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy            Unlocking!           </td>                  </tr>                 </table>                </td>               </tr>               <tr>                <td valign="top" cellpadding="0" cellspacing="0"         style="padding-top:20px;padding-bottom: 20px;padding-left:10px;padding-right:10px;border-bottom: 1px solid #c3cedc;">                 <table cellspacing="0" cellpadding="0">                  <tr>                   <td valign="top" cellpadding="0" cellspacing="0"            style="padding-bottom:10px;font-size:14px;font-family: Calibri,Arial;vertical-align: top;">            Note: Please            do            not reply to this email. Emails sent to this address will not be            answered.</td>                  </tr>                  <tr>                   <td valign="top" cellpadding="0" cellspacing="0"            style="padding-bottom:10px;font-size:14px;font-family: Calibri,Arial;">            Help/Feedback - Write to us at <a href="mailto:supportEmailId"             style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a>                   </td>                  </tr>                  <tr>                   <td valign="top" cellpadding="0" cellspacing="0"            style="font-size:14px;font-family: Calibri,Arial;">If you are            having            trouble viewing this email, you can update your outlook settings by <a             target="_blank"             href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error"             style="color: #39A3FA; text-decoration: underline;">clicking             here</a>.</td>                  </tr>                 </table>                </td>               </tr>               <tr>                <td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px 10px 22px 10px;">                 <table width="100%" cellspacing="0" cellpadding="0">                  <tr>                   <td cellpadding="0" cellspacing="0" style="width: 50%;">                    <a href="<URL>" target="_blank"             style="text-decoration: none;">             <img src="footer" style="display: block;" />                     </a>                    </td>                    <td cellpadding="0" cellspacing="0" align="right">                     <a href="https://www.linkedin.com/company/unlock-okr/" target="_blank"             style="text-decoration: none; color: #39A3FA;">                      <img src="linkden" alt="linkden" />                     </a>                    </td>                   </tr>                  </table>                 </td>                </tr>                <tr>                 <td valign="top" cellpadding="0" cellspacing="0"         style="padding-bottom: 20px;text-align: center;vertical-align: top;" align="center">                  <table width="auto" cellspacing="0" cellpadding="0" style="Margin:0 auto">                   <tr>                    <td cellpadding="0" cellspacing="0"            style="vertical-align:top;font-size: 14px;font-family: Calibri,Arial;padding-right: 18px;padding-top: 0;"            valign="top">                     <a href="privacy" target="_blank"             style="color: #39A3FA; text-decoration: underline;">Privacy             Policy</a>                    </td>                    <td align="center" cellpadding="0" cellspacing="0"            style="padding-top:0px;font-size: 14px;font-family: Calibri,Arial;text-align: center;padding-right: 18px;vertical-align: top;"            valign="top">                     <table width="auto" cellspacing="0" cellpadding="0" style="">                      <tr>                       <td cellpadding="0" cellspacing="0" style="padding-top: 8px;">                        <img style="display:block;" src="dot" alt="sep" />                       </td>                      </tr>                     </table>                    </td>                    <td cellpadding="0" cellspacing="0"            style="font-size: 14px;font-family: Calibri,Arial;padding-right: 18px;vertical-align:top;"            valign="top">                     <a href="terming" target="_blank"             style="color: #39A3FA; text-decoration: underline;">Terms of Use</a>                    </td>                    <!-- <td align="center" cellpadding="0" cellspacing="0" -->                    <!-- style="padding-top:0px;font-size: 14px;font-family: Calibri,Arial;text-align: center;padding-right: 18px;vertical-align: top;" -->                    <!-- valign="top"> -->                    <!-- <table width="auto" cellspacing="0" cellpadding="0" style=""> -->                    <!-- <tr> -->                    <!-- <td cellpadding="0" cellspacing="0" style="padding-top: 8px;"> -->                    <!-- <img style="display:block;" src="dot" alt="sep" /> -->                    <!-- </td> -->                    <!-- </tr> -->                    <!-- </table> -->                    <!-- </td> -->                    <!-- <td valign="top" cellpadding="0" cellspacing="0" -->                    <!-- style="font-size: 14px;font-family: Calibri,Arial;padding-right: 18px;vertical-align:top;"> -->                    <!-- <a href="contact" target="_blank" -->                    <!-- style="color: #39A3FA; text-decoration: underline;">Contacts</a> -->                    <!-- </td> -->                    <!-- <td align="center" cellpadding="0" cellspacing="0" -->                    <!-- style="padding-top:0px;font-size: 14px;font-family: Calibri,Arial;text-align: center;padding-right: 18px;vertical-align: top;" -->                    <!-- valign="top"> -->                    <!-- <table width="auto" cellspacing="0" cellpadding="0" style=""> -->                    <!-- <tr> -->                    <!-- <td cellpadding="0" cellspacing="0" style="padding-top: 8px;"> -->                    <!-- <img style="display:block;" src="dot" alt="sep" /> -->                    <!-- </td> -->                    <!-- </tr> -->                    <!-- </table> -->                    <!-- </td> -->                    <!-- <td valign="top" cellpadding="0" cellspacing="0" -->                    <!-- style="font-size: 14px;vertical-align:top;font-family: Calibri,Arial;"> -->                    <!-- <a href="technicalSupport" target="_blank" -->                    <!-- style="color: #39A3FA; text-decoration: underline;">Technical -->                    <!-- Support</a> -->                    <!-- </td> -->                   </tr>                  </table>                 </td>                </tr>               </table>              </td>             </tr>             <tr>              <td cellspacing="0" cellpadding="0" width="100%" bgcolor="#F1F3F4" align="center"      style="padding:10px ;text-align: center;background-color: #F1F3F4;font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">      &copy; year Infopro Learning, 103 Morgan Lane, Suite 102, Plainsboror, NJ, USA. All rights reserved     </td>             </tr>            </table>           </body>', 331, CAST(N'2021-04-02T07:48:47.727' AS DateTime), 1)

END 
END
GO

-- END SPRINT 2.9.1 A
Go


-- START DML 2.9.1 C


IF NOT EXISTS(select * from MailerTemplate where TemplateCode = 'KP')
Begin
INSERT INTO MailerTemplate Values ('KR Prgress Update','KP','<Contributor name> has contributed to your KR','<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">  <!--[if IE]>  <html xmlns="http://www.w3.org/1999/xhtml" class="ie">     <![endif]-->  <!--[if !IE]><!-->  <html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">   <!--<![endif]-->   <head>    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">     <title/>     <meta http-equiv="Content-Type" content="text/html; charset=utf-8">      <!--[if !mso]><!-->      <meta http-equiv="X-UA-Compatible" content="IE=edge">       <!--<![endif]-->       <meta name="viewport" content="width=device-width">        <title>Changes in okr</title>        <style>    body {     -webkit-text-size-adjust: 100%;     margin: 0;     padding: 0;     border: 0px;     font-family: Calibri;     font-weight: 400;     font-size: 16px;    }      table,    tr,    td {     margin: 0px;     padding: 0px;    }   </style>       </head>       <!--[if mso]>        <body class="mso" style="padding:0px;margin: 0px;">           <![endif]-->       <!--[if !mso]><!-->       <body style="padding:0px;margin: 0px;">        <!--<![endif]-->        <!--[if !mso]><!-->        <table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"    style="background: #E5F0FF; Margin: 0 auto; padding:0px;">         <!--<![endif]-->         <!--[if (mso)|(IE)]>                   <table class="wrapper" width="100%" align="center"  style="background: #EEF5FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->         <tr>          <td cellspacing="0" cellpadding="0" width="100%">           <img src="topBar" width="100%" style="display: block;" />          </td>         </tr>         <tr>          <td cellspacing="0" cellpadding="0">           <table align="center" width="600" cellspacing="0" cellpadding="0"       style="margin: 0px auto; color: #292929; font-weight: normal; ">            <tr>             <td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">              <table width="100%" cellspacing="0" cellpadding="0">               <tr>                <td style="width: 50%;">                 <a href="<URL>" target="_blank"             style="text-decoration: none;">             <img src="logo" style=" display: block;" />                  </a>                 </td>                 <td align="right" cellpadding="0" cellspacing="0">                  <table width="90px" cellspacing="0" cellpadding="0">                   <tr>                    <td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">                     <a href="lk" target="_blank" style="text-decoration: none;">                      <img src="linkedin" alt="arrow" />                     </a>                    </td>                    <td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">                     <a href="fb" target="_blank" style="text-decoration: none;">                      <img src="facebook" alt="arrow" />                     </a>                    </td>                    <td               style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">                     <a href="ijk" target="_blank"                style="text-decoration: none;">                      <img src="instagram" alt="arrow" />                     </a>                    </td>                    <td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">                     <a href="terp" target="_blank" style="text-decoration: none;">                      <img src="twitter" alt="arrow" />                     </a>                    </td>                   </tr>                  </table>                 </td>                </tr>               </table>              </td>             </tr>             <tr>              <td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left: 20px; padding-right: 20px;">               <table width="100%" cellspacing="0" cellpadding="0"          style="background-color: #ffffff;  border-radius: 6px;">                <tr>                 <td cellpadding="0" cellspacing="0" style="padding: 33px 35px;">                  <table width="100%" cellspacing="0" cellpadding="0">                   <tr>                    <td align="center" cellpadding="0" cellspacing="0"               style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 18px;text-align: center;">               Hello <strong>name,</strong>                    </td>                   </tr>                   <tr>                    <td cellpadding="0" cellspacing="0" align="center"               style="padding-bottom: 25px;">                     <img src="changesinokr"                alt="okr-assignment-completed"                style="display:block;max-width:100%;padding: 0px;margin: 0px">                     </td>                    </tr>                    <tr>                     <td align="center" cellpadding="0" cellspacing="0"               style="font-size:16px;line-height:16px;color:#292929;font-family: Calibri,Arial;padding-bottom: 4px;text-align: center;">               It looks like source has contributed to your <a href="tinggg"                   style="text-decoration:none;font-size:16px;line-height:24px;font-weight:bold;color:#39A3FA;font-family: Calibri,Arial;">" keyDescription ".</a>                     </td>                    </tr>                    <tr>                     <td cellpadding="0" cellspacing="0" align="center"               style="text-align: center;padding-top: 20px;">                      <table cellspacing="0" cellpadding="0" style="Margin:0 auto">                       <tr>                        <td align="center" width="181" height="40" bgcolor="#39A3FA"                  style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">                         <a href="<abcdefg>"                   style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">                   View this OKR                  </a>                         </td>                        </tr>                       </table>                       <!-- <![endif]-->                      </td>                     </tr>                    </table>                   </td>                  </tr>                 </table>                </td>               </tr>               <tr>                <td cellpadding="0" cellspacing="0"         style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">                 <table cellspacing="0" cellpadding="0">                  <tr>                   <td cellpadding="0" cellspacing="0"            style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy            Unlocking!           </td>                  </tr>                 </table>                </td>               </tr>               <tr>                <td valign="top" cellpadding="0" cellspacing="0"         style="padding:20px;border-bottom: 1px solid #c3cedc;">                 <table cellspacing="0" cellpadding="0">                  <tr>                   <td valign="top" cellpadding="0" cellspacing="0"            style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;">            Note: Please            do            not reply to this email. Emails sent to this address will not be            answered</td>                  </tr>                  <tr>                   <td valign="top" cellpadding="0" cellspacing="0"            style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;">            Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com"             style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a>                   </td>                  </tr>                  <tr>                   <td valign="top" cellpadding="0" cellspacing="0"            style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;">If you are            having            trouble viewing this email, you can update your outlook settings by <a             target="_blank"             href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error"             style="color: #39A3FA; text-decoration: underline;">clicking             here</a>.</td>                  </tr>                 </table>                </td>               </tr>               <tr>                <td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">                 <table width="100%" cellspacing="0" cellpadding="0">                  <tr>                   <td cellspacing="0" cellpadding="0" width="100%"            style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">            &copy; year Infopro Learning, Inc. All rights reserved           </td>                  </tr>                 </table>                </td>               </tr>              </table>             </td>            </tr>           </table>          </body>',620,getdate(),1)
END
GO

IF NOT EXISTS(select * from MailerTemplate where TemplateCode = 'ES')
Begin
INSERT INTO MailerTemplate VALUES('Email to Source','ES','Planning session is going to end in 2 days','<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">  <!--[if IE]>  <html xmlns="http://www.w3.org/1999/xhtml" class="ie">     <![endif]-->  <!--[if !IE]><!-->  <html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">   <!--<![endif]-->   <head>    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">     <title/>     <meta http-equiv="Content-Type" content="text/html; charset=utf-8">      <!--[if !mso]><!-->      <meta http-equiv="X-UA-Compatible" content="IE=edge">       <!--<![endif]-->       <meta name="viewport" content="width=device-width">        <title>2 days before the end of planning session</title>        <style>    body {     -webkit-text-size-adjust: 100%;     margin: 0;     padding: 0;     border: 0px;     font-family: Calibri;     font-weight: 400;     font-size: 16px;    }      table,    tr,    td {     margin: 0px;     padding: 0px;    }   </style>       </head>       <!--[if mso]>        <body class="mso" style="padding:0px;margin: 0px;">           <![endif]-->       <!--[if !mso]><!-->       <body style="padding:0px;margin: 0px;">        <!--<![endif]-->        <!--[if !mso]><!-->        <table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"    style="background: #E5F0FF; Margin: 0 auto; padding:0px;">         <!--<![endif]-->         <!--[if (mso)|(IE)]>                   <table class="wrapper" width="100%" align="center"  style="background: #EEF5FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->         <tr>          <td cellspacing="0" cellpadding="0" width="100%">           <img src="topBar" width="100%" style="display: block;" />          </td>         </tr>         <tr>          <td cellspacing="0" cellpadding="0">           <table align="center" width="600" cellspacing="0" cellpadding="0"       style="margin: 0px auto; color: #292929; font-weight: normal; ">            <tr>             <td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">              <table width="100%" cellspacing="0" cellpadding="0">               <tr>                <td style="width: 50%;">                 <a href="<URL>" target="_blank"             style="text-decoration: none;">             <img src="logo" style=" display: block;" />                  </a>                 </td>                 <td align="right" cellpadding="0" cellspacing="0">                  <table width="90px" cellspacing="0" cellpadding="0">                   <tr>                    <td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">                     <a href="<iko>" target="_blank" style="text-decoration: none;">                <img src="linkedin" alt="arrow" />                      </a>                     </td>                     <td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">                      <a href="fb" target="_blank" style="text-decoration: none;">                       <img src="facebook" alt="arrow" />                      </a>                     </td>                     <td               style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">                      <a href="ijk" target="_blank"                style="text-decoration: none;">                       <img src="instagram" alt="arrow" />                      </a>                     </td>                     <td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">                      <a href="terp" target="_blank" style="text-decoration: none;">                       <img src="twitter" alt="arrow" />                      </a>                     </td>                    </tr>                   </table>                  </td>                 </tr>                </table>               </td>              </tr>              <tr>               <td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left: 20px; padding-right: 20px;">                <table width="100%" cellspacing="0" cellpadding="0"          style="background-color: #ffffff;  border-radius: 6px;">                 <tr>                  <td cellpadding="0" cellspacing="0" style="padding: 33px 0px 21px;">                   <table width="100%" cellspacing="0" cellpadding="0">                    <tr>                     <td align="left" cellpadding="0" cellspacing="0"               style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-left:38px;padding-right:35px;text-align: left;">               Hello <strong>name</strong>,              </td>                    </tr>                    <tr>                     <td valign="top" cellpadding="0" cellspacing="0"               style="padding-left:38px;padding-right: 15px;">                      <table width="100%" cellspacing="0" cellpadding="0">                       <tr>                        <td valign="top" width="62%" cellpadding="0" cellspacing="0"                  style="width:62%">                         <table width="100%" cellspacing="0" cellpadding="0">                          <tr>                           <td align="left" cellpadding="0" cellspacing="0"                     style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 28px;padding-top:26px;text-align: left;">                     You still have gotten no reply on the                     assignment(s). You might need to nudge your                     contributors, or risk the assignments going                     into archive mode!                    </td>                          </tr>                          <tr>                           <td align="left" cellpadding="0" cellspacing="0"                     style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-top:0px;text-align: left;">                            <strong>Heres some help:</strong>                           </td>                          </tr>                          <tr>                           <td valign="top" align="left" cellpadding="0"                     cellspacing="0">                            <table cellspacing="0" cellpadding="0"                      style="">                             <Gist>                             </table>                            </td>                           </tr>                           <tr>                            <td cellpadding="0" cellspacing="0" align="left"                     style="text-align: left;padding-top: 20px;">                             <table cellspacing="0" cellpadding="0"                      style="">                              <tr>                               <td align="center" width="181"                        height="40" bgcolor="#39A3FA"                        style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">                                <a href="<RedirectOkR>"                         style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">                         View My OKRs                        </a>                                </td>                               </tr>                              </table>                              <!-- <![endif]-->                             </td>                            </tr>                           </table>                          </td>                          <td valign="top" cellpadding="0" cellspacing="0"                  align="right" style="text-align: right;">                           <img src="watch" alt="watch"                   style="display:inline-block;max-width:100%;padding: 0px;margin: 0px">                           </td>                          </tr>                         </table>                        </td>                       </tr>                      </table>                     </td>                    </tr>                   </table>                  </td>                 </tr>                 <tr>                  <td cellpadding="0" cellspacing="0"         style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">                   <table cellspacing="0" cellpadding="0">                    <tr>                     <td cellpadding="0" cellspacing="0"            style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy            Unlocking!           </td>                    </tr>                   </table>                  </td>                 </tr>                 <tr>                  <td valign="top" cellpadding="0" cellspacing="0"         style="padding-top:20px;padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">                   <table cellspacing="0" cellpadding="0">                    <tr>                     <td valign="top" cellpadding="0" cellspacing="0"            style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;">            Note: Please            do            not reply to this email. Emails sent to this address will not be            answered</td>                    </tr>                    <tr>                     <td valign="top" cellpadding="0" cellspacing="0"            style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;">            Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com"             style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a>                     </td>                    </tr>                    <tr>                     <td valign="top" cellpadding="0" cellspacing="0"            style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;">            If you are            having            trouble viewing this email, you can update your outlook settings by <a             target="_blank"             href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error"             style="color: #39A3FA; text-decoration: underline;">clicking             here</a>.</td>                    </tr>                   </table>                  </td>                 </tr>                 <tr>                  <td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">                   <table width="100%" cellspacing="0" cellpadding="0">                    <tr>                     <td cellspacing="0" cellpadding="0" width="100%"            style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">            &copy; year Infopro Learning, Inc. All rights reserved           </td>                    </tr>                   </table>                  </td>                 </tr>                </table>               </td>              </tr>             </table>            </body>',620,getdate(),1)
END
GO

IF NOT EXISTS(select * from MailerTemplate where TemplateCode = 'KA')
Begin
INSERT INTO MailerTemplate VALUES('KR Accepted','KA','Accept assigned KR','<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">  <!--[if IE]>  <html xmlns="http://www.w3.org/1999/xhtml" class="ie">     <![endif]-->  <!--[if !IE]><!-->  <html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">   <!--<![endif]-->   <head>    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">     <title/>     <meta http-equiv="Content-Type" content="text/html; charset=utf-8">      <!--[if !mso]><!-->      <meta http-equiv="X-UA-Compatible" content="IE=edge">       <!--<![endif]-->       <meta name="viewport" content="width=device-width">        <title>Okr Assignment Complete</title>        <style>    body {     -webkit-text-size-adjust: 100%;     margin: 0;     padding: 0;     border: 0px;     font-family: Calibri;     font-weight: 400;     font-size: 16px;    }      table,    tr,    td {     margin: 0px;     padding: 0px;    }   </style>       </head>       <!--[if mso]>        <body class="mso" style="padding:0px;margin: 0px;">           <![endif]-->       <!--[if !mso]><!-->       <body style="padding:0px;margin: 0px;">        <!--<![endif]-->        <!--[if !mso]><!-->        <table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"    style="background: #E5F0FF; Margin: 0 auto; padding:0px;">         <!--<![endif]-->         <!--[if (mso)|(IE)]>                   <table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->         <tr>          <td cellspacing="0" cellpadding="0" width="100%">           <img src="topBar" width="100%" style="display: block;" />          </td>         </tr>         <tr>          <td cellspacing="0" cellpadding="0">           <table align="center" width="600" cellspacing="0" cellpadding="0"       style="margin: 0px auto; color: #292929; font-weight: normal; ">            <tr>             <td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">              <table width="100%" cellspacing="0" cellpadding="0">               <tr>                <td style="width: 50%;">                 <a href="<URL>" target="_blank"             style="text-decoration: none;">             <img src="logo" style=" display: block;" />                  </a>                 </td>                 <td align="right" cellpadding="0" cellspacing="0">                  <table width="90px" cellspacing="0" cellpadding="0">                   <tr>                    <td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">                     <a href="<iko>" target="_blank" style="text-decoration: none;">                <img src="linkedin" alt="arrow" />                      </a>                     </td>                     <td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">                      <a href="fb" target="_blank" style="text-decoration: none;">                       <img src="facebook" alt="arrow" />                      </a>                     </td>                     <td               style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">                      <a href="ijk" target="_blank"                style="text-decoration: none;">                       <img src="instagram" alt="arrow" />                      </a>                     </td>                     <td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">                      <a href="terp" target="_blank" style="text-decoration: none;">                       <img src="twitter" alt="arrow" />                      </a>                     </td>                    </tr>                   </table>                  </td>                 </tr>                </table>               </td>              </tr>              <tr>               <td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left: 20px; padding-right: 20px;">                <table width="100%" cellspacing="0" cellpadding="0"          style="background-color: #ffffff;  border-radius: 6px;">                 <tr>                  <td cellpadding="0" cellspacing="0" style="padding: 33px 35px;">                   <table width="100%" cellspacing="0" cellpadding="0">                    <tr>                     <td align="center" cellpadding="0" cellspacing="0"               style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 18px;text-align: center;">               Hello <strong>name,</strong>                     </td>                    </tr>                    <tr>                     <td cellpadding="0" cellspacing="0" align="center"               style="padding-bottom: 18px;">                      <img src="message" alt="okr-assignment-completed"                style="display:block;max-width:100%;padding: 0px;margin: 0px">                      </td>                     </tr>                     <tr>                      <Gist>                      </tr>                     </table>                    </td>                   </tr>                   <tr>                    <td cellpadding="0" cellspacing="0" align="center"            style="text-align: center;padding-top: 20px; padding-bottom: 20px;">                     <table cellspacing="0" cellpadding="0" style="Margin:0 auto">                      <tr>                       <td align="center" width="158" height="40" bgcolor="#39A3FA"               style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">                        <a href="<abcdefg>"                style="height: 40px;color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">                View my OKR(s)               </a>                        </td>                       </tr>                      </table>                      <!-- <![endif]-->                     </td>                    </tr>                   </table>                  </td>                 </tr>                 <tr>                  <td cellpadding="0" cellspacing="0"         style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">                   <table cellspacing="0" cellpadding="0">                    <tr>                     <td cellpadding="0" cellspacing="0"            style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy            Unlocking!           </td>                    </tr>                   </table>                  </td>                 </tr>                 <tr>                  <td valign="top" cellpadding="0" cellspacing="0"         style="padding-top:20px;padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">                   <table cellspacing="0" cellpadding="0">                    <tr>                     <td valign="top" cellpadding="0" cellspacing="0"            style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;">            Note: Please            do            not reply to this email. Emails sent to this address will not be            answered</td>                    </tr>                    <tr>                     <td valign="top" cellpadding="0" cellspacing="0"            style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;">            Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com"             style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a>                     </td>                    </tr>                    <tr>                     <td valign="top" cellpadding="0" cellspacing="0"            style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;">            If you are            having            trouble viewing this email, you can update your outlook settings by <a             target="_blank"             href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error"             style="color: #39A3FA; text-decoration: underline;">clicking             here</a>.</td>                    </tr>                   </table>                  </td>                 </tr>                 <tr>                  <td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">                   <table width="100%" cellspacing="0" cellpadding="0">                    <tr>                     <td cellspacing="0" cellpadding="0" width="100%"            style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">            &copy; year Infopro Learning, Inc. All rights reserved           </td>                    </tr>                   </table>                  </td>                 </tr>                </table>               </td>              </tr>             </table>            </body>',620,getdate(),1)
END
GO

IF NOT EXISTS(select * from MailerTemplate where TemplateCode = 'KD')
Begin
INSERT INTO MailerTemplate Values ('Kr Declined','KD','Decline assigned KR','<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">  <!--[if IE]>  <html xmlns="http://www.w3.org/1999/xhtml" class="ie">     <![endif]-->  <!--[if !IE]><!-->  <html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">   <!--<![endif]-->   <head>    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">     <title/>     <meta http-equiv="Content-Type" content="text/html; charset=utf-8">      <!--[if !mso]><!-->      <meta http-equiv="X-UA-Compatible" content="IE=edge">       <!--<![endif]-->       <meta name="viewport" content="width=device-width">        <title>Okr Assignment Complete</title>        <style>    body {     -webkit-text-size-adjust: 100%;     margin: 0;     padding: 0;     border: 0px;     font-family: Calibri;     font-weight: 400;     font-size: 16px;    }      table,    tr,    td {     margin: 0px;     padding: 0px;    }   </style>       </head>       <!--[if mso]>        <body class="mso" style="padding:0px;margin: 0px;">           <![endif]-->       <!--[if !mso]><!-->       <body style="padding:0px;margin: 0px;">        <!--<![endif]-->        <!--[if !mso]><!-->        <table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"    style="background: #E5F0FF; Margin: 0 auto; padding:0px;">         <!--<![endif]-->         <!--[if (mso)|(IE)]>                   <table class="wrapper" width="100%" align="center"  style="background: #EEF5FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->         <tr>          <td cellspacing="0" cellpadding="0" width="100%">           <img src="topBar" width="100%" style="display: block;" />          </td>         </tr>         <tr>          <td cellspacing="0" cellpadding="0">           <table align="center" width="600" cellspacing="0" cellpadding="0"       style="margin: 0px auto; color: #292929; font-weight: normal; ">            <tr>             <td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">              <table width="100%" cellspacing="0" cellpadding="0">               <tr>                <td style="width: 50%;">                 <a href="<URL>" target="_blank"             style="text-decoration: none;">             <img src="logo" style=" display: block;" />                  </a>                 </td>                 <td align="right" cellpadding="0" cellspacing="0">                  <table width="90px" cellspacing="0" cellpadding="0">                   <tr>                    <td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">                     <a href="<iko>" target="_blank" style="text-decoration: none;">                <img src="linkedin" alt="arrow" />                      </a>                     </td>                     <td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">                      <a href="fb" target="_blank" style="text-decoration: none;">                       <img src="facebook" alt="arrow" />                      </a>                     </td>                     <td               style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">                      <a href="ijk" target="_blank"                style="text-decoration: none;">                       <img src="instagram" alt="arrow" />                      </a>                     </td>                     <td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">                      <a href="terp" target="_blank" style="text-decoration: none;">                       <img src="twitter" alt="arrow" />                      </a>                     </td>                    </tr>                   </table>                  </td>                 </tr>                </table>               </td>              </tr>              <tr>               <td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left: 20px; padding-right: 20px;">                <table width="100%" cellspacing="0" cellpadding="0"          style="background-color: #ffffff;  border-radius: 6px;">                 <tr>                  <td cellpadding="0" cellspacing="0" style="padding: 33px 35px;">                   <table width="100%" cellspacing="0" cellpadding="0">                    <tr>                     <td align="center" cellpadding="0" cellspacing="0"               style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 18px;text-align: center;">               Hello <strong>Source,</strong>                     </td>                    </tr>                    <tr>                     <td cellpadding="0" cellspacing="0" align="center"               style="padding-bottom: 18px;">                      <img src="mnc" alt="okr-assignment-completed"                style="display:block;max-width:100%;padding: 0px;margin: 0px">                      </td>                     </tr>                     <tr>                      <td cellpadding="0" cellspacing="0" align="center"               style="padding-bottom: 5px;">                       <table width="393" cellspacing="0" cellpadding="0"                style:"393px;Margin:0 auto">                        <tr>                         <Gist>                         </tr>                        </table>                       </td>                      </tr>                      <tr>                       <td cellpadding="0" cellspacing="0" align="center"               style="text-align: center;padding-top: 20px;">                        <table cellspacing="0" cellpadding="0" style="Margin:0 auto">                         <tr>                          <td align="center" width="158" height="40" bgcolor="#39A3FA"                  style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">                           <a href="<abcdefg>"                   style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">                   View my OKR(s)                 </a>                           </td>                          </tr>                         </table>                         <!-- <![endif]-->                        </td>                       </tr>                      </table>                     </td>                    </tr>                   </table>                  </td>                 </tr>                 <tr>                  <td cellpadding="0" cellspacing="0"         style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">                   <table cellspacing="0" cellpadding="0">                    <tr>                     <td cellpadding="0" cellspacing="0"            style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy            Unlocking!           </td>                    </tr>                   </table>                  </td>                 </tr>                 <tr>                  <td valign="top" cellpadding="0" cellspacing="0"         style="padding-top:20px;padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">                   <table cellspacing="0" cellpadding="0">                    <tr>                     <td valign="top" cellpadding="0" cellspacing="0"            style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;">            Note: Please            do            not reply to this email. Emails sent to this address will not be            answered</td>                    </tr>                    <tr>                     <td valign="top" cellpadding="0" cellspacing="0"            style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;">            Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com"             style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a>                     </td>                    </tr>                    <tr>                     <td valign="top" cellpadding="0" cellspacing="0"            style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;">            If you are            having            trouble viewing this email, you can update your outlook settings by <a             target="_blank"             href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error"             style="color: #39A3FA; text-decoration: underline;">clicking             here</a>.</td>                    </tr>                   </table>                  </td>                 </tr>                 <tr>                  <td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">                   <table width="100%" cellspacing="0" cellpadding="0">                    <tr>                     <td cellspacing="0" cellpadding="0" width="100%"            style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">            &copy; year Infopro Learning, Inc. All rights reserved           </td>                    </tr>                   </table>                  </td>                 </tr>                </table>               </td>              </tr>             </table>            </body>',620,getdate(),1)
END
GO

IF NOT EXISTS(select * from MailerTemplate where TemplateCode = 'COC')
Begin
INSERT INTO MailerTemplate Values ('Closing of the OKR cycle','COC','8 days left for closing the OKR cycle','<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD"> 
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!--[if !mso]><!-->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--<![endif]-->
<meta name="viewport" content="width=device-width">
<title>8 days before the end of planning session</title>
<style>
body {
-webkit-text-size-adjust: 100%;
margin: 0;
padding: 0;
border: 0px;
font-family: Calibri;
font-weight: 400;
font-size: 16px;
}

table,
tr,
td {
margin: 0px;
padding: 0px;
}
</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
<!--<![endif]-->

<!--[if !mso]><!-->
<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"
style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
<!--<![endif]-->
<!--[if (mso)|(IE)]>              
<table class="wrapper" width="100%" align="center"  style="background: #EEF5FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
<tr>
<td cellspacing="0" cellpadding="0" width="100%">
<img src="topBar" width="100%" style="display: block;" />
</td>
</tr>
<tr>
<td cellspacing="0" cellpadding="0">
<table align="center" width="600" cellspacing="0" cellpadding="0"
style="margin: 0px auto; color: #292929; font-weight: normal; ">
<tr>
<td cellpadding="0" cellspacing="0" style="padding: 20px 0 30px;">
<table width="100%" cellspacing="0" cellpadding="0">
<tr>
<td style="width: 50%;">
<a href="<URL>" target="_blank"
style="text-decoration: none;">
<img src="logo" style=" display: block;" />
</a>
</td>

<td align="right" cellpadding="0" cellspacing="0">
<table width="90px" cellspacing="0" cellpadding="0">
<tr>
<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
<a href="<iko>" target="_blank" style="text-decoration: none;">
<img src="linkedin" alt="arrow" />
</a>
</td>
<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
<a href="fb" target="_blank" style="text-decoration: none;">
<img src="facebook" alt="arrow" />
</a>
</td>
<td
style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
<a href="ijk" target="_blank"
style="text-decoration: none;">
<img src="instagram" alt="arrow" />
</a>
</td>
<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
<a href="terp" target="_blank" style="text-decoration: none;">
<img src="twitter" alt="arrow" />
</a>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;">
<table width="100%" cellspacing="0" cellpadding="0"
style="background-color: #ffffff;  border-radius: 6px;">
<tr>
<td cellpadding="0" cellspacing="0" style="padding: 33px 0px 21px;">
<table width="100%" cellspacing="0" cellpadding="0">
<tr>
<td align="left" cellpadding="0" cellspacing="0"
style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-left:38px;padding-right:35px;text-align: left;">
Hello <strong>Leader</strong>,
</td>
</tr>
<tr>
<td valign="top" cellpadding="0" cellspacing="0"
style="padding-left:38px;padding-right: 15px;">
<table width="100%" cellspacing="0" cellpadding="0">
<tr>
<td valign="top" width="62%" cellpadding="0" cellspacing="0"
style="width:62%">
<table width="100%" cellspacing="0" cellpadding="0">
<tr>
<td align="left" cellpadding="0" cellspacing="0"
style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 28px;padding-top:26px;text-align: left;">
Consider updating your OKRs before the end of this cycle on <strong>Closing</strong>. 
</td>
</tr>
<tr>
<td align="left" cellpadding="0" cellspacing="0"
style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 28px;text-align: left;"> 
After that date, you will have to raise a request with your manager to update them. 
</td>
</tr>
<tr>
<td cellpadding="0" cellspacing="0" align="left"
style="text-align: left;padding-top: 20px;">
<table cellspacing="0" cellpadding="0"
style="">
<tr>
<td align="center" width="181"
height="40" bgcolor="#39A3FA"
style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">
<a href="<RedirectOkR>"
style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">
View My OKRs
</a>
</td>
</tr>
</table>
<!-- <![endif]-->
</td>
</tr>
</table>

</td>
<td valign="top" cellpadding="0" cellspacing="0"
align="right" style="text-align: right;">
<img src="watch" alt="watch"
style="display:inline-block;max-width:100%;padding: 0px;margin: 0px">
</td>
</tr>
</table>

</td>
</tr>



</table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td cellpadding="0" cellspacing="0"
style="padding-bottom: 20px;padding-left:10px;padding-right:10px;border-bottom: 1px solid #c3cedc;">
<table cellspacing="0" cellpadding="0">
<tr>
<td cellpadding="0" cellspacing="0"
style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy
Unlocking!
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td valign="top" cellpadding="0" cellspacing="0"
style="padding-top:20px;padding-bottom: 20px;padding-left:10px;padding-right:10px;border-bottom: 1px solid #c3cedc;">
<table cellspacing="0" cellpadding="0">
<tr>
<td valign="top" cellpadding="0" cellspacing="0"
style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;">
Note: Please
do
not reply to this email. Emails sent to this address will not be
answered</td>
</tr>
<tr>
<td valign="top" cellpadding="0" cellspacing="0"
style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;">
Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com"
style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a>
</td>
</tr>
<tr>
<td valign="top" cellpadding="0" cellspacing="0"
style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;">
If you are
having
trouble viewing this email, you can update your outlook settings by <a
target="_blank"
href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error"
style="color: #39A3FA; text-decoration: underline;">clicking
here</a>.</td>
</tr>
</table>
</td>
</tr>
<tr>
<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px 0;">
<table width="100%" cellspacing="0" cellpadding="0">
<tr>
<td cellspacing="0" cellpadding="0" width="100%"
style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">
&copy; year Infopro Learning, Inc. All rights reserved
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
</body>',195,getdate(),1)
END
Go


IF NOT EXISTS(select * from MailerTemplate where TemplateCode = 'KRP')
Begin
INSERT INTO MailerTemplate Values ('Kr Pending','KRP','No update on KR since last 7 days','
<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Some assignements</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->

	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"
		style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              
			<table class="wrapper" width="100%" align="center"  style="background: #EEF5FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%">
				<img src="topBar" width="100%" style="display: block;" />
			</td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0"
					style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 0 30px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank"
											style="text-decoration: none;">
											<img src="logo" style=" display: block;" />
										</a>
									</td>

									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td
													style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="<iko>"
														target="_blank" style="text-decoration: none;">
														<img src="linkedin" alt="arrow" />
													</a>
												</td>
												<td
													style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank"
														style="text-decoration: none;">
														<img src="facebook" alt="arrow" />
													</a>
												</td>
												<td
													style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="instagram" target="_blank"
														style="text-decoration: none;">
														<img src="instagram" alt="arrow" />
													</a>
												</td>
												<td
													style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank"
														style="text-decoration: none;">
														<img src="twitter" alt="arrow" />
													</a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0"
								style="background-color: #ffffff;  border-radius: 6px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 33px 0px 21px;">
										<table width="100%" cellspacing="0" cellpadding="0">
											<tr>
												<td align="left" cellpadding="0" cellspacing="0"
													style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-left:38px;padding-right:35px;text-align: left;">
													Hello <strong>name</strong>,
												</td>
											</tr>
											<tr>
												<td valign="top" cellpadding="0" cellspacing="0"
													style="padding-left:38px;padding-right: 8px;">
													<table width="100%" cellspacing="0" cellpadding="0">
														<tr>
															<td valign="top" width="62%" cellpadding="0" cellspacing="0"
																style="width:62%">
																<table width="100%" cellspacing="0" cellpadding="0">
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0"
																			style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 2px;padding-top:26px;text-align: left;">
																			You had some assignements which you never
																			acknowledged. Do not worry, if you forgot
																			about them, you can still raise a reset
																			request and accept those.
																		</td>
																	</tr>
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0"
																			style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 2px;padding-top:26px;text-align: left;">
																			<strong>Here is a reminder of what was
																				archived for you:</strong>
																		</td>
																	</tr>
																	<tr>
																		<td valign="top" align="left" cellpadding="0"
																			cellspacing="0"
																			style="padding-bottom: 24px;">
																			<table cellspacing="0" cellpadding="0"
																				style="">
                                                                                <Gist>																				
																			</table>
																		</td>
																	</tr>
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0"
																			style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-top:0px;text-align: left;">

																			Should you wish to pick those assignment you
																			can do so here.
																		</td>
																	</tr>
																	<tr>
																		<td cellpadding="0" cellspacing="0" align="left"
																			style="text-align: left;padding-top: 20px;">																			
																			<table cellspacing="0" cellpadding="0"
																				style="">
																				<tr>
																					<td align="center" width="181"
																						height="40" bgcolor="#39A3FA"
																						style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">
																						<a href="<RedirectOkR>"
																							style="height:40px;color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">
																							Unlock Account
																						</a>
																					</td>
																				</tr>
																			</table>
																			<!-- <![endif]-->
																		</td>
																	</tr>
																</table>

															</td>
															<td valign="top" cellpadding="0" cellspacing="0"
																align="right" style="text-align: right;padding-top:8px">
																<img src="assignments" alt="watch"
																	style="display:inline-block;max-width:100%;padding: 0px;margin: 0px">
															</td>
														</tr>
													</table>

												</td>
											</tr>



										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0"
							style="padding-bottom: 20px;padding-left:10px;padding-right:10px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0"
										style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy
										Unlocking!
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0"
							style="padding-top:20px;padding-bottom: 20px;padding-left:10px;padding-right:10px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;">
										Note: Please
										do
										not reply to this email. Emails sent to this address will not be
										answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;">
										Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com"
											style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a>
									</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;">
										If you are
										having
										trouble viewing this email, you can update your outlook settings by <a
											target="_blank"
											href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error"
											style="color: #39A3FA; text-decoration: underline;">clicking
											here</a>.
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px 0;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%"
										style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">
										&copy; 2021 Infopro Learning, Inc. All rights reserved
									</td>
								</tr>
							</table>
						</td>
					</tr>

				</table>
			</td>
		</tr>
	</table>
</body>',195,getdate(),1)
END
Go

IF NOT EXISTS(select * from MailerTemplate where TemplateCode = 'COKPS')
Begin
INSERT INTO MailerTemplate Values ('Contributors With pending Status','COKPS','Contributor has not taken an action since 3 days','<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>  <html xmlns="http://www.w3.org/1999/xhtml" class="ie">     <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
	<!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
			<title/>
			<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
				<!--[if !mso]><!-->
				<meta http-equiv="X-UA-Compatible" content="IE=edge">
					<!--<![endif]-->
					<meta name="viewport" content="width=device-width">
						<title>2 days before the end of planning session</title>
						<style>body { -webkit-text-size-adjust: 100%; margin: 0; padding: 0; border: 0px; font-family: Calibri; font-weight: 400; font-size: 16px; } table, tr, td { margin: 0px; padding: 0px; }</style>
					</head>
					<!--[if mso]>        <body class="mso" style="padding:0px;margin: 0px;">           <![endif]-->
					<!--[if !mso]><!-->
					<body style="padding:0px;margin: 0px;">
						<!--<![endif]-->
						<!--[if !mso]><!-->
						<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #EEF5FF; Margin: 0 auto; padding:0px;">
							<!--<![endif]-->
							<!--[if (mso)|(IE)]>                   <table class="wrapper" width="100%" align="center"  style="background: #EEF5FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
							<tr>
								<td cellspacing="0" cellpadding="0" width="100%">
									<img src="topBar" width="100%" style="display: block;"/>
								</td>
							</tr>
							<tr>
								<td cellspacing="0" cellpadding="0">
									<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; ">
										<tr>
											<td cellpadding="0" cellspacing="0" style="padding: 20px 0 40px;">
												<table width="100%" cellspacing="0" cellpadding="0">
													<tr>
														<td style="width: 50%;">
															<a href="<url>" target="_blank" style="text-decoration: none;">                  <img src="logo" style=" display: block;"/>
																</a>
															</td>
															<td style="text-align: right; vertical-align: bottom; font-family: Calibri; ">
																<a href="<url>" target="_blank" style="text-decoration: none; color: #39A3FA;">                  <img src="login" alt="arrow"/>
																	</a>
																</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;">
														<table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff;  border-radius: 6px;">
															<tr>
																<td cellpadding="0" cellspacing="0" style="padding: 33px 0px 21px;">
																	<table width="100%" cellspacing="0" cellpadding="0">
																		<tr>
																			<td align="left" cellpadding="0" cellspacing="0" style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-left:38px;padding-right:35px;text-align: left;">Hello <strong>name</strong>,                      
																			</td>
																		</tr>
																		<tr>
																			<td valign="top" cellpadding="0" cellspacing="0" style="padding-left:38px;padding-right: 15px;">
																				<table width="100%" cellspacing="0" cellpadding="0">
																					<tr>
																						<td valign="top" width="62%" cellpadding="0" cellspacing="0" style="width:62%">
																							<table width="100%" cellspacing="0" cellpadding="0">
																								<tr>
																									<td align="left" cellpadding="0" cellspacing="0" style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 28px;padding-top:26px;text-align: left;">You still have gotten no reply on the assignment(s). You might need to nudge your contributors, or risk the assignments going into archive mode!.</td>
																								</tr>
																								<tr>
																									<td align="left" cellpadding="0" cellspacing="0" style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-top:0px;text-align: left;">
																										<strong>Here is some help:</strong>
																									</td>
																								</tr>
																								<tr>
																									<td valign="top" align="left" cellpadding="0" cellspacing="0">
																										<table cellspacing="0" cellpadding="0" style="">
																											<Gist>
																											</table>
																										</td>
																									</tr>
																									<tr>
																										<td cellpadding="0" cellspacing="0" align="left" style="text-align: left;padding-top: 20px;">
																											<table cellspacing="0" cellpadding="0" style="">
																												<tr>
																													<td align="center" width="181" height="40" bgcolor="#39A3FA" style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">
																														<a href="<RedirectOkR>" style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">View My OKRs</a>
																														</td>
																													</tr>
																												</table>
																											</td>
																										</tr>
																									</table>
																								</td>
																								<td valign="top" cellpadding="0" cellspacing="0" align="right" style="text-align: right;">
																									<img src="watch" alt="watch" style="display:inline-block;max-width:100%;padding: 0px;margin: 0px">
																									</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:10px;padding-right:10px;border-bottom: 1px solid #c3cedc;">
																	<table cellspacing="0" cellpadding="0">
																		<tr>
																			<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking!</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td valign="top" cellpadding="0" cellspacing="0" style="padding-top:20px;padding-bottom: 20px;padding-left:10px;padding-right:10px;border-bottom: 1px solid #c3cedc;">
																	<table cellspacing="0" cellpadding="0">
																		<tr>
																			<td valign="top" cellpadding="0" cellspacing="0" style="padding-bottom:10px;font-size:14px;font-family: Calibri,Arial;vertical-align: top;">Note: Please do not reply to this email. Emails sent to this address will not be answered.</td>
																		</tr>
																		<tr>
																			<td valign="top" cellpadding="0" cellspacing="0" style="padding-bottom:10px;font-size:14px;font-family: Calibri,Arial;">Help/Feedback - Write to us at                 <a href="mailto:<supportEmailId>" style="color: #39A3FA; text-decoration: underline;">                  <supportEmailId>
																						</a>
																					</td>
																				</tr>
																				<tr>
																					<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;">If you are having trouble viewing this email, you can update your outlook settings by                 <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.                              </td>
																				</tr>
																			</table>
																		</td>
																	</tr>
																	<tr>
																		<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px 10px 22px 10px;">
																			<table width="100%" cellspacing="0" cellpadding="0">
																				<tr>
																					<td cellpadding="0" cellspacing="0" style="width: 50%;">
																						<a href="<unlocklink>" target="_blank" style="text-decoration: none;">                  <img src="footer" style="display: block;"/>
																							</a>
																						</td>
																						<td cellpadding="0" cellspacing="0" align="right">
																							<a href="<linkedin>" target="_blank" style="text-decoration: none; color: #39A3FA;">                  <img src="linkedin" alt="linkden"/>
																								</a>
																							</td>
																						</tr>
																					</table>
																				</td>
																			</tr>
																			<tr>
																				<td valign="top" cellpadding="0" cellspacing="0" style="padding-bottom: 20px;text-align: center;vertical-align: top;" align="center">
																					<table width="auto" cellspacing="0" cellpadding="0" style="Margin:0 auto">
																						<tr>
																							<td cellpadding="0" cellspacing="0" style="vertical-align:top;font-size: 14px;font-family: Calibri,Arial;padding-right: 18px;padding-top: 0;" valign="top">
																								<a href="<pri>" target="_blank" style="color: #39A3FA; text-decoration: underline;">Privacy Policy</a>
																								</td>
																								<td align="center" cellpadding="0" cellspacing="0" style="padding-top:0px;font-size: 14px;font-family: Calibri,Arial;text-align: center;padding-right: 18px;vertical-align: top;" valign="top">
																									<table width="auto" cellspacing="0" cellpadding="0" style="">
																										<tr>
																											<td cellpadding="0" cellspacing="0" style="padding-top: 8px;">
																												<img style="display:block;" src="dot" alt="sep"/>
																											</td>
																										</tr>
																									</table>
																								</td>
																								<td cellpadding="0" cellspacing="0" style="font-size: 14px;font-family: Calibri,Arial;padding-right: 18px;vertical-align:top;" valign="top">
																									<a href="<tos>" target="_blank" style="color: #39A3FA; text-decoration: underline;">Terms of Use</a>
																									</td>
																									<!-- <td align="center" cellpadding="0" cellspacing="0" style="padding-top:0px;font-size: 14px;font-family: Calibri,Arial;text-align: center;padding-right: 18px;vertical-align: top;" valign="top"> -->
																									<!-- <table width="auto" cellspacing="0" cellpadding="0" style=""> -->
																									<!-- <tr> -->
																									<!-- <td cellpadding="0" cellspacing="0" style="padding-top: 8px;"> -->
																									<!-- <img style="display:block;" src="dot" alt="sep"/> -->
																									<!-- </td> -->
																									<!-- </tr> -->
																									<!-- </table> -->
																									<!-- </td> -->
																									<!-- <td valign="top" cellpadding="0" cellspacing="0" style="font-size: 14px;font-family: Calibri,Arial;padding-right: 18px;vertical-align:top;"> -->
																									<!-- <a href="<contacts>" target="_blank" style="color: #39A3FA; text-decoration: underline;">Contacts</a> -->
																									<!-- </td> -->
																									<!-- <td align="center" cellpadding="0" cellspacing="0" style="padding-top:0px;font-size: 14px;font-family: Calibri,Arial;text-align: center;padding-right: 18px;vertical-align: top;" valign="top"> -->
																									<!-- <table width="auto" cellspacing="0" cellpadding="0" style=""> -->
																									<!-- <tr> -->
																									<!-- <td cellpadding="0" cellspacing="0" style="padding-top: 8px;"> -->
																									<!-- <img style="display:block;" src="dot" alt="sep"/> -->
																									<!-- </td> -->
																									<!-- </tr> -->
																									<!-- </table> -->
																									<!-- </td> -->
																									<!-- <td valign="top" cellpadding="0" cellspacing="0" style="font-size: 14px;vertical-align:top;font-family: Calibri,Arial;"> -->
																									<!-- <a href="<TechS>" target="_blank" style="color: #39A3FA; text-decoration: underline;">Technical Support</a> -->
																									<!-- </td> -->
																								</tr>
																							</table>
																						</td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																		<tr>
																			<td cellspacing="0" cellpadding="0" width="100%" bgcolor="#F1F3F4" align="center" style="padding:10px ;text-align: center;background-color: #F1F3F4;font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">&copy; yer Infopro Learning, 103 Morgan Lane, Suite 102, Plainsboro, NJ, USA. All rights reserved</td>
																		</tr>
																	</table>
																</body>',195,getdate(),1)
END
Go


IF (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = N'dbo' AND  TABLE_NAME = N'MailerTemplate'))
BEGIN
IF EXISTS(SELECT TOP 1 * FROM [MailerTemplate] where [TemplateCode]='DIM')
BEGIN
update MailerTemplate set Body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>When Anurag accepts email to john</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->

	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"
		style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              
			<table class="wrapper" width="100%" align="center"  style="background: #EEF5FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%">
				<img src="topBar" width="100%" style="display: block;" />
			</td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0"
					style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank"
											style="text-decoration: none;">
											<img src="logo" style=" display: block;" />
										</a>
									</td>

									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td
													style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="<iko>"
														target="_blank" style="text-decoration: none;">
														<img src="linkedin" alt="arrow" />
													</a>
												</td>
												<td
													style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank"
														style="text-decoration: none;">
														<img src="facebook" alt="arrow" />
													</a>
												</td>
												<td
													style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank"
														style="text-decoration: none;">
														<img src="instagram" alt="arrow" />
													</a>
												</td>
												<td
													style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank"
														style="text-decoration: none;">
														<img src="twitter" alt="arrow" />
													</a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;">
							<table width="100%" cellspacing="0" cellpadding="0"
								style="background-color: #ffffff;  border-radius: 6px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 26px 0px 21px;">
										<table width="100%" cellspacing="0" cellpadding="0">

											<tr>
												<td valign="top" cellpadding="0" cellspacing="0"
													style="padding-left:30px;padding-right: 28px;">
													<table width="100%" cellspacing="0" cellpadding="0">
														<tr>
															<td valign="top" width="60%" cellpadding="0" cellspacing="0"
																style="width:60%">
																<table width="100%" cellspacing="0" cellpadding="0">
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0"
																			style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;text-align: left;">
																			Hello <strong>name</strong>,
																		</td>
																	</tr>
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0"
																			style="font-size:16px;line-height:21px;color:#292929;font-family: Calibri,Arial;padding-top:19px;text-align: left;">
																			Some of your <strong>OKRs</strong> are in
																			draft mode, and
																			unless
																			you finalize them, they will be archived
																			when the planning session ends
																		</td>
																	</tr>
																	<tr>
																		<td cellpadding="0" cellspacing="0" align="left"
																			style="text-align: left;padding-top: 28px;">

																			
																			<table cellspacing="0" cellpadding="0"
																				style="">
																				<tr>
																					<td align="center" width="181"
																						height="40" bgcolor="#39A3FA"
																						style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">
																						<a href="<Button>"
																							style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">
																							View My OKRs
																						</a>
																					</td>
																				</tr>
																			</table>
																			<!-- <![endif]-->
																		</td>
																	</tr>
																</table>

															</td>
															<td valign="top" cellpadding="0" cellspacing="0"
																align="right" style="text-align: right;padding-top:8px">
																<img width="206" height="186"
																	src="messageInterm" alt="hand-shake"
																	style="display:block;max-width:100%;padding: 0px;margin: 0px">
															</td>
														</tr>
													</table>

												</td>
											</tr>



										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0"
							style="padding:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0"
										style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy
										Unlocking!
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0"
							style="padding:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;">
										Note: Please
										do
										not reply to this email. Emails sent to this address will not be
										answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;">
										Help/Feedback - Write to us at <a href="mailto:supportEmailId"
											style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a>
									</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;">
										If you are
										having
										trouble viewing this email, you can update your outlook settings by <a
											target="_blank"
											href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error"
											style="color: #39A3FA; text-decoration: underline;">clicking
											here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%"
										style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">
										&copy; year Infopro Learning, Inc. All rights reserved
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>' where TemplateCode='DIM'
END 
END
GO

IF (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = N'dbo' AND  TABLE_NAME = N'MailerTemplate'))
BEGIN
IF EXISTS(SELECT TOP 1 * FROM [MailerTemplate] where [TemplateCode]='DOS')
BEGIN
update MailerTemplate set Body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Okr Assignment Complete</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->

	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"
		style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              
			<table class="wrapper" width="100%" align="center"  style="background: #EEF5FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%">
				<img src="topBar" width="100%" style="display: block;" />
			</td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0"
					style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank"
											style="text-decoration: none;">
											<img src="logo" style=" display: block;" />
										</a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td
													style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="<iko>"
														target="_blank" style="text-decoration: none;">
														<img src="linkedin" alt="arrow" />
													</a>
												</td>
												<td
													style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank"
														style="text-decoration: none;">
														<img src="facebook" alt="arrow" />
													</a>
												</td>
												<td
													style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank"
														style="text-decoration: none;">
														<img src="instagram" alt="arrow" />
													</a>
												</td>
												<td
													style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank"
														style="text-decoration: none;">
														<img src="twitter" alt="arrow" />
													</a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td align="left" cellpadding="0" cellspacing="0"
							style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 5px;padding-left: 20px;padding-right:20px;">
							Hello <strong>name,</strong>
						</td>
					</tr>
					<tr>
						<td align="left" cellpadding="0" cellspacing="0"
							style="font-size:24px;line-height:29px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-left: 20px;padding-right:20px;">
							<strong>Today is the last day of Planning.</strong>
						</td>
					</tr>
					<tr>
						<td align="left" cellpadding="0" cellspacing="0"
							style="font-size:16px;line-height:29px;color:#292929;font-family: Calibri,Arial;padding-bottom: 44px;padding-left: 20px;padding-right:20px;">
							These OKRs left in the draft stage will be soon archived.
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" valign="middle" style="padding-bottom: 18px;padding-left: 20px;padding-right:20px;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" valign="middle" style="padding-right: 10px;">
										<img style="display: block;" src="infoIcon" alt="info" />
									</td>
									<td valign="middle" align="left" cellpadding="0" cellspacing="0"
										style="font-size:18px;line-height:18px;color:#292929;font-family: Calibri,Arial;">
										<strong>count OKR(s) Saved as Draft</strong>
									</td>

								</tr>
							</table>
						</td>

					</tr>
					<tr>
						<td cellspacing="0" cellpadding="0" style="padding-left: 20px;padding-right:20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<!--row 1 start here-->
								Listing
								<!--row 1 end here-->
								<!--row 2 start here-->
								
								<!--row 2 end here-->
								<!--row 3 start here-->
								
								<!--row 3 end here-->
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" align="left" style="text-align: left;padding:20px;">
							
							<table cellspacing="0" cellpadding="0" style="">
								<tr>
									<td align="center" width="141" height="40" bgcolor="#39A3FA"
										style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">
										<a href="<Button>"
											style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">
											View All
										</a>
									</td>
								</tr>
							</table>
							<!-- <![endif]-->
						</td>
					</tr>					
					<tr>
						<td cellpadding="0" cellspacing="0"
							style="padding:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0"
										style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy
										Unlocking!
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0"
							style="padding:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;">
										Note: Please
										do
										not reply to this email. Emails sent to this address will not be
										answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;">
										Help/Feedback - Write to us at <a href="mailto:supportEmailId"
											style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a>
									</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;">
										If you are
										having
										trouble viewing this email, you can update your outlook settings by <a
											target="_blank"
											href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error"
											style="color: #39A3FA; text-decoration: underline;">clicking
											here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%"
										style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">
										&copy; year Infopro Learning, Inc. All rights reserved
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>' where TemplateCode='DOS'
END 
END
GO

IF (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = N'dbo' AND  TABLE_NAME = N'MailerTemplate'))
BEGIN
IF NOT EXISTS(SELECT TOP 1 * FROM [MailerTemplate] where [TemplateCode]='DWS')
BEGIN

INSERT [dbo].[MailerTemplate] ([TemplateName], [TemplateCode], [Subject], [Body], [CreatedBy], [CreatedOn], [isActive]) VALUES (N'Draft OKR Weekly Summary', N'DWS', N'<username>, pick up your incomplete OKRs from where you left last time', '<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Okr Assignment Complete</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->

	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"
		style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              
			<table class="wrapper" width="100%" align="center"  style="background: #EEF5FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%">
				<img src="topBar" width="100%" style="display: block;" />
			</td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0"
					style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank"
											style="text-decoration: none;">
											<img src="logo" style=" display: block;" />
										</a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td
													style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="<iko>"
														target="_blank" style="text-decoration: none;">
														<img src="linkedin" alt="arrow" />
													</a>
												</td>
												<td
													style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank"
														style="text-decoration: none;">
														<img src="facebook" alt="arrow" />
													</a>
												</td>
												<td
													style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank"
														style="text-decoration: none;">
														<img src="instagram" alt="arrow" />
													</a>
												</td>
												<td
													style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank"
														style="text-decoration: none;">
														<img src="twitter" alt="arrow" />
													</a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td align="left" cellpadding="0" cellspacing="0"
							style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 5px; padding-left: 20px;padding-right:20px;">
							Hello <strong>name,</strong>
						</td>
					</tr>
					<tr>
						<td align="left" cellpadding="0" cellspacing="0"
							style="font-size:24px;line-height:29px;color:#292929;font-family: Calibri,Arial;padding-bottom: 44px;padding-left: 20px;padding-right:20px;">
							<strong>These OKRs left in the draft stage will be soon archived:</strong>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" valign="middle" style="padding-bottom: 18px;padding-left: 20px;padding-right:20px;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" valign="middle" style="padding-right: 10px;">
										<img style="display: block;" src="infoIcon" alt="info" />
									</td>
									<td valign="middle" align="left" cellpadding="0" cellspacing="0"
										style="font-size:18px;line-height:18px;color:#292929;font-family: Calibri,Arial;">
										<strong>count OKR(s) Saved as Draft</strong>
									</td>

								</tr>
							</table>
						</td>

					</tr>
					<tr>
						<td cellspacing="0" cellpadding="0" style="padding-left: 20px;padding-right:20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<!--row 1 start here-->
								Listing
								<!--row 1 end here-->
								<!--row 2 start here-->
								
								<!--row 2 end here-->
								<!--row 3 start here-->
								
								<!--row 3 end here-->
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" align="left" style="text-align: left;padding: 20px;">
							
							<table cellspacing="0" cellpadding="0" style="">
								<tr>
									<td align="center" width="141" height="40" bgcolor="#39A3FA"
										style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">
										<a href="<Button>"
											style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">
											View All
										</a>
									</td>
								</tr>
							</table>
							<!-- <![endif]-->
						</td>
					</tr>					
					<tr>
						<td cellpadding="0" cellspacing="0"
							style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0"
										style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy
										Unlocking!
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0"
							style="padding:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;">
										Note: Please
										do
										not reply to this email. Emails sent to this address will not be
										answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;">
										Help/Feedback - Write to us at <a href="mailto:supportEmailId"
											style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a>
									</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;">
										If you are
										having
										trouble viewing this email, you can update your outlook settings by <a
											target="_blank"
											href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error"
											style="color: #39A3FA; text-decoration: underline;">clicking
											here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%"
										style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">
										&copy; year Infopro Learning, Inc. All rights reserved
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>', 331, CAST(N'2021-06-28 07:48:47.727' AS DateTime), 1)
END 
END
GO

IF (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = N'dbo' AND  TABLE_NAME = N'MailerTemplate'))
BEGIN
IF NOT EXISTS(SELECT TOP 1 * FROM [MailerTemplate] where [TemplateCode]='DPS')
BEGIN

INSERT [dbo].[MailerTemplate] ([TemplateName], [TemplateCode], [Subject], [Body], [CreatedBy], [CreatedOn], [isActive]) VALUES (N'Draft OKR Post Planning Session', N'DPS', N'<username>, the planning session is closed - draft OKRs are auto archived', '<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>When Anurag accepts email to john</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->

	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"
		style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              
			<table class="wrapper" width="100%" align="center"  style="background: #EEF5FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%">
				<img src="topBar" width="100%" style="display: block;" />
			</td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0"
					style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank"
											style="text-decoration: none;">
											<img src="logo" style=" display: block;" />
										</a>
									</td>

									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td
													style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="<iko>"
														target="_blank" style="text-decoration: none;">
														<img src="linkedin" alt="arrow" />
													</a>
												</td>
												<td
													style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank"
														style="text-decoration: none;">
														<img src="facebook" alt="arrow" />
													</a>
												</td>
												<td
													style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank"
														style="text-decoration: none;">
														<img src="instagram" alt="arrow" />
													</a>
												</td>
												<td
													style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank"
														style="text-decoration: none;">
														<img src="twitter" alt="arrow" />
													</a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;">
							<table width="100%" cellspacing="0" cellpadding="0"
								style="background-color: #ffffff;  border-radius: 6px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 26px 0px 21px;">
										<table width="100%" cellspacing="0" cellpadding="0">

											<tr>
												<td valign="top" cellpadding="0" cellspacing="0"
													style="padding-left:30px;padding-right: 28px;">
													<table width="100%" cellspacing="0" cellpadding="0">
														<tr>
															<td valign="top" width="60%" cellpadding="0" cellspacing="0"
																style="width:60%">
																<table width="100%" cellspacing="0" cellpadding="0">
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0"
																			style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;text-align: left;">
																			Hello <strong>name</strong>,
																		</td>
																	</tr>
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0"
																			style="font-size:16px;line-height:21px;color:#292929;font-family: Calibri,Arial;padding-top:19px;text-align: left;">
																			Your draft OKRs are auto archived! You can raise a request to your manager for unlocking the archived OKRs.
																		</td>
																	</tr>
																	<tr>
																		<td cellpadding="0" cellspacing="0" align="left"
																			style="text-align: left;padding-top: 28px;">

																			
																			<table cellspacing="0" cellpadding="0"
																				style="">
																				<tr>
																					<td align="center" width="181"
																						height="40" bgcolor="#39A3FA"
																						style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">
																						<a href="<Button>"
																							style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">
																							Get Unlocked
																						</a>
																					</td>
																				</tr>
																			</table>
																			<!-- <![endif]-->
																		</td>
																	</tr>
																</table>

															</td>
															<td valign="top" cellpadding="0" cellspacing="0"
																align="right" style="text-align: right;padding-top:8px">
																<img width="206" height="186"
																	src="messageInterm" alt="hand-shake"
																	style="display:block;max-width:100%;padding: 0px;margin: 0px">
															</td>
														</tr>
													</table>

												</td>
											</tr>

										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0"
							style="padding:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0"
										style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy
										Unlocking!
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0"
							style="padding:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;">
										Note: Please
										do
										not reply to this email. Emails sent to this address will not be
										answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;">
										Help/Feedback - Write to us at <a href="mailto:supportEmailId"
											style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a>
									</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;">
										If you are
										having
										trouble viewing this email, you can update your outlook settings by <a
											target="_blank"
											href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error"
											style="color: #39A3FA; text-decoration: underline;">clicking
											here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%"
										style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">
										&copy; year Infopro Learning, Inc. All rights reserved
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>', 331, CAST(N'2021-06-30 07:48:47.727' AS DateTime), 1)
END 
END
GO


IF EXISTS(select * from MailerTemplate where TemplateCode = 'COC')
Begin
update [dbo].[MailerTemplate]
set Subject='8 days left for closing the OKR cycle',body='
<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD"> 
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!--[if !mso]><!-->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--<![endif]-->
<meta name="viewport" content="width=device-width">
<title>8 days before the end of planning session</title>
<style>
body {
-webkit-text-size-adjust: 100%;
margin: 0;
padding: 0;
border: 0px;
font-family: Calibri;
font-weight: 400;
font-size: 16px;
}

table,
tr,
td {
margin: 0px;
padding: 0px;
}
</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
<!--<![endif]-->

<!--[if !mso]><!-->
<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"
style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
<!--<![endif]-->
<!--[if (mso)|(IE)]>              
<table class="wrapper" width="100%" align="center"  style="background: #EEF5FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
<tr>
<td cellspacing="0" cellpadding="0" width="100%">
<img src="topBar" width="100%" style="display: block;" />
</td>
</tr>
<tr>
<td cellspacing="0" cellpadding="0">
<table align="center" width="600" cellspacing="0" cellpadding="0"
style="margin: 0px auto; color: #292929; font-weight: normal; ">
<tr>
<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">
<table width="100%" cellspacing="0" cellpadding="0">
<tr>
<td style="width: 50%;">
<a href="<URL>" target="_blank"
style="text-decoration: none;">
<img src="logo" style=" display: block;" />
</a>
</td>

<td align="right" cellpadding="0" cellspacing="0">
<table width="90px" cellspacing="0" cellpadding="0">
<tr>
<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
<a href="<iko>" target="_blank" style="text-decoration: none;">
<img src="linkedin" alt="arrow" />
</a>
</td>
<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
<a href="fb" target="_blank" style="text-decoration: none;">
<img src="facebook" alt="arrow" />
</a>
</td>
<td
style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
<a href="ijk" target="_blank"
style="text-decoration: none;">
<img src="instagram" alt="arrow" />
</a>
</td>
<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
<a href="terp" target="_blank" style="text-decoration: none;">
<img src="twitter" alt="arrow" />
</a>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;">
<table width="100%" cellspacing="0" cellpadding="0"
style="background-color: #ffffff;  border-radius: 6px;">
<tr>
<td cellpadding="0" cellspacing="0" style="padding: 33px 0px 21px;">
<table width="100%" cellspacing="0" cellpadding="0">
<tr>
<td align="left" cellpadding="0" cellspacing="0"
style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-left:38px;padding-right:35px;text-align: left;">
Hello <strong>Leader</strong>,
</td>
</tr>
<tr>
<td valign="top" cellpadding="0" cellspacing="0"
style="padding-left:38px;padding-right: 15px;">
<table width="100%" cellspacing="0" cellpadding="0">
<tr>
<td valign="top" width="62%" cellpadding="0" cellspacing="0"
style="width:62%">
<table width="100%" cellspacing="0" cellpadding="0">
<tr>
<td align="left" cellpadding="0" cellspacing="0"
style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 28px;padding-top:26px;text-align: left;">
Consider updating your OKRs before the end of this cycle on <strong>Closing</strong>. 
</td>
</tr>
<tr>
<td align="left" cellpadding="0" cellspacing="0"
style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 28px;text-align: left;"> 
After that date, you will have to raise a request with your manager to update them. 
</td>
</tr>
<tr>
<td cellpadding="0" cellspacing="0" align="left"
style="text-align: left;padding-top: 20px;">
<table cellspacing="0" cellpadding="0"
style="">
<tr>
<td align="center" width="181"
height="40" bgcolor="#39A3FA"
style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">
<a href="<RedirectOkR>"
style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">
Yes, Iwill do it now
</a>
</td>
</tr>
</table>
<!-- <![endif]-->
</td>
</tr>
</table>

</td>
<td valign="top" cellpadding="0" cellspacing="0"
align="right" style="text-align: right;">
<img src="watch" alt="watch"
style="display:inline-block;max-width:100%;padding: 0px;margin: 0px">
</td>
</tr>
</table>

</td>
</tr>



</table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td cellpadding="0" cellspacing="0"
style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
<table cellspacing="0" cellpadding="0">
<tr>
<td cellpadding="0" cellspacing="0"
style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy
Unlocking!
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td valign="top" cellpadding="0" cellspacing="0"
style="padding:20px;border-bottom: 1px solid #c3cedc;">
<table cellspacing="0" cellpadding="0">
<tr>
<td valign="top" cellpadding="0" cellspacing="0"
style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;">
Note: Please
do
not reply to this email. Emails sent to this address will not be
answered</td>
</tr>
<tr>
<td valign="top" cellpadding="0" cellspacing="0"
style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;">
Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com"
style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a>
</td>
</tr>
<tr>
<td valign="top" cellpadding="0" cellspacing="0"
style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;">
If you are
having
trouble viewing this email, you can update your outlook settings by <a
target="_blank"
href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error"
style="color: #39A3FA; text-decoration: underline;">clicking
here</a>.</td>
</tr>
</table>
</td>
</tr>
<tr>
<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
<table width="100%" cellspacing="0" cellpadding="0">
<tr>
<td cellspacing="0" cellpadding="0" width="100%"
style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">
&copy; year Infopro Learning, Inc. All rights reserved
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
</body>'

where TemplateCode='COC'
End
Go

IF NOT EXISTS(select * from MailerTemplate where TemplateCode = 'KRP7')
Begin
INSERT INTO [dbo].[MailerTemplate]
           ([TemplateName]
           ,[TemplateCode]
           ,[Subject]
           ,[Body]
           ,[CreatedBy]
           ,[CreatedOn]
           ,[isActive])
     VALUES
           ('Kr Pending'
           ,'KRP7'
           ,'No update on KR since last 7 days'
           ,'<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Change Contributors</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->

	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"
		style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              
			<table class="wrapper" width="100%" align="center"  style="background: #EEF5FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%">
				<img src="topBar" width="100%" style="display: block;" />
			</td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0"
					style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 0 30px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank"
											style="text-decoration: none;">
											<img src="logo" style=" display: block;" />
										</a>
									</td>

									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td
													style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="<iko>" 
														target="_blank" style="text-decoration: none;">
														<img src="linkedin" alt="arrow" />
													</a>
												</td>
												<td
													style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank"
														style="text-decoration: none;">
														<img src="facebook" alt="arrow" />
													</a>
												</td>
												<td
													style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href=="ijk" target="_blank"
														style="text-decoration: none;">
														<img src="instagram" alt="arrow" />
													</a>
												</td>
												<td
													style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank"
														style="text-decoration: none;">
														<img src="twitter" alt="arrow" />
													</a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0"
								style="background-color: #ffffff;  border-radius: 6px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 33px 0px 40px;">
										<table width="100%" cellspacing="0" cellpadding="0">
											<tr>
												<td align="left" cellpadding="0" cellspacing="0"
													style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-left:38px;padding-right:35px;text-align: left;">
													Hello <strong>name</strong>,
												</td>
											</tr>
											<tr>
												<td valign="top" cellpadding="0" cellspacing="0"
													style="padding-left:38px;padding-right: 15px;">
													<table width="100%" cellspacing="0" cellpadding="0">
														<tr>
															<td valign="top" width="60%" cellpadding="0" cellspacing="0"
																style="width:60%">
																<table width="100%" cellspacing="0" cellpadding="0">
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0"
																			style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-top:14px;text-align: left;">
																			<strong>Clearly you are stuck with your
																				OKRs.</strong>
																		</td>
																	</tr>
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0"
																			style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 19px;padding-top:0px;text-align: left;">

																			Why donot you connect with your team leader,
																			see what kind of help you can get there?
																		</td>
																	</tr>

																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0"
																			style="font-size:16px;line-height:21px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-top:0px;text-align: left;">
																			…and remember:
																		</td>
																	</tr>
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0"
																			style="font-size:16px;line-height:24px;color:#CB00FF;font-family: Calibri,Arial;padding-bottom: 20px;padding-top:0px;text-align: left;">
																			<strong>“The secret to getting ahead is
																				getting
																				started”</strong>
																		</td>
																	</tr>

																</table>

															</td>
															<td valign="top" cellpadding="0" cellspacing="0"
																align="right" style="text-align: right;">
																<img src="hand-shake2" alt="hand-shake"
																	style="display:inline-block;max-width:100%;padding: 0px;margin: 0px">
															</td>
														</tr>
													</table>

												</td>
											</tr>
											<tr>
												<td align="left" cellpadding="0" cellspacing="0"
													style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-left:38px;padding-right:35px;text-align: left;">
													We have not seen an update on your KR/OKR <a href="<RedirectOkR>" traget="_blank" style="font-size:16px;font-family: Calibri,Arial;font-weight:bold;color: #39A3FA;text-decoration: none;">ObjectiveOKR</a> assignment done on <strong>OKRDate</strong> for the last 7 days.
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0"
							style="padding-bottom: 20px;padding-left:10px;padding-right:10px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0"
										style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy
										Unlocking!
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0"
							style="padding-top:20px;padding-bottom: 20px;padding-left:10px;padding-right:10px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;">
										Note: Please
										do
										not reply to this email. Emails sent to this address will not be
										answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;">
										Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com"
											style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a>
									</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;">
If you are
having
trouble viewing this email, you can update your outlook settings by <a
target="_blank"
href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error"
style="color: #39A3FA; text-decoration: underline;">clicking
here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px 0;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%"
										style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">
										&copy; year Infopro Learning, Inc. All rights reserved
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'
           ,195
           ,getdate()
           ,1)
End
GO


IF NOT EXISTS(select * from MailerTemplate where TemplateCode = 'KRP14')
Begin
INSERT INTO [dbo].[MailerTemplate]
           ([TemplateName]
           ,[TemplateCode]
           ,[Subject]
           ,[Body]
           ,[CreatedBy]
           ,[CreatedOn]
           ,[isActive])
     VALUES
           ('Kr Pending'
           ,'KRP14'
           ,'No update on KR since last 14 days'
           ,'<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Change Contributors</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->

	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"
		style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              
			<table class="wrapper" width="100%" align="center"  style="background: #EEF5FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%">
				<img src="topBar" width="100%" style="display: block;" />
			</td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0"
					style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 0 30px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank"
											style="text-decoration: none;">
											<img src="logo" style=" display: block;" />
										</a>
									</td>

									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td
													style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="<iko>" 
														target="_blank" style="text-decoration: none;">
														<img src="linkedin" alt="arrow" />
													</a>
												</td>
												<td
													style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank"
														style="text-decoration: none;">
														<img src="facebook" alt="arrow" />
													</a>
												</td>
												<td
													style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href=="ijk" target="_blank"
														style="text-decoration: none;">
														<img src="instagram" alt="arrow" />
													</a>
												</td>
												<td
													style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank"
														style="text-decoration: none;">
														<img src="twitter" alt="arrow" />
													</a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0"
								style="background-color: #ffffff;  border-radius: 6px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 33px 0px 40px;">
										<table width="100%" cellspacing="0" cellpadding="0">
											<tr>
												<td align="left" cellpadding="0" cellspacing="0"
													style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-left:38px;padding-right:35px;text-align: left;">
													Hello <strong>name</strong>,
												</td>
											</tr>
											<tr>
												<td valign="top" cellpadding="0" cellspacing="0"
													style="padding-left:38px;padding-right: 15px;">
													<table width="100%" cellspacing="0" cellpadding="0">
														<tr>
															<td valign="top" width="60%" cellpadding="0" cellspacing="0"
																style="width:60%">
																<table width="100%" cellspacing="0" cellpadding="0">
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0"
																			style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-top:14px;text-align: left;">
																			<strong>Clearly you are stuck with your
																				OKRs.</strong>
																		</td>
																	</tr>
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0"
																			style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 19px;padding-top:0px;text-align: left;">

																			Why donot you connect with your team leader,
																			see what kind of help you can get there?
																		</td>
																	</tr>

																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0"
																			style="font-size:16px;line-height:21px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-top:0px;text-align: left;">
																			…and remember:
																		</td>
																	</tr>
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0"
																			style="font-size:16px;line-height:24px;color:#CB00FF;font-family: Calibri,Arial;padding-bottom: 20px;padding-top:0px;text-align: left;">
																			<strong>“The secret to getting ahead is
																				getting
																				started”</strong>
																		</td>
																	</tr>

																</table>

															</td>
															<td valign="top" cellpadding="0" cellspacing="0"
																align="right" style="text-align: right;">
																<img src="hand-shake2" alt="hand-shake"
																	style="display:inline-block;max-width:100%;padding: 0px;margin: 0px">
															</td>
														</tr>
													</table>

												</td>
											</tr>
											<tr>
												<td align="left" cellpadding="0" cellspacing="0"
													style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-left:38px;padding-right:35px;text-align: left;">
													We have not seen an update on your KR/OKR <a href="<RedirectOkR>" traget="_blank" style="font-size:16px;font-family: Calibri,Arial;font-weight:bold;color: #39A3FA;text-decoration: none;">ObjectiveOKR</a> assignment done on <strong>OKRDate</strong> for the last 14 days.
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0"
							style="padding-bottom: 20px;padding-left:10px;padding-right:10px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0"
										style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy
										Unlocking!
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0"
							style="padding-top:20px;padding-bottom: 20px;padding-left:10px;padding-right:10px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;">
										Note: Please
										do
										not reply to this email. Emails sent to this address will not be
										answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;">
										Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com"
											style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a>
									</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;">
If you are
having
trouble viewing this email, you can update your outlook settings by <a
target="_blank"
href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error"
style="color: #39A3FA; text-decoration: underline;">clicking
here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px 0;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%"
										style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">
										&copy; year Infopro Learning, Inc. All rights reserved
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'
           ,195
           ,getdate()
           ,1)
End
GO



-- END DML 2.9.1 C


-----------------------------------------Missing Script during Migration -------------------------------------------------




IF EXISTS(select * from MailerTemplate where TemplateCode = 'KRP')
Begin
update [dbo].[MailerTemplate]
set Subject='Planning session has ended',body='
<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Some assignements</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->

	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"
		style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              
			<table class="wrapper" width="100%" align="center"  style="background: #EEF5FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%">
				<img src="topBar" width="100%" style="display: block;" />
			</td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0"
					style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank"
											style="text-decoration: none;">
											<img src="logo" style=" display: block;" />
										</a>
									</td>

									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td
													style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="<iko>"
														target="_blank" style="text-decoration: none;">
														<img src="linkedin" alt="arrow" />
													</a>
												</td>
												<td
													style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank"
														style="text-decoration: none;">
														<img src="facebook" alt="arrow" />
													</a>
												</td>
												<td
													style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="instagram" target="_blank"
														style="text-decoration: none;">
														<img src="instagram" alt="arrow" />
													</a>
												</td>
												<td
													style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank"
														style="text-decoration: none;">
														<img src="twitter" alt="arrow" />
													</a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;">
							<table width="100%" cellspacing="0" cellpadding="0"
								style="background-color: #ffffff;  border-radius: 6px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 33px 0px 21px;">
										<table width="100%" cellspacing="0" cellpadding="0">
											<tr>
												<td align="left" cellpadding="0" cellspacing="0"
													style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-left:38px;padding-right:35px;text-align: left;">
													Hello <strong>name</strong>,
												</td>
											</tr>
											<tr>
												<td valign="top" cellpadding="0" cellspacing="0"
													style="padding-left:38px;padding-right: 8px;">
													<table width="100%" cellspacing="0" cellpadding="0">
														<tr>
															<td valign="top" width="62%" cellpadding="0" cellspacing="0"
																style="width:62%">
																<table width="100%" cellspacing="0" cellpadding="0">
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0"
																			style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 2px;padding-top:26px;text-align: left;">
																			You had some assignements which you never
																			acknowledged. Do not worry, if you forgot
																			about them, you can still raise a reset
																			request and accept those.
																		</td>
																	</tr>
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0"
																			style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 2px;padding-top:26px;text-align: left;">
																			<strong>Here is a reminder of what was
																				archived for you:</strong>
																		</td>
																	</tr>
																	<tr>
																		<td valign="top" align="left" cellpadding="0"
																			cellspacing="0"
																			style="padding-bottom: 24px;">
																			<table cellspacing="0" cellpadding="0"
																				style="">
                                                                                <Gist>																				
																			</table>
																		</td>
																	</tr>
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0"
																			style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-top:0px;text-align: left;">

																			Should you wish to pick those assignment you
																			can do so here.
																		</td>
																	</tr>
																	<tr>
																		<td cellpadding="0" cellspacing="0" align="left"
																			style="text-align: left;padding-top: 20px;">																			
																			<table cellspacing="0" cellpadding="0"
																				style="">
																				<tr>
																					<td align="center" width="181"
																						height="40" bgcolor="#39A3FA"
																						style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">
																						<a href="<RedirectOkR>"
																							style="height:40px;color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">
																							Unlock Account
																						</a>
																					</td>
																				</tr>
																			</table>
																			<!-- <![endif]-->
																		</td>
																	</tr>
																</table>

															</td>
															<td valign="top" cellpadding="0" cellspacing="0"
																align="right" style="text-align: right;padding-top:8px">
																<img src="watch" alt="watch"
																	style="display:inline-block;max-width:100%;padding: 0px;margin: 0px">
															</td>
														</tr>
													</table>

												</td>
											</tr>



										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0"
							style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0"
										style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy
										Unlocking!
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0"
							style="padding:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;">
										Note: Please
										do
										not reply to this email. Emails sent to this address will not be
										answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;">
										Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com"
											style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a>
									</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;">
										If you are
										having
										trouble viewing this email, you can update your outlook settings by <a
											target="_blank"
											href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error"
											style="color: #39A3FA; text-decoration: underline;">clicking
											here</a>.
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%"
										style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">
										&copy; 2021 Infopro Learning, Inc. All rights reserved
									</td>
								</tr>
							</table>
						</td>
					</tr>

				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='KRP'
End
Go

IF EXISTS(select * from MailerTemplate where TemplateCode = 'COKPS')
Begin
update [dbo].[MailerTemplate]
set Subject='Contributor has not taken an action since 3 days',body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>  <html xmlns="http://www.w3.org/1999/xhtml" class="ie">     <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
	<!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
			<title/>
			<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
				<!--[if !mso]><!-->
				<meta http-equiv="X-UA-Compatible" content="IE=edge">
					<!--<![endif]-->
					<meta name="viewport" content="width=device-width">
						<title>2 days before the end of planning session</title>
						<style>    body {     -webkit-text-size-adjust: 100%;     margin: 0;     padding: 0;     border: 0px;     font-family: Calibri;     font-weight: 400;     font-size: 16px;    }      table,    tr,    td {     margin: 0px;     padding: 0px;    }   </style>
					</head>
					<!--[if mso]>        <body class="mso" style="padding:0px;margin: 0px;">           <![endif]-->
					<!--[if !mso]><!-->
					<body style="padding:0px;margin: 0px;">
						<!--<![endif]-->
						<!--[if !mso]><!-->
						<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"    style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
							<!--<![endif]-->
							<!--[if (mso)|(IE)]>                   <table class="wrapper" width="100%" align="center"  style="background: #EEF5FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
							<tr>
								<td cellspacing="0" cellpadding="0" width="100%">
									<img src="topBar" width="100%" style="display: block;" />
								</td>
							</tr>
							<tr>
								<td cellspacing="0" cellpadding="0">
									<table align="center" width="600" cellspacing="0" cellpadding="0"       style="margin: 0px auto; color: #292929; font-weight: normal; ">
										<tr>
											<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">
												<table width="100%" cellspacing="0" cellpadding="0">
													<tr>
														<td style="width: 50%;">
															<a href="<URL>" target="_blank"             style="text-decoration: none;">             <img src="logo" style=" display: block;" />
																</a>
															</td>
															<td align="right" cellpadding="0" cellspacing="0">
																<table width="90px" cellspacing="0" cellpadding="0">
																	<tr>
																		<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
																			<a href="<iko>" target="_blank" style="text-decoration: none;">                <img src="linkedin" alt="arrow" />
																				</a>
																			</td>
																			<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
																				<a href="fb" target="_blank" style="text-decoration: none;">
																					<img src="facebook" alt="arrow" />
																				</a>
																			</td>
																			<td               style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
																				<a href="ijk" target="_blank"                style="text-decoration: none;">
																					<img src="instagram" alt="arrow" />
																				</a>
																			</td>
																			<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
																				<a href="terp" target="_blank" style="text-decoration: none;">
																					<img src="twitter" alt="arrow" />
																				</a>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left: 20px; padding-right: 20px;">
														<table width="100%" cellspacing="0" cellpadding="0"          style="background-color: #ffffff;  border-radius: 6px;">
															<tr>
																<td cellpadding="0" cellspacing="0" style="padding: 33px 0px 21px;">
																	<table width="100%" cellspacing="0" cellpadding="0">
																		<tr>
																			<td align="left" cellpadding="0" cellspacing="0"               style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-left:38px;padding-right:35px;text-align: left;">               Hello <strong>name</strong>,              </td>
																		</tr>
																		<tr>
																			<td valign="top" cellpadding="0" cellspacing="0"               style="padding-left:38px;padding-right: 15px;">
																				<table width="100%" cellspacing="0" cellpadding="0">
																					<tr>
																						<td valign="top" width="62%" cellpadding="0" cellspacing="0"                  style="width:62%">
																							<table width="100%" cellspacing="0" cellpadding="0">
																								<tr>
																									<td align="left" cellpadding="0" cellspacing="0"                     style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 28px;padding-top:26px;text-align: left;">                     You still have gotten no reply on the                     assignment(s). You might need to nudge your                     contributors, or risk the assignments going                     into archive mode!                    </td>
																								</tr>
																								<tr>
																									<td align="left" cellpadding="0" cellspacing="0"                     style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-top:0px;text-align: left;">
																										<strong>Heres some help:</strong>
																									</td>
																								</tr>
																								<tr>
																									<td valign="top" align="left" cellpadding="0"                     cellspacing="0">
																										<table cellspacing="0" cellpadding="0"                      style="">
																											<Gist>
																											</table>
																										</td>
																									</tr>
																									<tr>
																										<td cellpadding="0" cellspacing="0" align="left"                     style="text-align: left;padding-top: 20px;">
																											<table cellspacing="0" cellpadding="0"                      style="">
																												<tr>
																													<td align="center" width="181"                        height="40" bgcolor="#39A3FA"                        style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">
																														<a href="<RedirectOkR>"                         style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">                         View My OKRs                        </a>
																														</td>
																													</tr>
																												</table>
																												<!-- <![endif]-->
																											</td>
																										</tr>
																									</table>
																								</td>
																								<td valign="top" cellpadding="0" cellspacing="0"                  align="right" style="text-align: right;">
																									<img src="watch" alt="watch"                   style="display:inline-block;max-width:100%;padding: 0px;margin: 0px">
																									</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td cellpadding="0" cellspacing="0"         style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
																	<table cellspacing="0" cellpadding="0">
																		<tr>
																			<td cellpadding="0" cellspacing="0"            style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy            Unlocking!           </td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td valign="top" cellpadding="0" cellspacing="0"         style="padding-top:20px;padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
																	<table cellspacing="0" cellpadding="0">
																		<tr>
																			<td valign="top" cellpadding="0" cellspacing="0"            style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;">            Note: Please            do            not reply to this email. Emails sent to this address will not be            answered</td>
																		</tr>
																		<tr>
																			<td valign="top" cellpadding="0" cellspacing="0"            style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;">            Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com"             style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a>
																			</td>
																		</tr>
																		<tr>
																			<td valign="top" cellpadding="0" cellspacing="0"            style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;">            If you are            having            trouble viewing this email, you can update your outlook settings by <a             target="_blank"             href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error"             style="color: #39A3FA; text-decoration: underline;">clicking             here</a>.</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
																	<table width="100%" cellspacing="0" cellpadding="0">
																		<tr>
																			<td cellspacing="0" cellpadding="0" width="100%"            style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">            &copy; year Infopro Learning, Inc. All rights reserved           </td>
																		</tr>
																	</table>
																</td>
															</tr>
														</table>
													</td>
												</tr>
											</table>
										</body>'

where TemplateCode='COKPS'
End
Go
--START SPRINT 2.9.2
IF EXISTS(select * from MailerTemplate where TemplateCode = 'AK')
Begin
update [dbo].[MailerTemplate]
set body=
'<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Assignment to KR</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->

	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"
		style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              
			<table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%">
				<img src="topBar" width="100%" style="display: block;" />
			</td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0"
					style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-right: 20px;padding-left: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0"
								style="background-color: #ffffff;  border-radius: 6px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 33px 38px 21px;">
										<table width="100%" cellspacing="0" cellpadding="0">
											<tr>
												<td align="left" cellpadding="0" cellspacing="0"
													style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 27px;text-align: left;">
													Hello <strong>Contri</strong>,
												</td>
											</tr>
											<tr>
												<td valign="top" cellpadding="0" cellspacing="0">
													<table width="100%" cellspacing="0" cellpadding="0">
														<tr>
															<td align="left" cellpadding="0" cellspacing="0"
																style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 27px;text-align: left;">
																user values that you are the best person to help
																him achieve "<a href="tinggg"
																	traget="_blank"
																	style="font-size:16px;font-family: Calibri,Arial;font-weight:bold;color: #39A3FA;text-decoration: none;">KeyDescription</a>".
															</td>
														</tr>
														<tr>
															<td align="left" cellpadding="0" cellspacing="0"
																style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 27px;text-align: left;">
																If you agree with user and can help, why not
																<a href="<GoTo>"
																	traget="_blank"
																	style="font-size:16px;font-family: Calibri,Arial;color: #39A3FA;text-decoration: underline;">accept</a>
																this
																immediately?
															</td>
														</tr>
														<tr>
															<td align="left" cellpadding="0" cellspacing="0"
																style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;text-align: left;">
																If you cant help user, you can let them know by
																<a href="<abcd>"
																	traget="_blank"
																	style="font-size:16px;font-family: Calibri,Arial;color: #39A3FA;text-decoration: underline;">denying</a>
																here.
															</td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding-top:20px;padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='AK'
End
Go

IF EXISTS(select * from MailerTemplate where TemplateCode = 'DO')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Okr Assignment Complete</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->

	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"
		style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              
			<table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%">
				<img src="topBar" width="100%" style="display: block;" />
			</td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0"
					style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; padding-left: 20px; padding-right: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0"
								style="background-color: #ffffff;  border-radius: 6px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 33px 35px;">
										<table width="100%" cellspacing="0" cellpadding="0">
											<tr>
												<td align="center" cellpadding="0" cellspacing="0"
													style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 12px;text-align: center;">
													Hello <strong>name,</strong>
												</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" align="center"
													style="padding-bottom: 0px;">
													<img src="draftImage" alt="Saved in draft"
														style="display:block;max-width:100%;padding: 0px;margin: 0px">
												</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" align="center"
													style="padding-bottom: 5px;">
													<table width="393" cellspacing="0" cellpadding="0"
														style:"393px;Margin:0 auto">
														<tr>
															<td align="center" cellpadding="0" cellspacing="0"
																style="font-size:16px;line-height:21px;color:#292929;font-family: Calibri,Arial;text-align: center;">
																<a href="<GoalUrl>"
																	traget="_blank"
																	style="font-size:16px;font-family: Calibri,Arial;font-weight:bold;color: #39A3FA;text-decoration: none;">“KeyDescription”</a>

															</td>
														</tr>
														<tr>
															<td align="center" cellpadding="0" cellspacing="0"
																style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;text-align: center;">
																has now been successfully saved in draft
															</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" align="center"
													style="text-align: center;padding-top: 20px;">

											
													<table cellspacing="0" cellpadding="0" style="Margin:0 auto">
														<tr>
															<td align="center" width="158" height="40" bgcolor="#39A3FA"
																style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">
																<a href="<Button>"
																	style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">
																	View Dashboard
																</a>
															</td>
														</tr>
													</table>
													
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding-top:20px;padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking             here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='DO'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'KP')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>  <html xmlns="http://www.w3.org/1999/xhtml" class="ie">     <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Changes in OKR</title>
	<style>
	body {
		-webkit-text-size-adjust: 100%;
		margin: 0;
		padding: 0;
		border: 0px;
		font-family: Calibri;
		font-weight: 400;
		font-size: 16px;
	}
	
	table,
	tr,
	td {
		margin: 0px;
		padding: 0px;
	}
	</style>
</head>
<!--[if mso]><body class="mso" style="padding:0px;margin: 0px;"><![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]><table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0"><![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; padding-left: 20px; padding-right: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff;  border-radius: 6px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 33px 35px;">
										<table width="100%" cellspacing="0" cellpadding="0">
											<tr>
												<td align="center" cellpadding="0" cellspacing="0" style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 18px;text-align: center;"> Hello <strong>name,</strong> </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" align="center" style="padding-bottom: 25px;"> <img src="changesinokr" alt="Changes in OKR" style="display:block;max-width:100%;padding: 0px;margin: 0px"> </td>
											</tr>
											<tr>
												<td align="center" cellpadding="0" cellspacing="0" style="font-size:16px;line-height:16px;color:#292929;font-family: Calibri,Arial;padding-bottom: 4px;text-align: center;"> It looks like source has contributed to your <a href="tinggg" style="text-decoration:none;font-size:16px;line-height:24px;font-weight:bold;color:#39A3FA;font-family: Calibri,Arial;">" keyDescription ".</a> </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" align="center" style="text-align: center;padding-top: 20px;">
													<table cellspacing="0" cellpadding="0" style="Margin:0 auto">
														<tr>
															<td align="center" width="181" height="40" bgcolor="#39A3FA" style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;"> <a href="<abcdefg>" style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">View this OKR</a> </td>
														</tr>
													</table>
													<!-- <![endif]-->
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding-top:20px;padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='KP'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'DPS')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Draft OKRs are auto archived</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->

	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"
		style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              
			<table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%">
				<img src="topBar" width="100%" style="display: block;" />
			</td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0"
					style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;">
							<table width="100%" cellspacing="0" cellpadding="0"
								style="background-color: #ffffff;  border-radius: 6px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 26px 0px 21px;">
										<table width="100%" cellspacing="0" cellpadding="0">

											<tr>
												<td valign="top" cellpadding="0" cellspacing="0"
													style="padding-left:30px;padding-right: 28px;">
													<table width="100%" cellspacing="0" cellpadding="0">
														<tr>
															<td valign="top" width="60%" cellpadding="0" cellspacing="0"
																style="width:60%">
																<table width="100%" cellspacing="0" cellpadding="0">
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0"
																			style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;text-align: left;">
																			Hello <strong>name</strong>,
																		</td>
																	</tr>
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0"
																			style="font-size:16px;line-height:21px;color:#292929;font-family: Calibri,Arial;padding-top:19px;text-align: left;">
																			Your draft OKRs are auto archived! You can raise a request to your manager for unlocking the archived OKRs.
																		</td>
																	</tr>
																	<tr>
																		<td cellpadding="0" cellspacing="0" align="left"
																			style="text-align: left;padding-top: 28px;">

																			
																			<table cellspacing="0" cellpadding="0"
																				style="">
																				<tr>
																					<td align="center" width="181"
																						height="40" bgcolor="#39A3FA"
																						style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">
																						<a href="<Button>"
																							style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">
																							Get Unlocked
																						</a>
																					</td>
																				</tr>
																			</table>
																			<!-- <![endif]-->
																		</td>
																	</tr>
																</table>

															</td>
															<td valign="top" cellpadding="0" cellspacing="0"
																align="right" style="text-align: right;padding-top:8px">
																<img width="206" height="186"
																	src="messageInterm" alt="Draft OKRs auto archived"
																	style="display:block;max-width:100%;padding: 0px;margin: 0px">
															</td>
														</tr>
													</table>

												</td>
											</tr>

										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0"
							style="padding:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0"
										style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy
										Unlocking!
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0"
							style="padding:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;">
										Note: Please
										do
										not reply to this email. Emails sent to this address will not be
										answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;">
										Help/Feedback - Write to us at <a href="mailto:supportEmailId"
											style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a>
									</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;">
										If you are
										having
										trouble viewing this email, you can update your outlook settings by <a
											target="_blank"
											href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error"
											style="color: #39A3FA; text-decoration: underline;">clicking
											here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%"
										style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">
										&copy; year Infopro Learning, Inc. All rights reserved
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='DPS'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'AKR')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Align and Assign</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->

	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"
		style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              
			<table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%">
				<img src="topBar" width="100%" style="display: block;" />
			</td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0"
					style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; padding-left:20px; padding-right: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0"
								style="background-color: #ffffff;  border-radius: 6px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 33px 38px 21px;">
										<table width="100%" cellspacing="0" cellpadding="0">
											<tr>
												<td align="left" cellpadding="0" cellspacing="0"
													style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 27px;text-align: left;">
													Hello <strong>Source</strong>,
												</td>
											</tr>
											<tr>
												<td valign="top" cellpadding="0" cellspacing="0">
													<table width="100%" cellspacing="0" cellpadding="0">
														<tr>
															<td align="left" cellpadding="0" cellspacing="0"
																style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 27px;text-align: left;">
																user values that you are the best person to help
																him achieve "<a href="tinggg"
																	traget="_blank"
																	style="font-size:16px;font-family: Calibri,Arial;font-weight:bold;color: #39A3FA;text-decoration: none;">KeyDescription</a>".
															</td>
														</tr>
														
														
														<tr>
															<td cellpadding="0" cellspacing="0" align="left"
																style="text-align: left;padding-top: 20px;">

															
																<table cellspacing="0" cellpadding="0" style="">
																	<tr>
																		<td align="center" width="181" height="40"
																			bgcolor="#39A3FA"
																			style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">
																			<a href="<abcdefg>"
																				style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">
																				View My OKRs
																			</a>
																		</td>
																	</tr>
																</table>
																
															</td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding-top:20px;padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='AKR'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'DWS')
Begin
update [dbo].[MailerTemplate]
set body=
'<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Pick up your incomplete OKRs from where you left last time</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->

	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"
		style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              
			<table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%">
				<img src="topBar" width="100%" style="display: block;" />
			</td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0"
					style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td align="left" cellpadding="0" cellspacing="0"
							style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 5px; padding-left: 20px;padding-right:20px;">
							Hello <strong>name,</strong>
						</td>
					</tr>
					<tr>
						<td align="left" cellpadding="0" cellspacing="0"
							style="font-size:24px;line-height:29px;color:#292929;font-family: Calibri,Arial;padding-bottom: 44px;padding-left: 20px;padding-right:20px;">
							<strong>These OKRs left in the draft stage will be soon archived:</strong>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" valign="middle" style="padding-bottom: 18px;padding-left: 20px;padding-right:20px;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" valign="middle" style="padding-right: 10px;">
										<img style="display: block;" src="infoIcon" alt="info" />
									</td>
									<td valign="middle" align="left" cellpadding="0" cellspacing="0"
										style="font-size:18px;line-height:18px;color:#292929;font-family: Calibri,Arial;">
										<strong>count OKR(s) Saved as Draft</strong>
									</td>

								</tr>
							</table>
						</td>

					</tr>
					<tr>
						<td cellspacing="0" cellpadding="0" style="padding-left: 20px;padding-right:20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<!--row 1 start here-->
								Listing
								<!--row 1 end here-->
								<!--row 2 start here-->
								
								<!--row 2 end here-->
								<!--row 3 start here-->
								
								<!--row 3 end here-->
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" align="left" style="text-align: left;padding: 20px;">
							
							<table cellspacing="0" cellpadding="0" style="">
								<tr>
									<td align="center" width="141" height="40" bgcolor="#39A3FA"
										style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">
										<a href="<Button>"
											style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">
											View All
										</a>
									</td>
								</tr>
							</table>
							<!-- <![endif]-->
						</td>
					</tr>					
					<tr>
						<td cellpadding="0" cellspacing="0"
							style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0"
										style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy
										Unlocking!
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0"
							style="padding:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;">
										Note: Please
										do
										not reply to this email. Emails sent to this address will not be
										answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;">
										Help/Feedback - Write to us at <a href="mailto:supportEmailId"
											style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a>
									</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;">
										If you are
										having
										trouble viewing this email, you can update your outlook settings by <a
											target="_blank"
											href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error"
											style="color: #39A3FA; text-decoration: underline;">clicking
											here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%"
										style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">
										&copy; year Infopro Learning, Inc. All rights reserved
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='DWS'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'KD')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>  
    <html xmlns="http://www.w3.org/1999/xhtml" class="ie">
       <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Okr Assignment Complete</title>
	<style>
	body {
		-webkit-text-size-adjust: 100%;
		margin: 0;
		padding: 0;
		border: 0px;
		font-family: Calibri;
		font-weight: 400;
		font-size: 16px;
	}
	
	table,
	tr,
	td {
		margin: 0px;
		padding: 0px;
	}
	</style>
</head>
<!--[if mso]>        
          <body class="mso" style="padding:0px;margin: 0px;">
             <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>                   
                   <table class="wrapper" width="100%" align="center"  style="background: #EEF5FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">
                      <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left: 20px; padding-right: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff;  border-radius: 6px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 33px 35px;">
										<table width="100%" cellspacing="0" cellpadding="0">
											<tr>
												<td align="center" cellpadding="0" cellspacing="0" style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 18px;text-align: center;"> Hello <strong>Source,</strong> </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" align="center" style="padding-bottom: 18px;"> <img src="mnc" alt="" style="display:block;max-width:100%;padding: 0px;margin: 0px"> </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" align="center" style="padding-bottom: 5px;">
													<table width="393" cellspacing="0" cellpadding="0" style: "393px;Margin:0 auto">
														<tr>
															<Gist>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding-top:20px;padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='KD'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'ASO')
Begin
update [dbo].[MailerTemplate]
set body='<!Doctype html>

<head>
	<title>Assignment KR</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<style>
	body {
		-webkit-text-size-adjust: 100%;
		margin: 0;
		padding: 0;
		border: 0px;
		font-family: Calibri;
		font-weight: 300;
		font-size: 16px;
	}
	
	table,
	tr,
	td {
		margin: 0px;
		padding: 0px;
	}
	</style>
</head>

<body>
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              <table width="100%" class="wrapper" align="center"  style="Margin: 0 auto; padding:0px; background: #E5F0FF;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table width="600" align="center" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; font-size: 16px;">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; padding-left: 20px; padding-right:20px; font-size: 16px;">
							<table width="100%" style="background-color: #ffffff;  border-radius: 5px;">
								<tr>
									<td style="padding: 0 35px;">
										<table width="100%" style="background-color: #ffffff;  border-radius: 5px;">
											<tr>
												<td cellpadding="0" cellspacing="0" style="font-size: 18px; padding-top: 30px; padding-bottom: 10px; font-family: Calibri;"> Hello <strong>                  <user>,                  </strong> </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; font-family: Calibri;"> It looks like
													<manager> thinks you can add significant value to <a href="<goToGoalsUrl>" style="color: #39A3FA; font-weight: bold; text-decoration: underline;"> OKRfocus </a> one of their key goals for this cycle. </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; font-family: Calibri;"> Now you can edit or add any additional KR as you see fit. Good luck! </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 5px; font-family: Calibri;"> Thanks, </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 30px; font-family: Calibri;">
													<Requestor>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding-top:20px;padding-bottom: 20px; padding-left:20px; padding-right:20px; border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='ASO'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'KA')
Begin
update [dbo].[MailerTemplate]
set body=
'<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>  
    <html xmlns="http://www.w3.org/1999/xhtml" class="ie">
       <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Okr Assignment Complete</title>
	<style>
	body {
		-webkit-text-size-adjust: 100%;
		margin: 0;
		padding: 0;
		border: 0px;
		font-family: Calibri;
		font-weight: 400;
		font-size: 16px;
	}
	
	table,
	tr,
	td {
		margin: 0px;
		padding: 0px;
	}
	</style>
</head>
<!--[if mso]>        
          <body class="mso" style="padding:0px;margin: 0px;">
             <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>                   
                <table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">
                   <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left: 20px; padding-right: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff;  border-radius: 6px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 33px 35px;">
										<table width="100%" cellspacing="0" cellpadding="0">
											<tr>
												<td align="center" cellpadding="0" cellspacing="0" style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 18px;text-align: center;"> Hello <strong>name,</strong> </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" align="center" style="padding-bottom: 18px;"> <img src="message" alt="okr-assignment-completed" style="display:block;max-width:100%;padding: 0px;margin: 0px"> </td>
											</tr>
											<tr>
												<Gist>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding-top:20px;padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking             here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='KA'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'KRP7')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>No update on KR since last 7 days</title>
	<style>
	body {
		-webkit-text-size-adjust: 100%;
		margin: 0;
		padding: 0;
		border: 0px;
		font-family: Calibri;
		font-weight: 400;
		font-size: 16px;
	}
	
	table,
	tr,
	td {
		margin: 0px;
		padding: 0px;
	}
	</style>
</head>
<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              
			<table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; padding-left:20px; padding-right:20px;">
							<table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff;  border-radius: 6px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 33px 0px 40px;">
										<table width="100%" cellspacing="0" cellpadding="0">
											<tr>
												<td align="left" cellpadding="0" cellspacing="0" style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-left:38px;padding-right:35px;text-align: left;"> Hello <strong>name</strong>, </td>
											</tr>
											<tr>
												<td valign="top" cellpadding="0" cellspacing="0" style="padding-left:38px;padding-right: 15px;">
													<table width="100%" cellspacing="0" cellpadding="0">
														<tr>
															<td valign="top" width="60%" cellpadding="0" cellspacing="0" style="width:60%">
																<table width="100%" cellspacing="0" cellpadding="0">
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0" style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-top:14px;text-align: left;"> <strong>Clearly you are stuck with your
																				OKRs.</strong> </td>
																	</tr>
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0" style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 19px;padding-top:0px;text-align: left;"> Why donot you connect with your team leader, see what kind of help you can get there? </td>
																	</tr>
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0" style="font-size:16px;line-height:21px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-top:0px;text-align: left;"> …and remember: </td>
																	</tr>
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0" style="font-size:16px;line-height:24px;color:#CB00FF;font-family: Calibri,Arial;padding-bottom: 20px;padding-top:0px;text-align: left;"> <strong>“The secret to getting ahead is
																				getting
																				started”</strong> </td>
																	</tr>
																</table>
															</td>
															<td valign="top" cellpadding="0" cellspacing="0" align="right" style="text-align: right;"> <img src="hand-shake2" alt="hand-shake" style="display:inline-block;max-width:100%;padding: 0px;margin: 0px"> </td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td align="left" cellpadding="0" cellspacing="0" style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-left:38px;padding-right:35px;text-align: left;"> We have not seen an update on your KR/OKR <a href="<RedirectOkR>" traget="_blank" style="font-size:16px;font-family: Calibri,Arial;font-weight:bold;color: #39A3FA;text-decoration: none;">ObjectiveOKR</a> assignment done on <strong>OKRDate</strong> for the last 7 days. </td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding:20px; border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking
here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='KRP7'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'KRP14')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>No update on KR since last 14 days</title>
	<style>
	body {
		-webkit-text-size-adjust: 100%;
		margin: 0;
		padding: 0;
		border: 0px;
		font-family: Calibri;
		font-weight: 400;
		font-size: 16px;
	}
	
	table,
	tr,
	td {
		margin: 0px;
		padding: 0px;
	}
	</style>
</head>
<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              
			<table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; padding-left:20px; padding-right:20px;">
							<table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff;  border-radius: 6px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 33px 0px 40px;">
										<table width="100%" cellspacing="0" cellpadding="0">
											<tr>
												<td align="left" cellpadding="0" cellspacing="0" style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-left:38px;padding-right:35px;text-align: left;"> Hello <strong>name</strong>, </td>
											</tr>
											<tr>
												<td valign="top" cellpadding="0" cellspacing="0" style="padding-left:38px;padding-right: 15px;">
													<table width="100%" cellspacing="0" cellpadding="0">
														<tr>
															<td valign="top" width="60%" cellpadding="0" cellspacing="0" style="width:60%">
																<table width="100%" cellspacing="0" cellpadding="0">
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0" style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-top:14px;text-align: left;"> <strong>Clearly you are stuck with your
																				OKRs.</strong> </td>
																	</tr>
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0" style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 19px;padding-top:0px;text-align: left;"> Why donot you connect with your team leader, see what kind of help you can get there? </td>
																	</tr>
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0" style="font-size:16px;line-height:21px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-top:0px;text-align: left;"> …and remember: </td>
																	</tr>
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0" style="font-size:16px;line-height:24px;color:#CB00FF;font-family: Calibri,Arial;padding-bottom: 20px;padding-top:0px;text-align: left;"> <strong>“The secret to getting ahead is
																				getting
																				started”</strong> </td>
																	</tr>
																</table>
															</td>
															<td valign="top" cellpadding="0" cellspacing="0" align="right" style="text-align: right;"> <img src="hand-shake2" alt="hand-shake" style="display:inline-block;max-width:100%;padding: 0px;margin: 0px"> </td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td align="left" cellpadding="0" cellspacing="0" style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-left:38px;padding-right:35px;text-align: left;"> We have not seen an update on your KR/OKR <a href="<RedirectOkR>" traget="_blank" style="font-size:16px;font-family: Calibri,Arial;font-weight:bold;color: #39A3FA;text-decoration: none;">ObjectiveOKR</a> assignment done on <strong>OKRDate</strong> for the last 14 days. </td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; padding-left:20px; padding-right:20px; border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding:20px; border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking
here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='KRP14'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'COKPS')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>  <html xmlns="http://www.w3.org/1999/xhtml" class="ie">     <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Planning session is going to end in 2 days</title>
	<style>
	body {
		-webkit-text-size-adjust: 100%;
		margin: 0;
		padding: 0;
		border: 0px;
		font-family: Calibri;
		font-weight: 400;
		font-size: 16px;
	}
	
	table,
	tr,
	td {
		margin: 0px;
		padding: 0px;
	}
	</style>
</head>
<!--[if mso]>        <body class="mso" style="padding:0px;margin: 0px;">           <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>                   <table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; padding-left: 20px; padding-right: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff;  border-radius: 6px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 33px 0px 21px;">
										<table width="100%" cellspacing="0" cellpadding="0">
											<tr>
												<td align="left" cellpadding="0" cellspacing="0" style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-left:38px;padding-right:35px;text-align: left;"> Hello <strong>name</strong>, </td>
											</tr>
											<tr>
												<td valign="top" cellpadding="0" cellspacing="0" style="padding-left:38px;padding-right: 15px;">
													<table width="100%" cellspacing="0" cellpadding="0">
														<tr>
															<td valign="top" width="62%" cellpadding="0" cellspacing="0" style="width:62%">
																<table width="100%" cellspacing="0" cellpadding="0">
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0" style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 28px;padding-top:26px;text-align: left;"> You still have gotten no reply on the assignment(s). You might need to nudge your contributors, or risk the assignments going into archive mode! </td>
																	</tr>
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0" style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-top:0px;text-align: left;"> <strong>Heres some help:</strong> </td>
																	</tr>
																	<tr>
																		<td valign="top" align="left" cellpadding="0" cellspacing="0">
																			<table cellspacing="0" cellpadding="0" style="">
																				<Gist>
																			</table>
																		</td>
																	</tr>
																	<tr>
																		<td cellpadding="0" cellspacing="0" align="left" style="text-align: left;padding-top: 20px;">
																			<table cellspacing="0" cellpadding="0" style="">
																				<tr>
																					<td align="center" width="181" height="40" bgcolor="#39A3FA" style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;"> <a href="<RedirectOkR>" style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">View My OKRs</a> </td>
																				</tr>
																			</table>
																			<!-- <![endif]-->
																		</td>
																	</tr>
																</table>
															</td>
															<td valign="top" cellpadding="0" cellspacing="0" align="right" style="text-align: right;"> <img src="watch" alt="watch" style="display:inline-block;max-width:100%;padding: 0px;margin: 0px"> </td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; padding-left:20px; padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding:20px; border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='COKPS'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'PC')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>  <html xmlns="http://www.w3.org/1999/xhtml" class="ie">     <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Some assignements</title>
	<style>
	body {
		-webkit-text-size-adjust: 100%;
		margin: 0;
		padding: 0;
		border: 0px;
		font-family: Calibri;
		font-weight: 400;
		font-size: 16px;
	}
	
	table,
	tr,
	td {
		margin: 0px;
		padding: 0px;
	}
	</style>
</head>
<!--[if mso]>        <body class="mso" style="padding:0px;margin: 0px;">           <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>                   <table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; padding-left:20px; padding-right:20px;">
							<table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff;  border-radius: 6px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 33px 0px 21px;">
										<table width="100%" cellspacing="0" cellpadding="0">
											<tr>
												<td align="left" cellpadding="0" cellspacing="0" style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-left:38px;padding-right:35px;text-align: left;"> Hello <strong>Contri</strong>, </td>
											</tr>
											<tr>
												<td valign="top" cellpadding="0" cellspacing="0" style="padding-left:38px;padding-right: 8px;">
													<table width="100%" cellspacing="0" cellpadding="0">
														<tr>
															<td valign="top" width="62%" cellpadding="0" cellspacing="0" style="width:62%">
																<table width="100%" cellspacing="0" cellpadding="0">
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0" style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 2px;padding-top:26px;text-align: left;"> You had some assignements which you never acknowledged. Do not worry, if you forgot about them, you can still raise a reset request and accept those. </td>
																	</tr>
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0" style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 2px;padding-top:26px;text-align: left;"> <strong>Here is a reminder of what was                      archived for you:</strong> </td>
																	</tr>
																	<tr>
																		<td valign="top" align="left" cellpadding="0" cellspacing="0" style="padding-bottom: 24px;">
																			<table cellspacing="0" cellpadding="0" style="">
																				<subordinate>
																			</table>
																		</td>
																	</tr>
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0" style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-top:0px;text-align: left;"> Should you wish to pick those assignment you can do so here. </td>
																	</tr>
																	<tr>
																		<td cellpadding="0" cellspacing="0" align="left" style="text-align: left;padding-top: 20px;">
																			<table cellspacing="0" cellpadding="0" style="">
																				<tr>
																					<td align="center" width="181" height="40" bgcolor="#39A3FA" style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;"> <a href="<URL>" style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">                         Unlock Account                        </a> </td>
																				</tr>
																			</table>
																		</td>
																	</tr>
																</table>
															</td>
															<td valign="top" cellpadding="0" cellspacing="0" align="right" style="text-align: right;padding-top:8px"> <img src="assignments" alt="watch" style="display:inline-block;max-width:100%;padding: 0px;margin: 0px"> </td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; padding-left:20px; padding-right:20px; border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding:20px; border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='PC'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'ES')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>  <html xmlns="http://www.w3.org/1999/xhtml" class="ie">     <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Some assignements</title>
	<style>
	body {
		-webkit-text-size-adjust: 100%;
		margin: 0;
		padding: 0;
		border: 0px;
		font-family: Calibri;
		font-weight: 400;
		font-size: 16px;
	}
	
	table,
	tr,
	td {
		margin: 0px;
		padding: 0px;
	}
	</style>
</head>
<!--[if mso]>        <body class="mso" style="padding:0px;margin: 0px;">           <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>                   <table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; padding-left: 20px; padding-right: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff;  border-radius: 6px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 33px 0px 21px;">
										<table width="100%" cellspacing="0" cellpadding="0">
											<tr>
												<td align="left" cellpadding="0" cellspacing="0" style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-left:38px;padding-right:35px;text-align: left;"> Hello <strong>name</strong>, </td>
											</tr>
											<tr>
												<td valign="top" cellpadding="0" cellspacing="0" style="padding-left:38px;padding-right: 15px;">
													<table width="100%" cellspacing="0" cellpadding="0">
														<tr>
															<td valign="top" width="62%" cellpadding="0" cellspacing="0" style="width:62%">
																<table width="100%" cellspacing="0" cellpadding="0">
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0" style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 28px;padding-top:26px;text-align: left;"> You still have gotten no reply on the assignment(s). You might need to nudge your contributors, or risk the assignments going into archive mode! </td>
																	</tr>
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0" style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-top:0px;text-align: left;"> <strong>Heres some help:</strong> </td>
																	</tr>
																	<tr>
																		<td valign="top" align="left" cellpadding="0" cellspacing="0">
																			<table cellspacing="0" cellpadding="0" style="">
																				<Gist>
																			</table>
																		</td>
																	</tr>
																	<tr>
																		<td cellpadding="0" cellspacing="0" align="left" style="text-align: left;padding-top: 20px;">
																			<table cellspacing="0" cellpadding="0" style="">
																				<tr>
																					<td align="center" width="181" height="40" bgcolor="#39A3FA" style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;"> <a href="<RedirectOkR>" style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">View My OKRs</a> </td>
																				</tr>
																			</table>
																			<!-- <![endif]-->
																		</td>
																	</tr>
																</table>
															</td>
															<td valign="top" cellpadding="0" cellspacing="0" align="right" style="text-align: right;"> <img src="watch" alt="watch" style="display:inline-block;max-width:100%;padding: 0px;margin: 0px"> </td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; padding-left:20px; padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding:20px; border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='ES'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'LDS')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>  <html xmlns="http://www.w3.org/1999/xhtml" class="ie">     <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Final Reminder to re-assign pending objectives and key results</title>
	<style>
	body {
		-webkit-text-size-adjust: 100%;
		margin: 0;
		padding: 0;
		border: 0px;
		font-family: Calibri;
		font-weight: 400;
		font-size: 16px;
	}
	
	table,
	tr,
	td {
		margin: 0px;
		padding: 0px;
	}
	</style>
</head>
<!--[if mso]>        <body class="mso" style="padding:0px;margin: 0px;">           <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>                   <table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td align="left" cellpadding="0" cellspacing="0" style="padding-left:20px; padding-right:20px; font-size:18px; line-height:24px; color:#292929; font-family: Calibri,Arial;padding-bottom: 5px;">Hello <strong>name,</strong> </td>
					</tr>
					<tr>
						<td align="left" cellpadding="0" cellspacing="0" style="padding-left:20px; padding-right:20px; font-size:24px; line-height:29px; color:#292929; font-family: Calibri,Arial;padding-bottom: 44px;"> <strong>Today is the last day of Planning Session</strong> </td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" valign="middle" style="padding-bottom: 18px; padding-left:20px; padding-right:20px;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" valign="middle" style="padding-right: 10px;"> <img style="display: block;" src="infoo" alt="info" /> </td>
									<td valign="middle" align="left" cellpadding="0" cellspacing="0" style="font-size:18px;line-height:18px;color:#292929;font-family: Calibri,Arial;"> <strong>Nume Action Required</strong> </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellspacing="0" cellpadding="0" style="padding-left:20px; padding-right:20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<!--row 1 start here-->
								<Gist>
									<!--row 2 end here-->
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; padding-left:20px; padding-right:20px; border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding:20px; border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='LDS'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'KRP')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Weekly Summary of assigned objectives and key results</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->

	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"
		style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              
			<table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%">
				<img src="topBar" width="100%" style="display: block;" />
			</td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0"
					style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; padding-left:20px; padding-right:20px;">
							<table width="100%" cellspacing="0" cellpadding="0"
								style="background-color: #ffffff;  border-radius: 6px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 33px 0px 21px;">
										<table width="100%" cellspacing="0" cellpadding="0">
											<tr>
												<td align="left" cellpadding="0" cellspacing="0"
													style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-left:38px;padding-right:35px;text-align: left;">
													Hello <strong>name</strong>,
												</td>
											</tr>
											<tr>
												<td valign="top" cellpadding="0" cellspacing="0"
													style="padding-left:38px;padding-right: 8px;">
													<table width="100%" cellspacing="0" cellpadding="0">
														<tr>
															<td valign="top" width="62%" cellpadding="0" cellspacing="0"
																style="width:62%">
																<table width="100%" cellspacing="0" cellpadding="0">
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0"
																			style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 2px;padding-top:26px;text-align: left;">
																			You had some assignements which you never
																			acknowledged. Do not worry, if you forgot
																			about them, you can still raise a reset
																			request and accept those.
																		</td>
																	</tr>
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0"
																			style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 2px;padding-top:26px;text-align: left;">
																			<strong>Here is a reminder of what was
																				archived for you:</strong>
																		</td>
																	</tr>
																	<tr>
																		<td valign="top" align="left" cellpadding="0"
																			cellspacing="0"
																			style="padding-bottom: 24px;">
																			<table cellspacing="0" cellpadding="0"
																				style="">
                                                                                <Gist>																				
																			</table>
																		</td>
																	</tr>
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0"
																			style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-top:0px;text-align: left;">

																			Should you wish to pick those assignment you
																			can do so here.
																		</td>
																	</tr>
																	<tr>
																		<td cellpadding="0" cellspacing="0" align="left"
																			style="text-align: left;padding-top: 20px;">																			
																			<table cellspacing="0" cellpadding="0"
																				style="">
																				<tr>
																					<td align="center" width="181"
																						height="40" bgcolor="#39A3FA"
																						style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">
																						<a href="<RedirectOkR>"
																							style="height:40px;color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">
																							Unlock Account
																						</a>
																					</td>
																				</tr>
																			</table>
																			<!-- <![endif]-->
																		</td>
																	</tr>
																</table>

															</td>
															<td valign="top" cellpadding="0" cellspacing="0"
																align="right" style="text-align: right;padding-top:8px">
																<img src="watch" alt="watch"
																	style="display:inline-block;max-width:100%;padding: 0px;margin: 0px">
															</td>
														</tr>
													</table>

												</td>
											</tr>



										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0"
							style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0"
										style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy
										Unlocking!
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0"
							style="padding:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;">
										Note: Please
										do
										not reply to this email. Emails sent to this address will not be
										answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;">
										Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com"
											style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a>
									</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;">
										If you are
										having
										trouble viewing this email, you can update your outlook settings by <a
											target="_blank"
											href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error"
											style="color: #39A3FA; text-decoration: underline;">clicking
											here</a>.
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%"
										style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">
										&copy; 2021 Infopro Learning, Inc. All rights reserved
									</td>
								</tr>
							</table>
						</td>
					</tr>

				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='KRP'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'DIM')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Pick up your incomplete OKRs</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->

	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"
		style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              
			<table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%">
				<img src="topBar" width="100%" style="display: block;" />
			</td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0"
					style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;">
							<table width="100%" cellspacing="0" cellpadding="0"
								style="background-color: #ffffff;  border-radius: 6px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 26px 0px 21px;">
										<table width="100%" cellspacing="0" cellpadding="0">

											<tr>
												<td valign="top" cellpadding="0" cellspacing="0"
													style="padding-left:30px;padding-right: 28px;">
													<table width="100%" cellspacing="0" cellpadding="0">
														<tr>
															<td valign="top" width="60%" cellpadding="0" cellspacing="0"
																style="width:60%">
																<table width="100%" cellspacing="0" cellpadding="0">
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0"
																			style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;text-align: left;">
																			Hello <strong>name</strong>,
																		</td>
																	</tr>
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0"
																			style="font-size:16px;line-height:21px;color:#292929;font-family: Calibri,Arial;padding-top:19px;text-align: left;">
																			Some of your <strong>OKRs</strong> are in
																			draft mode, and
																			unless
																			you finalize them, they will be archived
																			when the planning session ends
																		</td>
																	</tr>
																	<tr>
																		<td cellpadding="0" cellspacing="0" align="left"
																			style="text-align: left;padding-top: 28px;">

																			
																			<table cellspacing="0" cellpadding="0"
																				style="">
																				<tr>
																					<td align="center" width="181"
																						height="40" bgcolor="#39A3FA"
																						style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">
																						<a href="<Button>"
																							style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">
																							View My OKRs
																						</a>
																					</td>
																				</tr>
																			</table>
																			<!-- <![endif]-->
																		</td>
																	</tr>
																</table>

															</td>
															<td valign="top" cellpadding="0" cellspacing="0"
																align="right" style="text-align: right;padding-top:8px">
																<img width="206" height="186"
																	src="messageInterm" alt="hand-shake"
																	style="display:block;max-width:100%;padding: 0px;margin: 0px">
															</td>
														</tr>
													</table>

												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0"
							style="padding:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0"
										style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy
										Unlocking!
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0"
							style="padding:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;">
										Note: Please
										do
										not reply to this email. Emails sent to this address will not be
										answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;">
										Help/Feedback - Write to us at <a href="mailto:supportEmailId"
											style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a>
									</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;">
										If you are
										having
										trouble viewing this email, you can update your outlook settings by <a
											target="_blank"
											href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error"
											style="color: #39A3FA; text-decoration: underline;">clicking
											here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%"
										style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">
										&copy; year Infopro Learning, Inc. All rights reserved
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='DIM'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'CPS')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>  <html xmlns="http://www.w3.org/1999/xhtml" class="ie">     <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>2 days before the end of planning session</title>
	<style>
	body {
		-webkit-text-size-adjust: 100%;
		margin: 0;
		padding: 0;
		border: 0px;
		font-family: Calibri;
		font-weight: 400;
		font-size: 16px;
	}
	
	table,
	tr,
	td {
		margin: 0px;
		padding: 0px;
	}
	</style>
</head>
<!--[if mso]>        <body class="mso" style="padding:0px;margin: 0px;">           <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>                   <table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; padding-left: 20px; padding-right: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff;  border-radius: 6px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 33px 0px 21px;">
										<table width="100%" cellspacing="0" cellpadding="0">
											<tr>
												<td align="left" cellpadding="0" cellspacing="0" style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-left:38px;padding-right:35px;text-align: left;">Hello <strong>name</strong>, </td>
											</tr>
											<tr>
												<td valign="top" cellpadding="0" cellspacing="0" style="padding-left:38px;padding-right: 15px;">
													<table width="100%" cellspacing="0" cellpadding="0">
														<tr>
															<td valign="top" width="62%" cellpadding="0" cellspacing="0" style="width:62%">
																<table width="100%" cellspacing="0" cellpadding="0">
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0" style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 28px;padding-top:26px;text-align: left;">You still have gotten no reply on the assignment(s). You might need to nudge your contributors, or risk the assignments going into archive mode!.</td>
																	</tr>
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0" style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-top:0px;text-align: left;"> <strong>Here is some help:</strong> </td>
																	</tr>
																	<tr>
																		<td valign="top" align="left" cellpadding="0" cellspacing="0">
																			<table cellspacing="0" cellpadding="0" style="">
																				<Gist>
																			</table>
																		</td>
																	</tr>
																	<tr>
																		<td cellpadding="0" cellspacing="0" align="left" style="text-align: left;padding-top: 20px;">
																			<table cellspacing="0" cellpadding="0" style="">
																				<tr>
																					<td align="center" width="181" height="40" bgcolor="#39A3FA" style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;"> <a href="<RedirectOkR>" style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">View My OKRs</a> </td>
																				</tr>
																			</table>
																		</td>
																	</tr>
																</table>
															</td>
															<td valign="top" cellpadding="0" cellspacing="0" align="right" style="text-align: right;"> <img src="watch" alt="watch" style="display:inline-block;max-width:100%;padding: 0px;margin: 0px"> </td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding:20px; border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0"
										style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy
										Unlocking!
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;">
										Note: Please
										do
										not reply to this email. Emails sent to this address will not be
										answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;">
										Help/Feedback - Write to us at <a href="mailto:supportEmailId"
											style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a>
									</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;">
										If you are
										having
										trouble viewing this email, you can update your outlook settings by <a
											target="_blank"
											href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error"
											style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%"
										style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">
										&copy; year Infopro Learning, Inc. All rights reserved
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='CPS'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'DOS')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>OKRs left in the draft stage will be soon archived</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->

	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"
		style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              
			<table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%">
				<img src="topBar" width="100%" style="display: block;" />
			</td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0"
					style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td align="left" cellpadding="0" cellspacing="0"
							style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 5px;padding-left: 20px;padding-right:20px;">
							Hello <strong>name,</strong>
						</td>
					</tr>
					<tr>
						<td align="left" cellpadding="0" cellspacing="0"
							style="font-size:24px;line-height:29px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-left: 20px;padding-right:20px;">
							<strong>Today is the last day of Planning.</strong>
						</td>
					</tr>
					<tr>
						<td align="left" cellpadding="0" cellspacing="0"
							style="font-size:16px;line-height:29px;color:#292929;font-family: Calibri,Arial;padding-bottom: 44px;padding-left: 20px;padding-right:20px;">
							These OKRs left in the draft stage will be soon archived.
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" valign="middle" style="padding-bottom: 18px;padding-left: 20px;padding-right:20px;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" valign="middle" style="padding-right: 10px;">
										<img style="display: block;" src="infoIcon" alt="info" />
									</td>
									<td valign="middle" align="left" cellpadding="0" cellspacing="0"
										style="font-size:18px;line-height:18px;color:#292929;font-family: Calibri,Arial;">
										<strong>count OKR(s) Saved as Draft</strong>
									</td>

								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellspacing="0" cellpadding="0" style="padding-left: 20px;padding-right:20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<!--row 1 start here-->
								Listing
								<!--row 1 end here-->
								<!--row 2 start here-->
								
								<!--row 2 end here-->
								<!--row 3 start here-->
								
								<!--row 3 end here-->
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" align="left" style="text-align: left; padding:20px;">
							
							<table cellspacing="0" cellpadding="0" style="">
								<tr>
									<td align="center" width="141" height="40" bgcolor="#39A3FA"
										style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">
										<a href="<Button>"
											style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">
											View All
										</a>
									</td>
								</tr>
							</table>
							<!-- <![endif]-->
						</td>
					</tr>					
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding:20px; border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0"
										style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy
										Unlocking!
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;">
										Note: Please
										do
										not reply to this email. Emails sent to this address will not be
										answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;">
										Help/Feedback - Write to us at <a href="mailto:supportEmailId"
											style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a>
									</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;">
										If you are
										having
										trouble viewing this email, you can update your outlook settings by <a
											target="_blank"
											href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error"
											style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%"
										style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">
										&copy; year Infopro Learning, Inc. All rights reserved
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='DOS'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'LRM')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Only Notification and daily email</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"
		style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              <table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0">
				<img src="topBar" width="100%"
					style="display: block;" />
			</td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0"
					style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-right: 20px;padding-left: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0"
								style="background-color: #ffffff;  border-radius: 5px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 33px 35px;">
										<table width="100%" cellspacing="0" cellpadding="0">
											<tr>
												<td
													style="font-size: 18px; padding-bottom: 10px;  font-family: Calibri; ">
													Hello <strong>managerName,</strong> </td>
											</tr>
											<tr>
												<td>
													<table cellpadding="0" cellspacing="0">
														<tr>
															<td cellpadding="0" cellspacing="0" width="56%"
																valign="top">
																<table width="100%" cellspacing="0" cellpadding="0">
																	<tr>
																		<td cellpadding="0" cellspacing="0"
																			style="padding-bottom: 0px; line-height: 24px; font-family: Calibri; font-size: 16px;">
																			Although we have shared

																		</td>
																	</tr>
																	<tr>
																		<td cellpadding="0" cellspacing="0"
																			style="padding-bottom: 20px; line-height: 24px; font-family: Calibri; font-size: 16px;">

																			with <strong>userName</strong> new
																			credentials a week ago, we still have not
																			seen them log-in. Maybe it would be a good
																			idea to connect with <strong> userName
																				</strong> offline on this.



																		</td>
																	</tr>

																	<tr>
																		<td cellpadding="0" cellspacing="0"
																			style="padding-bottom: 5px; font-family: Calibri; font-size: 16px;">
																			Thanks, </td>
																	</tr>
																	<tr>
																		<td cellpadding="0" cellspacing="0"
																			style=" font-family: Calibri; font-size: 16px;">
																			UnlockOKR Team </td>
																	</tr>
																</table>
															</td>
															<td cellpadding="0" cellspacing="0" valign="top">
																<img src="userManger"
																	style="display: block; " align="right" />
															</td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding-top:20px;padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='LRM'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'LR')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Only notification and daily email</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"
		style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              <table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0">
				<img src="topBar" width="100%"
					style="display: block;" />
			</td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0"
					style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;">
							<table width="100%" cellspacing="0" cellpadding="0"
								style="background-color: #ffffff;  border-radius: 5px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 33px 35px;">
										<table width="100%" cellspacing="0" cellpadding="0">
											<tr>
												<td
													style="font-size: 18px; padding-bottom: 10px;  font-family: Calibri; ">
													Hello <strong>userName,</strong> </td>
											</tr>
											<tr>
												<td>
													<table cellpadding="0" cellspacing="0">
														<tr>
															<td cellpadding="0" cellspacing="0" width="56%"
																valign="top">
																<table width="100%" cellspacing="0" cellpadding="0">
																	<tr>
																		<td cellpadding="0" cellspacing="0"
																			style="padding-bottom: 0px; line-height: 24px; font-family: Calibri; font-size: 16px;">
																			Although we have shared

																		</td>
																	</tr>
																	<tr>
																		<td cellpadding="0" cellspacing="0"
																			style="padding-bottom: 20px; line-height: 24px; font-family: Calibri; font-size: 16px;">
																			with you new
																			credentials a week ago, you still have not
																			log-in into the application. Maybe it would be a good
																			idea to connect with your manager offline on this.
																		</td>
																	</tr>

																	<tr>
																		<td cellpadding="0" cellspacing="0"
																			style="padding-bottom: 5px; font-family: Calibri; font-size: 16px;">
																			Thanks, </td>
																	</tr>
																	<tr>
																		<td cellpadding="0" cellspacing="0"
																			style=" font-family: Calibri; font-size: 16px;">
																			UnlockOKR Team </td>
																	</tr>
																</table>
															</td>
															<td cellpadding="0" cellspacing="0" valign="top">
																<img src="userManger"
																	style="display: block; " align="right" />
															</td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0"
							style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0"
										style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy
										Unlocking!
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0"
							style="padding:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;">
										Note: Please
										do
										not reply to this email. Emails sent to this address will not be
										answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;">
										Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com"
											style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a>
									</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;">
										If you are
										having
										trouble viewing this email, you can update your outlook settings by <a
											target="_blank"
											href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error"
											style="color: #39A3FA; text-decoration: underline;">clicking here</a>.
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%"
										style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">
										&copy; year Infopro Learning, Inc. All rights reserved
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='LR'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'COC')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>8 days before the end of planning session</title>
	<style>
	body {
		-webkit-text-size-adjust: 100%;
		margin: 0;
		padding: 0;
		border: 0px;
		font-family: Calibri;
		font-weight: 400;
		font-size: 16px;
	}
	
	table,
	tr,
	td {
		margin: 0px;
		padding: 0px;
	}
	</style>
</head>
<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              
<table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; padding-left:20px; padding-right:20px;">
							<table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff;  border-radius: 6px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 33px 0px 21px;">
										<table width="100%" cellspacing="0" cellpadding="0">
											<tr>
												<td align="left" cellpadding="0" cellspacing="0" style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-left:38px;padding-right:35px;text-align: left;"> Hello <strong>Leader</strong>, </td>
											</tr>
											<tr>
												<td valign="top" cellpadding="0" cellspacing="0" style="padding-left:38px;padding-right: 15px;">
													<table width="100%" cellspacing="0" cellpadding="0">
														<tr>
															<td valign="top" width="62%" cellpadding="0" cellspacing="0" style="width:62%">
																<table width="100%" cellspacing="0" cellpadding="0">
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0" style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 28px;padding-top:26px;text-align: left;"> Consider updating your OKRs before the end of this cycle on <strong>Closing</strong>. </td>
																	</tr>
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0" style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 28px;text-align: left;"> After that date, you will have to raise a request with your manager to update them. </td>
																	</tr>
																	<tr>
																		<td cellpadding="0" cellspacing="0" align="left" style="text-align: left;padding-top: 20px;">
																			<table cellspacing="0" cellpadding="0" style="">
																				<tr>
																					<td align="center" width="181" height="40" bgcolor="#39A3FA" style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;"> <a href="<RedirectOkR>" style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">
Yes, Iwill do it now</a> </td>
																				</tr>
																			</table>
																			<!-- <![endif]-->
																		</td>
																	</tr>
																</table>
															</td>
															<td valign="top" cellpadding="0" cellspacing="0" align="right" style="text-align: right;"> <img src="watch" alt="watch" style="display:inline-block;max-width:100%;padding: 0px;margin: 0px"> </td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; padding-left:20px; padding-right:20px; border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding:20px; border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='COC'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'PRC')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Password Reset</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>          <table width="100%"  class="wrapper" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">          <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal;">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-right: 20px;padding-left: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff; border-radius: 5px; ">
								<tr>
									<td style="padding: 0 35px;">
										<table cellspacing="0" cellpadding="0" width="100%">
											<tr>
												<td cellpadding="0" cellspacing="0" style="font-size: 18px; padding-bottom: 10px; text-align: center; padding-top: 30px;font-family: Calibri;">Hello <strong>
															<user>,
															</strong> </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 15px; text-align: center;">
													<table width="320px" align="center" cellspacing="0" cellpadding="0" style="background-color: #DDFFEB; margin: auto; border-radius: 5px;">
														<tr>
															<td style="padding: 15px 20px">
																<table cellspacing="0" cellpadding="0">
																	<tr>
																		<td width="33" align="left"> <img src="tick" alt="tick" style="display: block;" /> </td>
																		<td style="color: #3DD082; text-align: left;                                                              padding-left: 15px;font-family: Calibri;">Password was successfully reset.</td>
																	</tr>
																</table>
															</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style=" font-size: 16px;  text-align: center; padding-bottom: 20px;">
													<table width="250" cellpadding="0" cellspacing="0" style="margin: auto;">
														<tr>
															<td cellpadding="0" cellspacing="0" style="line-height: 20px; text-align: center; font-family: Calibri;">If you did not request this change, please contact <a href="mailto:<emailId>" style="color: #39A3FA; text-decoration: underline;">admin</a> . </td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 5px; text-align: center; font-family: Calibri;">Thanks,</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 30px; text-align: center; font-family: Calibri;">UnlockOkr Team</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='PRC'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'OLNU')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>User Removed</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
		<!--[if !mso]><!-->
		<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
			<!--<![endif]-->
			<!--[if (mso)|(IE)]>              <table width="100%" class="wrapper" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
			<tr>
				<td cellspacing="0" cellpadding="0">
					<img src="topBar" width="100%" style="display: block;"/>
				</td>
			</tr>
			<tr>
				<td cellspacing="0" cellpadding="0">
					<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; font-size: 16px;">
						<tr>
							<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
						</tr>
						<tr>
							<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-right: 20px;padding-left: 20px;">
								<table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff; border-radius: 5px;">
									<tr>
										<td style="padding: 0 50px;">
											<table cellpadding="0" cellspacing="0" width="100%">
												<tr>
													<td cellpadding="0" cellspacing="0" style="font-size: 18px; padding-bottom: 10px; text-align: center; padding-top: 30px;font-family: Calibri;">Hello
														<span style="font-weight: bold;">
															<teamLeader>,
															</span>
														</td>
													</tr>
													<tr>
														<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;text-align: center; font-family: Calibri;">Here is a list of your new team member(s).</td>
													</tr>
													<userDetail>
														<tr>
															<td cellpadding="0" cellspacing="0" style="padding-bottom: 5px; font-family: Calibri; text-align: center;">Thanks,</td>
														</tr>
														<tr>
															<td cellpadding="0" cellspacing="0" style="text-align: center; padding-bottom: 30px; font-family: Calibri;">UnlockOKR Team</td>
														</tr>
													</table>
</td>
											</tr>
										</table>
</td>
								</tr>
								<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='OLNU'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'OSC')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Organisation Settings Change</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              <table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0"> <img src="topbar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; font-size: 16px;">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-right: 20px;padding-left: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff; border-radius: 5px;">
								<tr>
									<td style="padding: 33px 30px;">
										<table cellpadding="0" cellspacing="0" width="100%">
											<tr>
												<td cellpadding="0" cellspacing="0" style="font-size: 18px; padding-bottom: 10px; font-family: Calibri;">Hello <span style="font-weight: bold;">teamLeader,</span> </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 15px; font-family: Calibri; font-size: 16px;">The following setting(s) have been altered:</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 15px; padding-left: 10px; ">
													<table cellpadding="0" cellspacing="0" width="100%">
														<settings>
													</table>
												</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; font-family: Calibri;">If this was done on purpose, please ignore this message. Otherwise please contact your UnlockOKR <a href="mailto:<supportEmailId>" target="_blank" style="color: #39A3FA; text-decoration: underline;">admin</a> . </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;">
													<a href="<unlockOkrUrl>" style="display: block;  text-decoration: none;"> <img src="unlockButton" style="display: block;" /> </a>
												</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 5px; font-family: Calibri;">Thanks,</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style=" font-family: Calibri;">UnlockOkr Team</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='OSC'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'UR')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>User Removed</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>          <table width="100%" class="wrapper" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">          <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0">
				<img src="topBar" width="100%" style="display: block;"/>
			</td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table width="600" align="center" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; font-size: 16px;">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
									<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
								</td>
								<td align="right" cellpadding="0" cellspacing="0">
									<table width="90px" cellspacing="0" cellpadding="0">
										<tr>
											<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
												<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
											</td>
											<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
												<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
											</td>
											<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
												<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
											</td>
											<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
												<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
											</td>
										</tr>
									</table>
								</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-right: 20px;padding-left: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff; border-radius: 5px; ">
								<tr>
									<td style="padding:0 50px;" valign="top">
										<table cellpadding="0" cellspacing="0" width="100%">
											<tr>
												<td cellpadding="0" cellspacing="0" style="font-size: 18px; padding-bottom: 10px; text-align: center; padding-top: 30px;font-family: Calibri;">Hello <span style="font-weight: bold;"><manager>,</span></td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; text-align: center;font-family: Calibri;">The following team member(s) were removed from your team.</td>
											</tr>
											<Details>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; text-align: center;font-family: Calibri;">If you have not approved this change, please contact the
													<a href="mailto:<emailId>" style="color:#39A3FA; text-decoration: underline;">admin.</a>
												</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 5px; text-align: center; font-family: Calibri;">Thanks,</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="text-align: center; padding-bottom: 30px; font-family: Calibri;">UnlockOKR Team</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='UR'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'BU')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Bulk Upload</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              <table width="100%" class="wrapper" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; font-size: 16px;">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-right: 20px;padding-left: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff; border-radius: 5px;">
								<tr>
									<td style="padding: 0 50px;">
										<table cellpadding="0" cellspacing="0" width="100%">
											<tr>
												<td cellpadding="0" cellspacing="0" style="font-size: 18px; padding-bottom: 10px; text-align: center; padding-top: 30px;font-family: Calibri;">Hello <span style="font-weight: bold;">
															<teamLeader>,
															</span> </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;text-align: center; font-family: Calibri;">Here is a list of your new team member(s).</td>
											</tr>
											<userDetail>
												<tr>
													<td cellpadding="0" cellspacing="0" style="padding-bottom: 5px; font-family: Calibri; text-align: center;">Thanks,</td>
												</tr>
												<tr>
													<td cellpadding="0" cellspacing="0" style="text-align: center; padding-bottom: 30px; font-family: Calibri;">UnlockOKR Team</td>
												</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='BU'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'FP')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Password Reset</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>          <table width="100%" class="wrapper" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">          <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal;">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-right: 20px;padding-left: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff; border-radius: 5px; ">
								<tr>
									<td style="padding: 0 35px;" valign="top">
										<table cellspacing="0" cellpadding="0" width="100%">
											<tr>
												<td cellpadding="0" cellspacing="0" style="font-size: 18px;padding-bottom: 10px; padding-top: 30px; font-family: Calibri;">Hello <strong>
															<user>,
															</strong> </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0">
													<table width="100%" cellspacing="0" cellpadding="0">
														<tr>
															<td cellpadding="0" cellspacing="0" width="45%" valign="top">
																<table width="100%" cellspacing="0" cellpadding="0">
																	<tr>
																		<td cellpadding="0" cellspacing="0" style="padding-bottom: 23px; font-family: Calibri;">Please click on the button below to reset your password.</td>
																	</tr>
																	<tr>
																		<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px">
																			<a href="<token>" style="display: block;  text-decoration: none;"> <img src="resetButton" /> </a>
																		</td>
																	</tr>
																	<tr>
																		<td cellpadding="0" cellspacing="0" style="padding-bottom: 15px; font-size: 16px; font-family: Calibri;">Or, right click on the <a href="<token>" target="_blank" style="color: #39A3FA; text-decoration: underline;">link</a> to copy and paste it in the web browser </td>
																	</tr>
																</table>
															</td>
															<td cellpadding="0" cellspacing="0" valign="top" align="right"> <img src="passwordImage" style="display: block; float: right;" /> </td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; font-family: Calibri;">
													<table width="520" cellpadding="0" cellspacing="0">
														<tr>
															<td>If you did not request a password reset, you can safely ignore this email. Only a person with access to your email can reset your UnlockOKR password.</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 5px; font-family: Calibri;">Thanks,</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 30px; font-family: Calibri;">UnlockOKR Team</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='FP'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'NCU')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Only Notification and daily email</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
		<!--[if !mso]><!-->
		<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
			<!--<![endif]-->
			<!--[if (mso)|(IE)]>              <table width="100%" class="wrapper" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
			<tr>
				<td cellspacing="0" cellpadding="0">
					<img src="topBar" width="100%" style="display: block;"/>
				</td>
			</tr>
			<tr>
				<td cellspacing="0" cellpadding="0">
					<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; font-size: 16px;">
						<tr>
							<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
								<table width="100%" cellspacing="0" cellpadding="0">
									<tr>
										<td style="width: 50%;">
											<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
										</td>
										<td align="right" cellpadding="0" cellspacing="0">
											<table width="90px" cellspacing="0" cellpadding="0">
												<tr>
													<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
														<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
													</td>
													<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
														<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
													</td>
													<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
														<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
													</td>
													<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
														<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
													</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-right: 20px;padding-left: 20px;">
								<table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff; border-radius: 5px;">
									<tr>
										<td style="padding: 0 35px;">
											<table cellpadding="0" cellspacing="0" width="100%">
												<tr>
													<td cellpadding="0" cellspacing="0" style="font-size: 18px; padding-bottom: 10px;  text-align: center; padding-top: 30px; font-family: Calibri;">Welcome
														<strong>
															<user>,
														</strong>
													</td>
												</tr>
												<tr>
													<td cellpadding="0" cellspacing="0" style="padding-bottom: 0;  text-align: center; font-family: Calibri;">Your brand new Unlock OKR profile has now been created!</td>
												</tr>
												<tr>
													<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; font-family: Calibri;  text-align: center;">We hope that you have an amazing experience creating your OKRs and build a strong foundation for the organizational alignment.</td>
												</tr>
												<tr>
													<td cellpadding="0" cellspacing="0" style=" text-align: center;">
														<img src="screen-image" alt="Screen image"/>
													</td>
												</tr>
												<tr>
													<td cellpadding="0" cellspacing="0" style="padding: 0 5% 23px;  text-align: center; font-family: Calibri;">Please note that the platform will prompt you for a password change when you login for the first time. If you have any queries or issues, please reach out to the HR or admin.</td>
												</tr>
												<tr>
													<td cellpadding="0" cellspacing="0" style=" text-align: center; padding-bottom: 20px;">
														<a href="<resetUrl>" style="display: block;  text-decoration: none;">
															<img src="getStartedButton" alt=""/>
														</a>
													</td>
												</tr>
												<tr>
													<td cellpadding="0" cellspacing="0" style="padding-bottom: 5px; text-align: center; font-family: Calibri;">Thanks,</td>
												</tr>
												<tr>
													<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; text-align: center; font-family: Calibri;">UnlockOKR Team</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
								<table cellspacing="0" cellpadding="0">
									<tr>
										<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;border-bottom: 1px solid #c3cedc;">
								<table cellspacing="0" cellpadding="0">
									<tr>
										<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
									</tr>
									<tr>
										<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
									</tr>
									<tr>
										<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
								<table width="100%" cellspacing="0" cellpadding="0">
									<tr>
										<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
'

where TemplateCode='NCU'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'OLO')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Only Notification and daily email</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
		<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
			<!--<![endif]-->
			<!--[if (mso)|(IE)]>              <table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
			<tr>
				<td cellspacing="0" cellpadding="0">
					<img src="topbar" width="100%" style="display: block;"/>
				</td>
			</tr>
			<tr>
				<td cellspacing="0" cellpadding="0">
					<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; ">
						<tr>
							<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
						</tr>
						<tr>
							<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-right: 20px;padding-left: 20px;">
								<table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff;  border-radius: 5px;">
									<tr>
										<td cellpadding="0" cellspacing="0" style="padding: 0 35px;">
											<table width="100%" cellspacing="0" cellpadding="0">
												<tr>
													<td style="font-size: 18px; padding-bottom: 10px; padding-top: 33px; font-family: Calibri; ">Hello
														<strong>oldTeamLeader</strong>
														,
													</td>
												</tr>
												<tr>
													<td>
														<table cellpadding="0" cellspacing="0">
															<tr>
																<td cellpadding="0" cellspacing="0" width="55%" valign="middle">
																	<table width="100%" cellspacing="0" cellpadding="0">
																		<tr>
																			<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; line-height: 24px; font-family: Calibri; font-size: 16px;">This is to notify you that
																				<span style="font-weight: bold;">organisationName</span>
																				now has new team leader assigned to it. It might be a good idea to introduce the team to
																				<span style="font-weight: bold;">newLeader</span>
																				.
																			</td>
																		</tr>
																		<tr>
																			<td cellpadding="0" cellspacing="0" style="padding-bottom: 5px; font-family: Calibri; font-size: 16px;">Thanks,</td>
																		</tr>
																		<tr>
																			<td cellpadding="0" cellspacing="0" style="padding-bottom: 30px; font-family: Calibri; font-size: 16px;">UnlockOKR Team</td>
																		</tr>
																	</table>
</td>
																<td cellpadding="0" cellspacing="0" valign="top">
																	<img src="leaderChangeImage" style="display: block; " align="right"/>
																</td>
															</tr>
														</table>
													</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='OLO'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'NLO')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Only Notification and daily email</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              <table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0">
				<img src="topbar" width="100%" style="display: block;"/>
			</td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
						<table width="100%" cellspacing="0" cellpadding="0">
							<tr>
								<td style="width: 50%;">
									<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
								</td>
								<td align="right" cellpadding="0" cellspacing="0">
									<table width="90px" cellspacing="0" cellpadding="0">
										<tr>
											<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
												<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
											</td>
											<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
												<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
											</td>
											<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
												<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
											</td>
											<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
												<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-right: 20px;padding-left: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff;  border-radius: 5px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 0 35px;">
										<table width="100%" cellspacing="0" cellpadding="0">
											<tr>
												<td style="font-size: 18px; padding-bottom: 10px; padding-top: 33px; font-family: Calibri; ">Hello
													<strong>newTeamLeader</strong>
													,
												</td>
											</tr>
											<tr>
												<td>
													<table cellpadding="0" cellspacing="0">
														<tr>
															<td cellpadding="0" cellspacing="0" width="55%" valign="middle">
																<table width="100%" cellspacing="0" cellpadding="0">
																	<tr>
																		<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; line-height: 24px; font-family: Calibri; font-size: 16px;">You are now the team leader for
																			<span style="font-weight: bold;">organisationName</span>
																			. You can reach out to your new team members and organize 1:1 meetings with them to properly align your overall OKRs.
																		</td>
																	</tr>
																	<tr>
																		<td cellpadding="0" cellspacing="0" style="padding-bottom: 5px; font-family: Calibri; font-size: 16px;">Thanks,</td>
																	</tr>
																	<tr>
																		<td cellpadding="0" cellspacing="0" style="padding-bottom: 30px; font-family: Calibri; font-size: 16px;">UnlockOKR Team</td>
																	</tr>
																</table>
</td>
															<td cellpadding="0" cellspacing="0" valign="top">
																<img src="leaderChangeImage" style="display: block; " align="right"/>
															</td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='NLO'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'PFRC')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Feedback Requestor</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              <table width="100%" class="wrapper" align="center"  style="Margin: 0 auto; padding:0px; background: #E5F0FF;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; font-size: 16px;">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-right: 20px;padding-left: 20px;">
							<table cellpadding="0" cellspacing="0" border="0" width="100%" style="background-color: #ffffff;  border-radius: 5px;">
								<tr>
									<td style="padding: 0 35px;" width="60%" valign="top">
										<table cellpadding="0" cellspacing="0" width="100%" style="background-color: #ffffff;  border-radius: 5px;">
											<tr>
												<td cellpadding="0" cellspacing="0" style="font-size: 18px; padding-bottom: 10px; padding-top: 30px; font-family: Calibri;"> Hi <span style="font-weight: bold;"> requestor,</span> </td>
											</tr>
											<tr>
												<td style="padding: 15px 10px; border: 1px solid #A1ABB9; border-radius: 0px 10px 10px 10px; font-weight: bold; font-family: Calibri;">
													<table width="100%" cellpadding="0" cellspacing="0">
														<tr>
															<td style="font-weight: normal; font-size: 12px; padding-top: 10px;">My Feedback</td>
														</tr>
														<tr>
															<td style="font-weight: normal;">&#8220;
																<feedbackBody>&#8221;</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style=" padding-top: 20px;">
													<a href="<commentUrl>" style="display: block;  text-decoration: none;"> <img style="display: block;" src="replyButton" /> </a>
												</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 5px; padding-top: 20px; font-family: Calibri;"> Regards, </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 30px; font-family: Calibri;"> provider </td>
											</tr>
										</table>
									</td>
									<td width="40%" valign="top"> <img src="feedbackComment" style="display: block; width: 100%;" /> </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='PFRC'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'PGF')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Feedback Requestor</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>          <table width="100%" class="wrapper" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">          <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; font-size: 16px;">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-right: 20px;padding-left: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff; ">
								<tr>
									<td cellpadding="0" cellspacing="0" width="70%" style="padding: 0 35px;" valign="top">
										<table cellspacing="0" cellpadding="0" width="350px">
											<tr>
												<td cellpadding="0" cellspacing="0" style="font-size: 18px; padding-top: 30px; padding-bottom: 10px; font-family: Calibri;"> Hi <span style="font-weight: bold;"> Requestor</span>, </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; font-family: Calibri;"> I wanted to share my thoughts about you on some parameters, here is my feedback, </td>
											</tr>
											<tr>
												<td style="padding: 15px 10px; border: 1px solid #A1ABB9; border-radius: 0px 10px 10px 10px; font-weight: bold; font-family: Calibri;">
													<table width="100%" cellpadding="0" cellspacing="0">
														<tr>
															<td style="font-weight: normal; font-size: 12px;">My Feedback</td>
														</tr>
														<tr>
															<td style="font-weight: normal;">&#8220;
																<remark>&#8221;</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style=" padding-top: 20px;">
													<a href="<commentUrl>" style="display: block;  text-decoration: none;"> <img style="display: block;" src="replyButton" /> </a>
												</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-top: 20px; padding-bottom: 5px; font-family: Calibri;"> Regards, </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 30px; font-family: Calibri;"> Name </td>
											</tr>
										</table>
									</td>
									<td valign="top"> <img src="feedbackResponse" style="display: block;" /> </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='PGF'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'PRF')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Only Notification and daily email</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              <table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-right: 20px;padding-left: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff;  border-radius: 5px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 33px 35px;">
										<table width="100%" cellspacing="0" cellpadding="0">
											<tr>
												<td style="font-size: 18px; padding-bottom: 10px;  font-family: Calibri; "> Hello <strong>attendee</strong>, </td>
											</tr>
											<tr>
												<td>
													<table cellpadding="0" cellspacing="0">
														<tr>
															<td cellpadding="0" cellspacing="0" width="55%" valign="top">
																<table width="100%" cellspacing="0" cellpadding="0">
																	<tr>
																		<td cellpadding="0" cellspacing="0" style="padding-bottom: 10px; line-height: 24px; font-family: Calibri; font-size: 16px;"> <span style="font-weight: bold;">requestor</span> has requested for an 1:1 meeting related to personal feedback. </td>
																	</tr>
																	<tr>
																		<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; font-family: Calibri; font-size: 16px;"> Please respond with your availability at your earliest. </td>
																	</tr>
																	<tr>
																		<td cellpadding="0" cellspacing="0" style="padding-bottom: 5px; font-family: Calibri; font-size: 16px;"> Thanks, </td>
																	</tr>
																	<tr>
																		<td cellpadding="0" cellspacing="0" style=" font-family: Calibri; font-size: 16px;"> UnlockOKR Team </td>
																	</tr>
																</table>
															</td>
															<td cellpadding="0" cellspacing="0" valign="top"> <img src="connect" style="display: block; " align="right" /> </td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='PRF'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'PPF')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Feedback Requestor</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->

	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>          <table width="100%" class="wrapper" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">          <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; font-size: 16px;">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-right: 20px;padding-left: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff; ">
								<tr>
									<td cellpadding="0" cellspacing="0" width="70%" style="padding: 0 35px;" valign="top">
										<table cellspacing="0" cellpadding="0" width="350px">
											<tr>
												<td cellpadding="0" cellspacing="0" style="font-size: 18px; padding-top: 30px; padding-bottom: 10px; font-family: Calibri;"> Hi <span style="font-weight: bold;"> Requestor</span>, </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; font-family: Calibri;"> Here is my thought on your request. </td>
											</tr>
											<tr>
												<td style="padding: 15px 10px; border: 1px solid #A1ABB9; border-radius: 0px 10px 10px 10px; font-weight: bold; font-family: Calibri;">
													<table width="100%" cellpadding="0" cellspacing="0">
														<tr>
															<td style="font-weight: normal; font-size: 12px;">My Feedback</td>
														</tr>
														<tr>
															<td style="font-weight: normal;">&#8220;
																<remark>&#8221;</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style=" padding-top: 20px;">
													<a href="<commentUrl>" style="display: block;  text-decoration: none;"> <img style="display: block;" src="replyButton" /> </a>
												</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-top: 20px; padding-bottom: 5px; font-family: Calibri;"> Regards, </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 30px; font-family: Calibri;"> Name </td>
											</tr>
										</table>
									</td>
									<td valign="top"> <img src="feedbackResponse" style="display: block;" /> </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='PPF'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'PF')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Feedback Requestor</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>          <table width="100%" class="wrapper" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">          <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; font-size: 16px;">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-right: 20px;padding-left: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff; ">
								<tr>
									<td cellpadding="0" cellspacing="0" width="70%" style="padding: 0 35px;" valign="top">
										<table cellspacing="0" cellpadding="0" width="350px">
											<tr>
												<td cellpadding="0" cellspacing="0" style="font-size: 18px; padding-top: 30px; padding-bottom: 10px; font-family: Calibri;"> Hi <span style="font-weight: bold;"> Requestor</span>, </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; font-family: Calibri;"> Here is my thought on your request. </td>
											</tr>
											<tr>
												<td style="padding: 15px 10px; border: 1px solid #A1ABB9; border-radius: 0px 10px 10px 10px; font-weight: bold; font-family: Calibri;">
													<table width="100%" cellpadding="0" cellspacing="0">
														<tr>
															<td>OKR </td>
														</tr>
														<tr>
															<td style="font-weight: normal; font-size: 12px; padding-top: 10px;">My Feedback</td>
														</tr>
														<tr>
															<td style="font-weight: normal;">&#8220;
																<remark>&#8221;</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style=" padding-top: 20px;">
													<a href="<commentUrl>" style="display: block;  text-decoration: none;"> <img style="display: block;" src="replyButton" /> </a>
												</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-top: 20px; font-family: Calibri;"> Regards, </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 30px; font-family: Calibri;"> Name </td>
											</tr>
										</table>
									</td>
									<td valign="top"> <img src="feedbackResponse" style="display: block;" /> </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='PF'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'AF')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Feedback Provider</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              <table width="100%" class="wrapper" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; font-size: 16px;">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-right: 20px;padding-left: 20px;">
							<table width="100%" role="pesentation" cellspacing="0" cellpadding="0" border="0" style="border-radius: 5px; background-color: #ffffff;">
								<tr>
									<td style="padding: 0 35px;" valign="top">
										<table role="pesentation" cellspacing="0" cellpadding="0" border="0" width="350">
											<tr>
												<td style="font-size: 18px; padding-bottom: 10px; padding-top: 30px; font-family: Calibri;"> Hi <span style="font-weight: bold;"> user</span>, </td>
											</tr>
											<tr>
												<td style="padding-bottom: 15px; font-family: Calibri;"> Would you please share your feedback and insights on this
													<distinguisher> that I am currently working on? </td>
											</tr>
											<tr>
												<td style="padding: 15px 10px; border: 1px solid #A1ABB9; border-radius: 0px 10px 10px 10px; font-weight: bold; font-family: Calibri;">
													<table width="100%" cellpadding="0" cellspacing="0">
														<tr>
															<td>OKRfocus</td>
														</tr>
														<tr>
															<td style="font-weight: normal; font-size: 12px; padding-top: 10px;">My Comment</td>
														</tr>
														<tr>
															<td style="font-weight: normal;">&#8220;
																<remark>&#8221;</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td style="padding-bottom: 23px; padding-top: 10px;font-family: Calibri;"> This would help me achieve my goals better. </td>
											</tr>
											<tr>
												<td style="padding-bottom: 20px;">
													<a href="<provideFeedbackUrl>" target="_blank" style="display: block;"> <img src="shareFeedback" /> </a>
												</td>
											</tr>
											<tr>
												<td style="padding-bottom: 5px; font-family: Calibri;"> Thanks, </td>
											</tr>
											<tr>
												<td style="padding-bottom: 30px; font-family: Calibri;"> <span style="display: block;">Requestor </span> </td>
											</tr>
										</table>
									</td>
									<td valign="top"> <img src="feedbackAsk" style="display: block;" /> </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='AF'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'RF')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Only Notification and daily email</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              <table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-right: 20px;padding-left: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff;  border-radius: 5px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 33px 35px;">
										<table width="100%" cellspacing="0" cellpadding="0">
											<tr>
												<td style="font-size: 18px; padding-bottom: 10px;  font-family: Calibri; "> Hello <strong>attendee</strong>, </td>
											</tr>
											<tr>
												<td>
													<table cellpadding="0" cellspacing="0">
														<tr>
															<td cellpadding="0" cellspacing="0" width="55%" valign="top">
																<table width="100%" cellspacing="0" cellpadding="0">
																	<tr>
																		<td cellpadding="0" cellspacing="0" style="padding-bottom: 10px; line-height: 24px; font-family: Calibri; font-size: 16px;"> <span style="font-weight: bold;">requestor</span> has requested for an 1:1 meeting on
																			<distinguisher>
																				<a href="<goToGoalsUrl>" style="color: #39A3FA; text-decoration: underline; font-weight: bold;">
																					<OKR>
																				</a>
																		</td>
																	</tr>
																	<tr>
																		<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; font-family: Calibri; font-size: 16px;"> Please respond with your availability at your earliest. </td>
																	</tr>
																	<tr>
																		<td cellpadding="0" cellspacing="0" style="padding-bottom: 5px; font-family: Calibri; font-size: 16px;"> Thanks, </td>
																	</tr>
																	<tr>
																		<td cellpadding="0" cellspacing="0" style=" font-family: Calibri; font-size: 16px;"> UnlockOKR Team </td>
																	</tr>
																</table>
															</td>
															<td cellpadding="0" cellspacing="0" valign="top"> <img src="connect" style="display: block; " align="right" /> </td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='RF'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'FRC')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Feedback Requestor</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              <table width="100%" class="wrapper" align="center"  style="Margin: 0 auto; padding:0px; background: #E5F0FF;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; font-size: 16px;">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-right: 20px;padding-left: 20px;">
							<table cellpadding="0" cellspacing="0" border="0" width="100%" style="background-color: #ffffff;  border-radius: 5px;">
								<tr>
									<td style="padding: 0 35px;" width="60%" valign="top">
										<table cellpadding="0" cellspacing="0" width="100%" style="background-color: #ffffff;  border-radius: 5px;">
											<tr>
												<td cellpadding="0" cellspacing="0" style="font-size: 18px; padding-bottom: 10px; padding-top: 30px; font-family: Calibri;"> Hi <span style="font-weight: bold;"> requestor,</span> </td>
											</tr>
											<tr>
												<td style="padding: 15px 10px; border: 1px solid #A1ABB9; border-radius: 0px 10px 10px 10px; font-weight: bold; font-family: Calibri;">
													<table width="100%" cellpadding="0" cellspacing="0">
														<tr>
															<td>
																<okrName>
															</td>
														</tr>
														<tr>
															<td style="font-weight: normal; font-size: 12px; padding-top: 10px;">My Feedback</td>
														</tr>
														<tr>
															<td style="font-weight: normal;">&#8220;
																<feedbackBody>&#8221;</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style=" padding-top: 20px;">
													<a href="<commentUrl>" style="display: block;  text-decoration: none;"> <img style="display: block;" src="replyButton" /> </a>
												</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 5px; padding-top: 20px; font-family: Calibri;"> Regards, </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 30px; font-family: Calibri;"> provider </td>
											</tr>
										</table>
									</td>
									<td width="40%" valign="top"> <img src="feedbackComment" style="display: block; width: 100%;" /> </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'
where TemplateCode='FRC'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'PAF')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Feedback Provider</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              <table width="100%" class="wrapper" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; font-size: 16px;">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-right: 20px;padding-left: 20px;">
							<table width="100%" role="pesentation" cellspacing="0" cellpadding="0" border="0" style="border-radius: 5px; background-color: #ffffff;">
								<tr>
									<td style="padding: 0 35px;" valign="top">
										<table role="pesentation" cellspacing="0" cellpadding="0" border="0" width="350">
											<tr>
												<td style="font-size: 18px; padding-bottom: 10px; padding-top: 30px; font-family: Calibri;"> Hi <span style="font-weight: bold;"> user</span>, </td>
											</tr>
											<tr>
												<td style="padding-bottom: 15px; font-family: Calibri;"> Would you please share your feedback and insights about me on following parameters: </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 15px; padding-left: 10px; ">
													<table cellpadding="0" cellspacing="0" width="100%">
														<tr>
															<td width="10" cellpadding="0" cellspacing="0" style="font-family: Calibri; font-size: 16px;" valign="top"> &#149;</td>
															<td cellpadding="0" cellspacing="0" style="font-family: Calibri; font-size: 16px;"> Attitude</td>
														</tr>
														<tr>
															<td width="10" cellpadding="0" cellspacing="0" style=" font-family: Calibri;  padding-right: 10px; font-size: 16px;" valign="top">&#149;</td>
															<td cellpadding="0" cellspacing="0" style="font-family: Calibri; font-size: 16px;">Intellect</td>
														</tr>
														<tr>
															<td width="10" cellpadding="0" cellspacing="0" style=" font-family: Calibri;  padding-right: 10px; font-size: 16px;" valign="top"> &#149;</td>
															<td cellpadding="0" cellspacing="0" style="font-family: Calibri; font-size: 16px;">Professionalism</td>
														</tr>
														<tr>
															<td width="10" cellpadding="0" cellspacing="0" style=" font-family: Calibri; padding-right: 10px; font-size: 16px;" valign="top"> &#149;</td>
															<td cellpadding="0" cellspacing="0" style="font-family: Calibri; font-size: 16px;">Team Ethics</td>
														</tr>
														<tr>
															<td width="10" cellpadding="0" cellspacing="0" style=" font-family: Calibri; padding-right: 10px; font-size: 16px;" valign="top">&#149;</td>
															<td cellpadding="0" cellspacing="0" style="font-family: Calibri; font-size: 16px;">Leadership </td>
														</tr>
														<tr>
															<td width="10" cellpadding="0" cellspacing="0" style=" font-family: Calibri; padding-right: 10px; font-size: 16px;" valign="top">&#149;</td>
															<td cellpadding="0" cellspacing="0" style="font-family: Calibri; font-size: 16px;">Ownership</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td style="padding: 15px 10px; border: 1px solid #A1ABB9; border-radius: 0px 10px 10px 10px; font-weight: bold; font-family: Calibri;">
													<table width="100%" cellpadding="0" cellspacing="0">
														<tr>
															<td style="font-weight: normal; font-size: 12px;">My Comment</td>
														</tr>
														<tr>
															<td style="font-weight: normal;">&#8220;
																<remark>&#8221;</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td style="padding-bottom: 23px; padding-top: 10px;font-family: Calibri;"> This would help me achieve my goals better. </td>
											</tr>
											<tr>
												<td style="padding-bottom: 20px;">
													<a href="<provideFeedbackUrl>" target="_blank" style="display: block;"> <img src="shareFeedback" /> </a>
												</td>
											</tr>
											<tr>
												<td style="padding-bottom: 5px; font-family: Calibri;"> Thanks, </td>
											</tr>
											<tr>
												<td style="padding-bottom: 30px; font-family: Calibri;"> <span style="display: block;">Requestor </span> </td>
											</tr>
										</table>
									</td>
									<td valign="top"> <img src="feedbackAsk" alt="Feedback ask" style="display: block;" /> </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='PAF'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'AK')
Begin
update [dbo].[MailerTemplate]
set body=
'<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Assignment to KR</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->

	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"
		style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              
			<table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%">
				<img src="topBar" width="100%" style="display: block;" />
			</td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0"
					style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-right: 20px;padding-left: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0"
								style="background-color: #ffffff;  border-radius: 6px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 33px 38px 33px;">
										<table width="100%" cellspacing="0" cellpadding="0">
											<tr>
												<td align="left" cellpadding="0" cellspacing="0"
													style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 27px;text-align: left;">
													Hello <strong>Contri</strong>,
												</td>
											</tr>
											<tr>
												<td valign="top" width="60%" cellpadding="0" cellspacing="0" style="width:60%">
													<table width="100%" cellspacing="0" cellpadding="0">
														<tr>
															<td align="left" cellpadding="0" cellspacing="0"
																style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 27px;text-align: left;">
																user values that you are the best person to help
																him achieve "<a href="tinggg" traget="_blank" style="font-size:16px;font-family: Calibri,Arial;font-weight:bold;color: #39A3FA;text-decoration: none;">KeyDescription</a>".
															</td>
														</tr>
														<tr>
															<td align="left" cellpadding="0" cellspacing="0"
																style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 27px;text-align: left;">
																If you agree with user and can help, why not
																<a href="<GoTo>" traget="_blank" style="font-size:16px;font-family: Calibri,Arial;color: #39A3FA;text-decoration: underline;">accept</a> this immediately? </td>
														</tr>
														<tr>
															<td align="left" cellpadding="0" cellspacing="0"
																style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;text-align: left;">
																If you cant help user, you can let them know by
																<a href="<abcd>"
																	traget="_blank"
																	style="font-size:16px;font-family: Calibri,Arial;color: #39A3FA;text-decoration: underline;">decline</a> here.
															</td>
														</tr>
													</table>
												</td>
												<td valign="top" cellpadding="0" cellspacing="0" align="right" style="text-align: right;">
													<img src="handshake" alt="hand-shake" style="display:inline-block;max-width:100%;padding: 0px;margin: 0px">
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='AK'
End
Go

IF EXISTS(select * from MailerTemplate where TemplateCode = 'PGF')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Feedback Requestor</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>          <table width="100%" class="wrapper" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">          <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; font-size: 16px;">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-right: 20px;padding-left: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff; ">
								<tr>
									<td cellpadding="0" cellspacing="0" width="70%" style="padding: 0 35px;" valign="top">
										<table cellspacing="0" cellpadding="0" width="350px">
											<tr>
												<td cellpadding="0" cellspacing="0" style="font-size: 18px; padding-top: 30px; padding-bottom: 10px; font-family: Calibri;"> Hi <span style="font-weight: bold;"> Requestor</span>, </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; font-family: Calibri;"> I wanted to share my thoughts about you on some parameters, here is my feedback, </td>
											</tr>
											<tr>
												<td style="padding: 15px 10px; border: 1px solid #A1ABB9; border-radius: 0px 10px 10px 10px; font-weight: bold; font-family: Calibri;">
													<table width="100%" cellpadding="0" cellspacing="0">
														<tr>
															<td style="font-weight: normal; font-size: 12px;">My Feedback</td>
														</tr>
														<tr>
															<td style="font-weight: normal;">&#8220;
																<remark>&#8221;</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style=" padding-top: 20px;">
													<a href="<commentUrl>" style="display: block;  text-decoration: none;"> <img style="display: block;" src="replyButton" /> </a>
												</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-top: 20px; padding-bottom: 5px; font-family: Calibri;"> Regards, </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 30px; font-family: Calibri;"> Name </td>
											</tr>
										</table>
									</td>
									<td valign="bottom"> <img src="feedbackResponse" style="display: block;" /> </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='PGF'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'PPF')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Feedback Requestor</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->

	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>          <table width="100%" class="wrapper" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">          <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; font-size: 16px;">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-right: 20px;padding-left: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff; ">
								<tr>
									<td cellpadding="0" cellspacing="0" width="70%" style="padding: 0 35px;" valign="top">
										<table cellspacing="0" cellpadding="0" width="350px">
											<tr>
												<td cellpadding="0" cellspacing="0" style="font-size: 18px; padding-top: 30px; padding-bottom: 10px; font-family: Calibri;"> Hi <span style="font-weight: bold;"> Requestor</span>, </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; font-family: Calibri;"> Here is my thought on your request. </td>
											</tr>
											<tr>
												<td style="padding: 15px 10px; border: 1px solid #A1ABB9; border-radius: 0px 10px 10px 10px; font-weight: bold; font-family: Calibri;">
													<table width="100%" cellpadding="0" cellspacing="0">
														<tr>
															<td style="font-weight: normal; font-size: 12px;">My Feedback</td>
														</tr>
														<tr>
															<td style="font-weight: normal;">&#8220;
																<remark>&#8221;</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style=" padding-top: 20px;">
													<a href="<commentUrl>" style="display: block;  text-decoration: none;"> <img style="display: block;" src="replyButton" /> </a>
												</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-top: 20px; padding-bottom: 5px; font-family: Calibri;"> Regards, </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 30px; font-family: Calibri;"> Name </td>
											</tr>
										</table>
									</td>
									<td valign="bottom"> <img src="feedbackResponse" style="display: block;" /> </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='PPF'
End
Go

IF EXISTS(select * from MailerTemplate where TemplateCode = 'PF')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Feedback Requestor</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>          <table width="100%" class="wrapper" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">          <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; font-size: 16px;">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-right: 20px;padding-left: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff; ">
								<tr>
									<td cellpadding="0" cellspacing="0" width="70%" style="padding: 0 35px;" valign="top">
										<table cellspacing="0" cellpadding="0" width="350px">
											<tr>
												<td cellpadding="0" cellspacing="0" style="font-size: 18px; padding-top: 30px; padding-bottom: 10px; font-family: Calibri;"> Hi <span style="font-weight: bold;"> Requestor</span>, </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; font-family: Calibri;"> Here is my thought on your request. </td>
											</tr>
											<tr>
												<td style="padding: 15px 10px; border: 1px solid #A1ABB9; border-radius: 0px 10px 10px 10px; font-weight: bold; font-family: Calibri;">
													<table width="100%" cellpadding="0" cellspacing="0">
														<tr>
															<td>OKR </td>
														</tr>
														<tr>
															<td style="font-weight: normal; font-size: 12px; padding-top: 10px;">My Feedback</td>
														</tr>
														<tr>
															<td style="font-weight: normal;">&#8220;
																<remark>&#8221;</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style=" padding-top: 20px;">
													<a href="<commentUrl>" style="display: block;  text-decoration: none;"> <img style="display: block;" src="replyButton" /> </a>
												</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-top: 20px; font-family: Calibri;"> Regards, </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 30px; font-family: Calibri;"> Name </td>
											</tr>
										</table>
									</td>
									<td valign="bottom"> <img src="feedbackResponse" style="display: block;" /> </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='PF'
End
Go

IF EXISTS(select * from MailerTemplate where TemplateCode = 'AF')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Feedback Provider</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              <table width="100%" class="wrapper" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; font-size: 16px;">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-right: 20px;padding-left: 20px;">
							<table width="100%" role="pesentation" cellspacing="0" cellpadding="0" border="0" style="border-radius: 5px; background-color: #ffffff;">
								<tr>
									<td style="padding: 0 35px;" valign="top">
										<table role="pesentation" cellspacing="0" cellpadding="0" border="0" width="350">
											<tr>
												<td style="font-size: 18px; padding-bottom: 10px; padding-top: 30px; font-family: Calibri;"> Hi <span style="font-weight: bold;"> user</span>, </td>
											</tr>
											<tr>
												<td style="padding-bottom: 15px; font-family: Calibri;"> Would you please share your feedback and insights on this
													<distinguisher> that I am currently working on? </td>
											</tr>
											<tr>
												<td style="padding: 15px 10px; border: 1px solid #A1ABB9; border-radius: 0px 10px 10px 10px; font-weight: bold; font-family: Calibri;">
													<table width="100%" cellpadding="0" cellspacing="0">
														<tr>
															<td>OKRfocus</td>
														</tr>
														<tr>
															<td style="font-weight: normal; font-size: 12px; padding-top: 10px;">My Comment</td>
														</tr>
														<tr>
															<td style="font-weight: normal;">&#8220;
																<remark>&#8221;</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td style="padding-bottom: 23px; padding-top: 10px;font-family: Calibri;"> This would help me achieve my goals better. </td>
											</tr>
											<tr>
												<td style="padding-bottom: 20px;">
													<a href="<provideFeedbackUrl>" target="_blank" style="display: block;"> <img src="shareFeedback" /> </a>
												</td>
											</tr>
											<tr>
												<td style="padding-bottom: 5px; font-family: Calibri;"> Thanks, </td>
											</tr>
											<tr>
												<td style="padding-bottom: 30px; font-family: Calibri;"> <span style="display: block;">Requestor </span> </td>
											</tr>
										</table>
									</td>
									<td valign="bottom"> <img src="feedbackAsk" style="display: block;" /> </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='AF'
End
Go
IF EXISTS(select * from MailerTemplate where TemplateCode = 'PAF')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Feedback Provider</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              <table width="100%" class="wrapper" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; font-size: 16px;">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 40px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-right: 20px;padding-left: 20px;">
							<table width="100%" role="pesentation" cellspacing="0" cellpadding="0" border="0" style="border-radius: 5px; background-color: #ffffff;">
								<tr>
									<td style="padding: 0 35px;" valign="top">
										<table role="pesentation" cellspacing="0" cellpadding="0" border="0" width="350">
											<tr>
												<td style="font-size: 18px; padding-bottom: 10px; padding-top: 30px; font-family: Calibri;"> Hi <span style="font-weight: bold;"> user</span>, </td>
											</tr>
											<tr>
												<td style="padding-bottom: 15px; font-family: Calibri;"> Would you please share your feedback and insights about me on following parameters: </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 15px; padding-left: 10px; ">
													<table cellpadding="0" cellspacing="0" width="100%">
														<tr>
															<td width="10" cellpadding="0" cellspacing="0" style="font-family: Calibri; font-size: 16px;" valign="top"> &#149;</td>
															<td cellpadding="0" cellspacing="0" style="font-family: Calibri; font-size: 16px;"> Attitude</td>
														</tr>
														<tr>
															<td width="10" cellpadding="0" cellspacing="0" style=" font-family: Calibri;  padding-right: 10px; font-size: 16px;" valign="top">&#149;</td>
															<td cellpadding="0" cellspacing="0" style="font-family: Calibri; font-size: 16px;">Intellect</td>
														</tr>
														<tr>
															<td width="10" cellpadding="0" cellspacing="0" style=" font-family: Calibri;  padding-right: 10px; font-size: 16px;" valign="top"> &#149;</td>
															<td cellpadding="0" cellspacing="0" style="font-family: Calibri; font-size: 16px;">Professionalism</td>
														</tr>
														<tr>
															<td width="10" cellpadding="0" cellspacing="0" style=" font-family: Calibri; padding-right: 10px; font-size: 16px;" valign="top"> &#149;</td>
															<td cellpadding="0" cellspacing="0" style="font-family: Calibri; font-size: 16px;">Team Ethics</td>
														</tr>
														<tr>
															<td width="10" cellpadding="0" cellspacing="0" style=" font-family: Calibri; padding-right: 10px; font-size: 16px;" valign="top">&#149;</td>
															<td cellpadding="0" cellspacing="0" style="font-family: Calibri; font-size: 16px;">Leadership </td>
														</tr>
														<tr>
															<td width="10" cellpadding="0" cellspacing="0" style=" font-family: Calibri; padding-right: 10px; font-size: 16px;" valign="top">&#149;</td>
															<td cellpadding="0" cellspacing="0" style="font-family: Calibri; font-size: 16px;">Ownership</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td style="padding: 15px 10px; border: 1px solid #A1ABB9; border-radius: 0px 10px 10px 10px; font-weight: bold; font-family: Calibri;">
													<table width="100%" cellpadding="0" cellspacing="0">
														<tr>
															<td style="font-weight: normal; font-size: 12px;">My Comment</td>
														</tr>
														<tr>
															<td style="font-weight: normal;">&#8220;
																<remark>&#8221;</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td style="padding-bottom: 23px; padding-top: 10px;font-family: Calibri;"> This would help me achieve my goals better. </td>
											</tr>
											<tr>
												<td style="padding-bottom: 20px;">
													<a href="<provideFeedbackUrl>" target="_blank" style="display: block;"> <img src="shareFeedback" /> </a>
												</td>
											</tr>
											<tr>
												<td style="padding-bottom: 5px; font-family: Calibri;"> Thanks, </td>
											</tr>
											<tr>
												<td style="padding-bottom: 30px; font-family: Calibri;"> <span style="display: block;">Requestor </span> </td>
											</tr>
										</table>
									</td>
									<td valign="bottom"> <img src="feedbackAsk" alt="Feedback ask" style="display: block;" /> </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'
where TemplateCode='PAF'
End
Go
--END SPRINT 2.9.2
--START SPRINT 2.9.3
IF EXISTS(select * from MailerTemplate where TemplateCode = 'KP')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>  <html xmlns="http://www.w3.org/1999/xhtml" class="ie">     <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Changes in OKR</title>
	<style>
	body {
		-webkit-text-size-adjust: 100%;
		margin: 0;
		padding: 0;
		border: 0px;
		font-family: Calibri;
		font-weight: 400;
		font-size: 16px;
	}
	
	table,
	tr,
	td {
		margin: 0px;
		padding: 0px;
	}
	</style>
</head>
<!--[if mso]><body class="mso" style="padding:0px;margin: 0px;"><![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]><table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0"><![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; padding-left: 20px; padding-right: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff;  border-radius: 6px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 33px 35px;">
										<table width="100%" cellspacing="0" cellpadding="0">
											<tr>
												<td align="center" cellpadding="0" cellspacing="0" style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 18px;text-align: center;"> Hello <strong>name,</strong> </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" align="center" style="padding-bottom: 25px;"> <img src="changesinokr" alt="Changes in OKR" style="display:block;max-width:100%;padding: 0px;margin: 0px"> </td>
											</tr>
											<tr>
												<td align="center" cellpadding="0" cellspacing="0" style="font-size:16px;line-height:16px;color:#292929;font-family: Calibri,Arial;padding-bottom: 4px;text-align: center;"> You get a new progress update by <strong>source</strong> on <a href="tinggg" style="text-decoration:none;font-size:16px;line-height:24px;font-weight:bold;color:#39A3FA;font-family: Calibri,Arial;">" keyDescription ".</a> </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" align="center" style="text-align: center;padding-top: 20px;">
													<table cellspacing="0" cellpadding="0" style="Margin:0 auto">
														<tr>
															<td align="center" width="181" height="40" bgcolor="#39A3FA" style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;"> <a href="<abcdefg>" style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">View this OKR</a> </td>
														</tr>
													</table>
													<!-- <![endif]-->
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding-top:20px;padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='KP'
End
Go

IF NOT EXISTS(select * from MailerTemplate where TemplateCode = 'KP2')
Begin
insert into [dbo].[MailerTemplate]
           ([TemplateName]
           ,[TemplateCode]
           ,[Subject]
           ,[Body]
           ,[CreatedBy]
           ,[CreatedOn]
           ,[isActive]) 
		   values 
		   ('KR Prgress Update','KP2','<Contributor name> has contributed to your KR','<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>  <html xmlns="http://www.w3.org/1999/xhtml" class="ie">     <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Changes in OKR</title>
	<style>
	body {
		-webkit-text-size-adjust: 100%;
		margin: 0;
		padding: 0;
		border: 0px;
		font-family: Calibri;
		font-weight: 400;
		font-size: 16px;
	}
	
	table,
	tr,
	td {
		margin: 0px;
		padding: 0px;
	}
	</style>
</head>
<!--[if mso]><body class="mso" style="padding:0px;margin: 0px;"><![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]><table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0"><![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; padding-left: 20px; padding-right: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff;  border-radius: 6px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 33px 35px;">
										<table width="100%" cellspacing="0" cellpadding="0">
											<tr>
												<td align="center" cellpadding="0" cellspacing="0" style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 18px;text-align: center;"> Hello <strong>name,</strong> </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" align="center" style="padding-bottom: 25px;"> <img src="changesinokr" alt="Changes in OKR" style="display:block;max-width:100%;padding: 0px;margin: 0px"> </td>
											</tr>
											<tr>
												<td align="center" cellpadding="0" cellspacing="0" style="font-size:16px;line-height:16px;color:#292929;font-family: Calibri,Arial;padding-bottom: 4px;text-align: center;"> You have received a new Key Result progress update of <strong>ProgressPercentage(<small>ProgressValue</small>)</strong> on <a href="tinggg" style="text-decoration:none;font-size:16px;line-height:24px;font-weight:bold;color:#39A3FA;font-family: Calibri,Arial;"> KRtitle </a> ParentObjective by <strong>source</strong>.</td>
											</tr>											
											<tr>
												<td cellpadding="0" cellspacing="0" align="center" style="text-align: center;padding-top: 20px;">
													<table cellspacing="0" cellpadding="0" style="Margin:0 auto">
														<tr>
															<td align="center" width="181" height="40" bgcolor="#39A3FA" style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;"> <a href="<abcdefg>" style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">View this OKR</a> </td>
														</tr>
													</table>
													<!-- <![endif]-->
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding-top:20px;padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>',195,getdate(),1) 
End
Go

IF NOT EXISTS (SELECT   *  FROM    INFORMATION_SCHEMA.COLUMNS  WHERE    TABLE_NAME = 'Notificationsdetails' AND COLUMN_NAME = 'NotificationOnTypeId')
BEGIN
ALTER TABLE Notificationsdetails
 
   add NotificationOnTypeId int null constraint N_T default 0 with values 
END
GO

IF NOT EXISTS (SELECT   *  FROM    INFORMATION_SCHEMA.COLUMNS  WHERE    TABLE_NAME = 'Notificationsdetails' AND COLUMN_NAME = 'NotificationOnId')
BEGIN
ALTER TABLE Notificationsdetails
 
   add NotificationOnId bigint null constraint N_OT default 0 with values
END
GO

IF NOT EXISTS(select * from MailerTemplate where TemplateCode = 'CTL')
Begin
insert into [dbo].[MailerTemplate]
           ([TemplateName]
           ,[TemplateCode]
           ,[Subject]
           ,[Body]
           ,[CreatedBy]
           ,[CreatedOn]
           ,[isActive]) 
		   values 
		   ('Change Team Leader','CTL','Change Team Leader','<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>  <html xmlns="http://www.w3.org/1999/xhtml" class="ie">     <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Change leader</title>
	<style>
	body {
		-webkit-text-size-adjust: 100%;
		margin: 0;
		padding: 0;
		border: 0px;
		font-family: Calibri;
		font-weight: 400;
		font-size: 16px;
	}
	
	table,
	tr,
	td {
		margin: 0px;
		padding: 0px;
	}
	</style>
</head>
<!--[if mso]><body class="mso" style="padding:0px;margin: 0px;"><![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]><table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0"><![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%"> <img src="topbar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0"
								style="background-color: #ffffff;  border-radius: 6px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 33px 0px 30px;">
										<table width="100%" cellspacing="0" cellpadding="0">
											<tr>
												<td align="left" cellpadding="0" cellspacing="0"
													style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-left:38px;padding-right:35px;text-align: left;">
													Hello <strong>Team member name</strong>,
												</td>
											</tr>
											<tr>
												<td valign="top" cellpadding="0" cellspacing="0"
													style="padding-left:38px;padding-right: 35px;">
													<table width="100%" cellspacing="0" cellpadding="0">
														<tr>
															<td valign="top" width="60%" cellpadding="0" cellspacing="0"
																style="width:60%">
																<table width="100%" cellspacing="0" cellpadding="0">
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0"
																			style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 20px;padding-top:14px;text-align: left;">
																			The leader of <strong>organisationName</strong> has been changed from <strong>oldTeamLeader</strong> to <strong>newLeader</strong>. If you were contributing to any of the Team OKRs or Individual OKRs created by <strong>oldTeamLeader</strong>, these will now be owned by <strong>newLeader</strong>.  
																		</td>
																	</tr>
																</table>
															</td>
															<td valign="top" cellpadding="0" cellspacing="0"
																align="right" style="text-align: right;">
																<img src="hand-shake2" alt="hand-shake"
																	style="display:inline-block;max-width:100%;padding: 0px;margin: 0px">
															</td>
														</tr>
													</table>

												</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 0px;padding-left:38px;padding-right: 35px;">
													<table cellspacing="0" cellpadding="0">
														<tr>
															<td align="left" cellpadding="0" cellspacing="0"
															style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-top:0px;text-align: left;">
															Below are the OKRs owned by <strong>newLeader</strong>:
															</td>
														</tr>
														<tr>
															<td align="left" cellpadding="0" cellspacing="0"
															style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-top:0px;text-align: left;"><strong>organisationName OKRs:</strong>
															</td>
														</tr>
														<tr>
															<td cellpadding="0" cellspacing="0" style="padding-bottom: 0px;padding-top:0;">
																<table cellspacing="0" cellpadding="0">
																	 <Gist>	
																</table>
															</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" align="left"
													style="text-align: left;padding-top: 25px;padding-left:38px;padding-right: 35px;">
													<table cellspacing="0" cellpadding="0"
														style="">
														<tr>
															<td align="center" width="160"
																height="40" bgcolor="#39A3FA"
																style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">
																<a href="<RedirectOkR>"
																	style="height: 40px; color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">
																	View All
																</a>
															</td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="<supportEmailId>" style="color: #39A3FA; text-decoration: underline;"><supportEmailId></a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>',195,getdate(),1) 
End
Go

IF EXISTS(select * from MailerTemplate where TemplateCode = 'KP2')
Begin
update [dbo].[MailerTemplate]
set body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>  <html xmlns="http://www.w3.org/1999/xhtml" class="ie">     <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Changes in OKR</title>
	<style>
	body {
		-webkit-text-size-adjust: 100%;
		margin: 0;
		padding: 0;
		border: 0px;
		font-family: Calibri;
		font-weight: 400;
		font-size: 16px;
	}
	
	table,
	tr,
	td {
		margin: 0px;
		padding: 0px;
	}
	</style>
</head>
<!--[if mso]><body class="mso" style="padding:0px;margin: 0px;"><![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]><table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0"><![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%"> <img src="topBar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px; padding-left: 20px; padding-right: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0" style="background-color: #ffffff;  border-radius: 6px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 33px 35px;">
										<table width="100%" cellspacing="0" cellpadding="0">
											<tr>
												<td align="center" cellpadding="0" cellspacing="0" style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 18px;text-align: center;"> Hello <strong>name,</strong> </td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" align="center" style="padding-bottom: 25px;"> <img src="changesinokr" alt="Changes in OKR" style="display:block;max-width:100%;padding: 0px;margin: 0px"> </td>
											</tr>
											<tr>
												<td align="center" cellpadding="0" cellspacing="0" style="font-size:16px;line-height:16px;color:#292929;font-family: Calibri,Arial;padding-bottom: 4px;text-align: center;"> You have received a new Key Result progress update of <strong>ProgressPercentage(<small>ProgressValue</small>)</strong> on <a href="tinggg" style="text-decoration:none;font-size:16px;line-height:24px;font-weight:bold;color:#39A3FA;font-family: Calibri,Arial;"> KRtitle </a> ParentObjective by <strong>source</strong>.</td>
											</tr>											
											<tr>
												<td cellpadding="0" cellspacing="0" align="center" style="text-align: center;padding-top: 20px;">
													<table cellspacing="0" cellpadding="0" style="Margin:0 auto">
														<tr>
															<td align="center" width="181" height="40" bgcolor="#39A3FA" style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;"> <a href="<abcdefg>" style="color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">View this OKR</a> </td>
														</tr>
													</table>
													<!-- <![endif]-->
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding-top:20px;padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com" style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'

where TemplateCode='KP2'
End
Go 
IF EXISTS(select * from MailerTemplate where TemplateCode = 'CTL')
Begin
UPDATE  [dbo].[MailerTemplate] set
body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>  <html xmlns="http://www.w3.org/1999/xhtml" class="ie">     <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Change leader</title>
	<style>
	body {
		-webkit-text-size-adjust: 100%;
		margin: 0;
		padding: 0;
		border: 0px;
		font-family: Calibri;
		font-weight: 400;
		font-size: 16px;
	}
	
	table,
	tr,
	td {
		margin: 0px;
		padding: 0px;
	}
	</style>
</head>
<!--[if mso]><body class="mso" style="padding:0px;margin: 0px;"><![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->
	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0" style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]><table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0"><![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%"> <img src="topbar" width="100%" style="display: block;" /> </td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0" style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank" style="text-decoration: none;"> <img src="logo" alt="UnlockOKR" style=" display: block;" /> </a>
									</td>
									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk" target="_blank" style="text-decoration: none;"> <img src="srcLinkedin" alt="LinkedIn" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank" style="text-decoration: none;"> <img src="srcFacebook" alt="Facebook" /></a>
												</td>
												<td style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank" style="text-decoration: none;"> <img src="srcInstagram" alt="Instagram" /></a>
												</td>
												<td style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank" style="text-decoration: none;"> <img src="srcTwitter" alt="Twitter" /></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0"
								style="background-color: #ffffff;  border-radius: 6px;">
								<tr>
									<td cellpadding="0" cellspacing="0" style="padding: 33px 0px 30px;">
										<table width="100%" cellspacing="0" cellpadding="0">
											<tr>
												<td align="left" cellpadding="0" cellspacing="0"
													style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-left:38px;padding-right:35px;text-align: left;">
													Hello <strong>Team member name</strong>,
												</td>
											</tr>
											<tr>
												<td valign="top" cellpadding="0" cellspacing="0"
													style="padding-left:38px;padding-right: 35px;">
													<table width="100%" cellspacing="0" cellpadding="0">
														<tr>
															<td valign="top" width="60%" cellpadding="0" cellspacing="0"
																style="width:60%">
																<table width="100%" cellspacing="0" cellpadding="0">
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0"
																			style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 20px;padding-top:14px;text-align: left;">
																			The leader of <strong>organisationName</strong> has been changed from <strong>oldTeamLeader</strong> to <strong>newLeader</strong>. If you were contributing to any of the Team OKRs created by <strong>oldTeamLeader</strong>, these will now be owned by <strong>newLeader</strong>.  
																		</td>
																	</tr>
																</table>
															</td>
															<td valign="top" cellpadding="0" cellspacing="0"
																align="right" style="text-align: right;">
																<img src="hand-shake2" alt="hand-shake"
																	style="display:inline-block;max-width:100%;padding: 0px;margin: 0px">
															</td>
														</tr>
													</table>

												</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" style="padding-bottom: 0px;padding-left:38px;padding-right: 35px;">
													<table cellspacing="0" cellpadding="0">
														<tr>
															<td align="left" cellpadding="0" cellspacing="0"
															style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-top:0px;text-align: left;">
															Below are the OKRs owned by <strong>newLeader</strong>:
															</td>
														</tr>
														<tr>
															<td align="left" cellpadding="0" cellspacing="0"
															style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-top:0px;text-align: left;"><strong>organisationName OKRs:</strong>
															</td>
														</tr>
														<tr>
															<td cellpadding="0" cellspacing="0" style="padding-bottom: 0px;padding-top:0;">
																<table cellspacing="0" cellpadding="0">
																	 <Gist>	
																</table>
															</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td cellpadding="0" cellspacing="0" align="left"
													style="text-align: left;padding-top: 25px;padding-left:38px;padding-right: 35px;">
													<table cellspacing="0" cellpadding="0"
														style="">
														<tr>
															<td align="center" width="160"
																height="40" bgcolor="#39A3FA"
																style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">
																<a href="<RedirectOkR>"
																	style="height: 40px; color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">
																	View All
																</a>
															</td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0" style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy Unlocking! </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;"> Note: Please do not reply to this email. Emails sent to this address will not be answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;"> Help/Feedback - Write to us at <a href="<supportEmailId>" style="color: #39A3FA; text-decoration: underline;"><supportEmailId></a> </td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0" style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;"> If you are having trouble viewing this email, you can update your outlook settings by <a target="_blank" href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error" style="color: #39A3FA; text-decoration: underline;">clicking here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%" style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;"> &copy; year Infopro Learning, Inc. All rights reserved </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'
where TemplateCode='CTL'
End
Go

--END SPRINT 2.9.3

-- No Change for 2.9.4

--START SPRINT 2.9.5
IF NOT EXISTS(select * from MailerTemplate where TemplateCode = 'NO_ACTIVITY_KR')
Begin
INSERT INTO MailerTemplate VALUES ('Inactivity on the KR','NO_ACTIVITY_KR','No OKR activity since last 7 days !! Reminder to update your OKRs.',
'<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Okr Assignment Complete</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->

	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"
		style="background: #EEF5FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              
			<table class="wrapper" width="100%" align="center"  style="background: #EEF5FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%">
				<img src="topBar" width="100%" style="display: block;" />
			</td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0"
					style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank"
											style="text-decoration: none;">
											<img src="logo" alt="UnlockOKR" style=" display: block;" />
										</a>
									</td>

									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td
													style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk"
														target="_blank" style="text-decoration: none;">
														<img src="srcLinkedin" alt="LinkedIn" />
													</a>
												</td>
												<td
													style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank"
														style="text-decoration: none;">
														<img src="srcFacebook" alt="Facebook" />
													</a>
												</td>
												<td
													style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank"
														style="text-decoration: none;">
														<img src="srcInstagram" alt="Instagram" />
													</a>
												</td>
												<td
													style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank"
														style="text-decoration: none;">
														<img src="srcTwitter" alt="Twitter" />
													</a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td align="left" cellpadding="0" cellspacing="0"
							style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 5px; padding-left: 20px;padding-right: 20px;">
							Hello <strong>name,</strong>
						</td>
					</tr>
					<tr>
						<td align="left" cellpadding="0" cellspacing="0"
							style="font-size:16px;line-height:20px;color:#292929;font-family: Calibri,Arial;padding-bottom: 40px;padding-left: 20px;padding-right: 20px;">
							You have not toched the below OKRs for a while, it is time you have a look at them again.
						</td>
					</tr>
					<tr>
						<td cellspacing="0" cellpadding="0" style="padding-left: 20px;padding-right: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<!--row 1 start here-->
								Listing
								<!--row 1 end here-->
								<!--row 2 start here-->
								
								<!--row 2 end here-->
								<!--row 3 start here-->
								
								<!--row 3 end here-->
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" align="left" style="text-align: left;padding: 20px;">
							<table cellspacing="0" cellpadding="0" style="">
								<tr>
									<td align="center" width="136" height="40" bgcolor="#39A3FA"
										style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">
										<a href="<Button>"
											style="height: 40px;color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">
											View All
										</a>
									</td>
								</tr>
							</table>
							<!-- <![endif]-->
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0"
							style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0"
										style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy
										Unlocking!
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0"
							style="padding:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;">
										Note: Please
										do
										not reply to this email. Emails sent to this address will not be
										answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;">
										Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com"
											style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a>
									</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;">
										If you are
										having
										trouble viewing this email, you can update your outlook settings by <a
											target="_blank"
											href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error"
											style="color: #39A3FA; text-decoration: underline;">clicking
											here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%"
										style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">
										&copy; year Infopro Learning, Inc. All rights reserved
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>',195,getdate(),1)
END
GO

--END SPRINT 2.9.5

--START SPRINT 2.9.6
IF EXISTS(select * from MailerTemplate where TemplateCode = 'NO_ACTIVITY_KR')
Begin
UPDATE  [dbo].[MailerTemplate] set Subject='No OKR activity since last 7 days !! Reminder to update your OKRs.',
body='<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
<!--[if !IE]><!-->
<html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<meta name="viewport" content="width=device-width">
	<title>Okr Assignment Complete</title>
	<style>
		body {
			-webkit-text-size-adjust: 100%;
			margin: 0;
			padding: 0;
			border: 0px;
			font-family: Calibri;
			font-weight: 400;
			font-size: 16px;
		}

		table,
		tr,
		td {
			margin: 0px;
			padding: 0px;
		}
	</style>
</head>

<!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
<!--[if !mso]><!-->

<body style="padding:0px;margin: 0px;">
	<!--<![endif]-->

	<!--[if !mso]><!-->
	<table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"
		style="background: #EEF5FF; Margin: 0 auto; padding:0px;">
		<!--<![endif]-->
		<!--[if (mso)|(IE)]>              
			<table class="wrapper" width="100%" align="center"  style="background: #EEF5FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">              <![endif]-->
		<tr>
			<td cellspacing="0" cellpadding="0" width="100%">
				<img src="topBar" width="100%" style="display: block;" />
			</td>
		</tr>
		<tr>
			<td cellspacing="0" cellpadding="0">
				<table align="center" width="600" cellspacing="0" cellpadding="0"
					style="margin: 0px auto; color: #292929; font-weight: normal; ">
					<tr>
						<td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 50%;">
										<a href="<URL>" target="_blank"
											style="text-decoration: none;">
											<img src="logo" alt="UnlockOKR" style=" display: block;" />
										</a>
									</td>

									<td align="right" cellpadding="0" cellspacing="0">
										<table width="90px" cellspacing="0" cellpadding="0">
											<tr>
												<td
													style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="lk"
														target="_blank" style="text-decoration: none;">
														<img src="srcLinkedin" alt="LinkedIn" />
													</a>
												</td>
												<td
													style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="fb" target="_blank"
														style="text-decoration: none;">
														<img src="srcFacebook" alt="Facebook" />
													</a>
												</td>
												<td
													style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
													<a href="ijk" target="_blank"
														style="text-decoration: none;">
														<img src="srcInstagram" alt="Instagram" />
													</a>
												</td>
												<td
													style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
													<a href="terp" target="_blank"
														style="text-decoration: none;">
														<img src="srcTwitter" alt="Twitter" />
													</a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td align="left" cellpadding="0" cellspacing="0"
							style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 5px; padding-left: 20px;padding-right: 20px;">
							Hello <strong>name,</strong>
						</td>
					</tr>
					<tr>
						<td align="left" cellpadding="0" cellspacing="0"
							style="font-size:16px;line-height:20px;color:#292929;font-family: Calibri,Arial;padding-bottom: 40px;padding-left: 20px;padding-right: 20px;">
							You have not touched the below OKRs for a while, it is time you have a look at them again.
						</td>
					</tr>
					<tr>
						<td cellspacing="0" cellpadding="0" style="padding-left: 20px;padding-right: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<!--row 1 start here-->
								Listing
								<!--row 1 end here-->
								<!--row 2 start here-->
								
								<!--row 2 end here-->
								<!--row 3 start here-->
								
								<!--row 3 end here-->
							</table>
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0" align="left" style="text-align: left;padding: 20px;">
							<table cellspacing="0" cellpadding="0" style="">
								<tr>
									<td align="center" width="136" height="40" bgcolor="#39A3FA"
										style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">
										<a href="<Button>"
											style="height: 40px;color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">
											View All
										</a>
									</td>
								</tr>
							</table>
							<!-- <![endif]-->
						</td>
					</tr>
					<tr>
						<td cellpadding="0" cellspacing="0"
							style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td cellpadding="0" cellspacing="0"
										style="font-size:14px;line-height:20px;font-family: Calibri,Arial;">Happy
										Unlocking!
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0"
							style="padding:20px;border-bottom: 1px solid #c3cedc;">
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;">
										Note: Please
										do
										not reply to this email. Emails sent to this address will not be
										answered</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;">
										Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com"
											style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a>
									</td>
								</tr>
								<tr>
									<td valign="top" cellpadding="0" cellspacing="0"
										style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;">
										If you are
										having
										trouble viewing this email, you can update your outlook settings by <a
											target="_blank"
											href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error"
											style="color: #39A3FA; text-decoration: underline;">clicking
											here</a>.</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
							<table width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td cellspacing="0" cellpadding="0" width="100%"
										style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">
										&copy; year Infopro Learning, Inc. All rights reserved
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>'
where TemplateCode='NO_ACTIVITY_KR'
End
Go
IF NOT EXISTS(SELECT * from MailerTemplate where TemplateCode='TRV')
    BEGIN
       Insert into MailerTemplate Values('Trial Version','TRV','Welcome to Unlock OKR','<!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 transitional//EN" "http://www.w3.org/TR/HTML4/LOOSE.DTD">
<!--[if IE]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie">
   <![endif]-->
   <!--[if !IE]><!-->
   <html style="margin: 0px; padding: 0px; height: 100%;" xmlns="http://www.w3.org/1999/xhtml">
      <!--<![endif]-->
      <head>
         <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
         <!--[if !mso]><!-->
         <meta http-equiv="X-UA-Compatible" content="IE=edge">
         <!--<![endif]-->
         <meta name="viewport" content="width=device-width">
         <title>Welcome to Unlock OKR</title>
         <style>
            body {
            -webkit-text-size-adjust: 100%;
            margin: 0;
            padding: 0;
            border: 0px;
            font-family: Calibri;
            font-weight: 400;
            font-size: 16px;
            }
            table,
            tr,
            td {
            margin: 0px;
            padding: 0px;
            }
         </style>
      </head>
      <!--[if mso]>
      <body class="mso" style="padding:0px;margin: 0px;">
         <![endif]-->
         <!--[if !mso]><!-->
         <body style="padding:0px;margin: 0px;">
            <!--<![endif]-->
            <!--[if !mso]><!-->
            <table width="100%" role="pesentation" cellspacing="0" align="center" cellpadding="0" border="0"
               style="background: #E5F0FF; Margin: 0 auto; padding:0px;">
            <!--<![endif]-->
            <!--[if (mso)|(IE)]>              
            <table class="wrapper" width="100%" align="center"  style="background: #E5F0FF; Margin: 0 auto; padding:0px;" cellspacing="0" cellpadding="0">
               <![endif]-->
               <tr>
                  <td align="top" cellspacing="0" cellpadding="0" width="100%">
                     <img src="topBar" width="100%" style="display: block;" />
                  </td>
               </tr>
               <tr>
                  <td cellspacing="0" cellpadding="0">
                     <table align="center" width="640" cellspacing="0" cellpadding="0"
                        style="margin: 0px auto; color: #292929; font-weight: normal; ">
                        <tr>
                           <td cellpadding="0" cellspacing="0" style="padding: 20px 20px 30px;">
                              <table width="100%" cellspacing="0" cellpadding="0">
                                 <tr>
                                    <td style="width: 50%;">
                                       <a href="<url>" target="_blank"
                                          style="text-decoration: none;">
                                       <img src="logo" style=" display: block;" />
                                       </a>
                                    </td>
                                    <td align="right" cellpadding="0" cellspacing="0">
                                       <table width="90px" cellspacing="0" cellpadding="0">
                                          <tr>
                                             <td
                                                style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
                                                <a href="lk"
                                                   target="_blank" style="text-decoration: none;">
                                                <img src="srcLinkedin" alt="arrow" />
                                                </a>
                                             </td>
                                             <td
                                                style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
                                                <a href="fb" target="_blank"
                                                   style="text-decoration: none;">
                                                <img src="srcFacebook" alt="arrow" />
                                                </a>
                                             </td>
                                             <td
                                                style="padding-left: 10px; vertical-align: bottom; font-family: Calibri; ">
                                                <a href="ijk" target="_blank"
                                                   style="text-decoration: none;">
                                                <img src="srcInstagram" alt="arrow" />
                                                </a>
                                             </td>
                                             <td
                                                style="padding-left: 10px;vertical-align: bottom; font-family: Calibri; ">
                                                <a href="terp" target="_blank"
                                                   style="text-decoration: none;">
                                                <img src="srcTwitter" alt="arrow" />
                                                </a>
                                             </td>
                                          </tr>
                                       </table>
                                    </td>
                                 </tr>
                              </table>
                           </td>
                        </tr>
                        <tr>
                           <td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left: 20px; padding-right: 20px;">
                              <table width="100%" cellspacing="0" cellpadding="0"
                                 style="background-color: #ffffff;  border-radius: 6px;">
                                 <tr>
                                    <td cellpadding="0" cellspacing="0" style="padding: 30px 42px 36px 42px;">
                                       <table width="100%" cellspacing="0" cellpadding="0">
                                          <tr>
                                             <td align="center" cellpadding="0" cellspacing="0"
                                                style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-left:0px;padding-right:0px;text-align: center;">
                                                Welcome <strong><name></strong>,
                                             </td>
                                          </tr>
                                          <tr>
                                             <td align="center" cellpadding="0" cellspacing="0"
                                                style="font-size:18px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 14px;padding-left:0px;padding-right:0px;text-align: center;">
                                                <strong>
                                                   Your brand new Unlock OKR profile has now been created! </strong>
                                             </td>
                                          </tr>
                                          <tr>
                                             <td align="center" cellpadding="0" cellspacing="0">
                                                <img src="<credentials>" alt="Screen image">
                                             </td>
                                          </tr>
                                          <tr>
                                             <td align="center" cellpadding="0" cellspacing="0"
                                               style="font-size:16px;line-height:20px;color:#292929;font-family: Calibri,Arial;text-align: center;">
                                               You will be delighted to explore and adopt OKRs by leveraging world-class technology that is as powerful as it is intuitive.
                                             </td>
                                           </tr>   
                                       </table>
                                    </td>
                                 </tr>
                              </table>
                           </td>
                        </tr>
                        <tr>
                           <td cellpadding="0" cellspacing="0" style="padding-bottom: 20px;padding-left: 20px; padding-right: 20px;">
                              <table width="100%" cellspacing="0" cellpadding="0"
                                 style="background-color: #ffffff;  border-radius: 6px;">
                                 <tr>
                                    <td cellpadding="0" cellspacing="0" style="padding: 20px 30px;">
                                       <table width="100%" cellspacing="0" cellpadding="0">
                                          <tr>
                                             <td width="62%" align="left" cellpadding="0" cellspacing="0">
                                                   <table width="100%" cellspacing="0" cellpadding="0">
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0"
																			style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 12px;text-align: left;">
																			<strong>Please login with your Credentials</strong>
																		</td>
																	</tr>
																	<tr>
																		<td align="left" cellpadding="0" cellspacing="0"
																			style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-top:0px;text-align: left;">
                                                         Domain URL: <a
                                          target="_blank"
                                          href="domainurl"
                                          style="color: #39A3FA; "><durl>
																		</td>
                                                   </tr>
                                                   <tr>
																		<td align="left" cellpadding="0" cellspacing="0"
																			style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-top:0px;text-align: left;">
                                                         User Id: <domainId>
                                                      </td>
                                                   </tr>
                                                   <tr>
																		<td align="left" cellpadding="0" cellspacing="0"
																			style="font-size:16px;line-height:24px;color:#292929;font-family: Calibri,Arial;padding-bottom: 0px;padding-top:0px;text-align: left;">
                                                         Password: <password>
                                                      </td>
                                                   </tr>
																	<tr>
																		<td cellpadding="0" cellspacing="0" align="left"
																			style="text-align: left;padding-top: 20px;">
																			<table cellspacing="0" cellpadding="0"
																				style="">
																				<tr>
																					<td align="center" width="181"
																						height="40" bgcolor="#39A3FA"
																						style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; color: #ffffff; display: block;">
																						<a href="domainurl"
																							style="height: 40px;color: #ffffff; font-size:16px; font-family:Calibri,Arial; text-decoration: none; line-height:40px; width:100%; display:inline-block">
																							Go to Unlock:OKR
																						</a>
																					</td>
																				</tr>
																			</table>
																		</td>
																	</tr>
																</table>
                                             </td>
                                             <td valign="center" cellpadding="0" cellspacing="0"
																align="right" style="text-align: right;">
																<img src="handshake" alt="watch"
																	style="display:inline-block;max-width:100%;padding: 0px;margin: 0px">
															</td>
                                          </tr>
                                       </table>
                                    </td>
                                 </tr>
                              </table>
                           </td>
                        </tr>
                        <tr>
                           <td cellpadding="0" cellspacing="0"
                              style="padding-bottom: 20px;padding-left:20px;padding-right:20px;border-bottom: 1px solid #c3cedc;">
                              <table cellspacing="0" cellpadding="0">
                                 <tr>
                                    <td cellpadding="0" cellspacing="0"
                                       style="font-size:14px;line-height:20px;font-family: Calibri,Arial;color:#292929">Happy
                                       Unlocking!
                                    </td>
                                 </tr>
                              </table>
                           </td>
                        </tr>
                        <tr>
                           <td valign="top" cellpadding="0" cellspacing="0"
                              style="padding:20px;border-bottom: 1px solid #c3cedc;">
                              <table cellspacing="0" cellpadding="0">
                                 <tr>
                                    <td valign="top" cellpadding="0" cellspacing="0"
                                       style="font-size:14px;font-family: Calibri,Arial;vertical-align: top;color: #626262;line-height: 24px;">
                                       Note: Please
                                       do
                                       not reply to this email. Emails sent to this address will not be
                                       answered
                                    </td>
                                 </tr>
                                 <tr>
                                    <td valign="top" cellpadding="0" cellspacing="0"
                                       style="font-size:14px;font-family: Calibri,Arial;color: #626262;line-height: 24px;">
                                       Help/Feedback - Write to us at <a href="mailto:adminsupport@unlockokr.com"
                                          style="color: #39A3FA; text-decoration: underline;">adminsupport@unlockokr.com</a>
                                    </td>
                                 </tr>
                                 <tr>
                                    <td valign="top" cellpadding="0" cellspacing="0"
                                       style="font-size:14px;font-family: Calibri,Arial;color: #626262; line-height: 24px;">
                                       If you are
                                       having
                                       trouble viewing this email, you can update your outlook settings by <a
                                          target="_blank"
                                          href="https://docs.microsoft.com/en-us/outlook/troubleshoot/message-body/the-linked-image-cannot-be-displayed-error"
                                          style="color: #39A3FA; text-decoration: underline;">clicking
                                       here</a>.
                                    </td>
                                 </tr>
                              </table>
                           </td>
                        </tr>
                        <tr>
                           <td valign="top" cellpadding="0" cellspacing="0" style="padding: 20px;">
                              <table width="100%" cellspacing="0" cellpadding="0">
                                 <tr>
                                    <td cellspacing="0" cellpadding="0" width="100%"
                                       style="font-size: 12px;line-height: 17px;font-family: Calibri,Arial;color: #626262;">
                                       &copy; 2021 Infopro Learning, Inc. All rights reserved
                                    </td>
                                 </tr>
                              </table>
                           </td>
                        </tr>
                     </table>
                  </td>
               </tr>
            </table>
      </body>', 1,getdate(),1)
    END
GO
--END SPRINT 2.9.6