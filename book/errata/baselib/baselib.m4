<PART ID=tocbaselib>
<TITLE>Base Libraries</TITLE>

<CHAPTER id=baselib>
<TITLE>Libraries</TITLE>

<PARA>
The wording in the description of libpthread is misleading. A conforming
runtime is not required to implement the exceptions which are listed. Instead,
a conforming runtime may implement them, and applications must be written
to expect either behavior.
</PARA>

<PARA>
One of the return value for <FUNCTION>pam_acct_mgmt()</FUNCTION> was
incorrectly named as <LITERAL>PAM_AUTHTOKEN_REQD</LITERAL>. The value should
have been named <LITERAL>PAM_NEW_AUTHTOK_REQD</LITERAL>.
</PARA>

<PARA>
The return type of <FUNCTION>pam_strerror()</FUNCTION> should be
<VARNAME>extern const char *</VARNAME>.
</PARA>

<PARA>
On the IA32 platform, the functions <FUNCTION>__divdi3</FUNCTION>,
<FUNCTION>__moddi3</FUNCTION>, <FUNCTION>__udivdi3</FUNCTION>, and
<FUNCTION>__umoddi3</FUNCTION> have been deprecated.
</PARA>

<PARA>
The following RPC functions were ommitted and should be included:
<FUNCTION>svc_sendreplay</FUNCTION>,
<FUNCTION>svc_getargs</FUNCTION>,
<FUNCTION>svc_freeargs</FUNCTION>,
<FUNCTION>svc_register</FUNCTION>,
<FUNCTION>svc_run</FUNCTION>,
<FUNCTION>svctcp_create</FUNCTION>,
<FUNCTION>svcudp_create</FUNCTION>,
<FUNCTION>pmap_set</FUNCTION>,
<FUNCTION>pmap_unset</FUNCTION>,
<FUNCTION>pmap_getport</FUNCTION>.
</PARA>

</CHAPTER>

</PART>
