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
The following curses interfaces were omitted and should be included:
<FUNCTION>COLOR_PAIR</FUNCTION>,
<FUNCTION>PAIR_NUMBER</FUNCTION>,
<FUNCTION>COLORS</FUNCTION>,
<FUNCTION>COLOR_PAIRS</FUNCTION>,
<FUNCTION>acs_map</FUNCTION>,
<FUNCTION>COLORS</FUNCTION>,
</PARA>

<PARA>
The following curses data definitions were omitted and should be included:
<SCREEN>
#define ACS_RARROW    (acs_map['+'])
#define ACS_LARROW    (acs_map[','])
#define ACS_DARROW    (acs_map['.'])
#define ACS_UARROW    (acs_map['-'])
#define ACS_BLOCK     (acs_map['0'])
#define ACS_CKBOARD   (acs_map['a'])
#define ACS_DEGREE    (acs_map['f'])
#define ACS_PLMINUS   (acs_map['g'])
#define ACS_BOARD     (acs_map['h'])
#define ACS_LANTERN   (acs_map['i'])
#define ACS_LRCORNER  (acs_map['j'])
#define ACS_URCORNER  (acs_map['k'])
#define ACS_ULCORNER  (acs_map['l'])
#define ACS_LLCORNER  (acs_map['m'])
#define ACS_PLUS      (acs_map['n'])
#define ACS_S1        (acs_map['o'])
#define ACS_HLINE     (acs_map['q'])
#define ACS_S9        (acs_map['s'])
#define ACS_LTEE      (acs_map['t'])
#define ACS_RTEE      (acs_map['u'])
#define ACS_BTEE      (acs_map['v'])
#define ACS_TTEE      (acs_map['w'])
#define ACS_VLINE     (acs_map['x'])
#define ACS_DIAMOND   (acs_map['`'])
#define ACS_BULLET    (acs_map['~'])
</SCREEN>
</PARA>


<PARA>
The following RPC functions were omitted and should be included:
<FUNCTION>svc_sendreply</FUNCTION>,
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

<PARA>
The following pthread functions were omitted and should be included:
<FUNCTION>pthread_atfork</FUNCTION>,
</PARA>

</CHAPTER>

</PART>
