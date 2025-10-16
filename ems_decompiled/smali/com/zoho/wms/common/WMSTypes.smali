.class public Lcom/zoho/wms/common/WMSTypes;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CONTACT_INFO:I = 0x1b

.field public static final CT_ATT_MSG:I = 0x14

.field public static final CT_CLOSE_WIN:I = 0x1c

.field public static final CT_END_CSUPPORT:I = 0x71

.field public static final CT_GUEST_DENIED:I = 0x11

.field public static final CT_GUEST_REQ:I = 0x64

.field public static final CT_INF_MSG:I = 0x10

.field public static final CT_JOIN:I = 0xa

.field public static final CT_LEAVE_SUPPORT_MSG:I = 0x23

.field public static final CT_MEET_MSG:I = 0x1a

.field public static final CT_NFY_APPROVAL:I = 0x66

.field public static final CT_NFY_GUESTACCESS:I = 0x12

.field public static final CT_NFY_MSG:I = 0x70

.field public static final CT_NFY_SETTITLE:I = 0x13

.field public static final CT_NFY_SKIPTRANS:I = 0x24

.field public static final CT_NFY_USERADD:I = 0xe

.field public static final CT_NFY_USERDELETE:I = 0xf

.field public static final CT_NFY_USERSTATUS:I = 0xd

.field public static final CT_QUIT:I = 0xb

.field public static final CT_TWEET_MSG:I = 0x1e

.field public static final CT_TXT_MSG:I = 0xc

.field public static final MP_ADDBOOK:I = 0x133

.field public static final MP_CONTACT_INF_UPDATE:I = 0x131

.field public static final MP_CONTACT_UPDATE:I = 0x130

.field public static final MP_CONTACT_ZOHOSTATUS:I = 0x134

.field public static final MP_LOGIN:I = 0x12c

.field public static final MP_LOGIN_CAPTCHA:I = 0x135

.field public static final MP_LOGOUT:I = 0x12d

.field public static final MP_PRESENCE:I = 0x12f

.field public static final MP_RELOGIN:I = 0x12e

.field public static final MP_SERVER_DOWN:I = 0x132

.field public static final NFY_ACC_CSUPPORT:I = 0x6c

.field public static final NFY_GUEST_LINK:I = 0x67

.field public static final NFY_LS_OPERATIONS:I = 0x72

.field public static final NFY_PUSH_MSG:I = 0x73

.field public static final NFY_QIT_CSUPPORT:I = 0x6d

.field public static final NFY_REBUILD_SESSION:I = 0x190

.field public static final NFY_REQ_CSUPPORT:I = 0x6a

.field public static final NFY_USER_BUZZ:I = 0x6f

.field public static final NFY_USER_ENTERED:I = 0x6e

.field public static final NFY_USER_IDLE:I = 0x69

.field public static final NFY_USER_TYPING:I = 0x68

.field public static final NOP:Ljava/lang/String; = "-"

.field public static final SERVER_PING_MSG:I = -0x6e

.field public static final TP_ADD_BOOK:I = 0x1f

.field public static final WMS_CONTINUE_CHAT_INFO:I = 0x2a

.field public static final WM_ACK_ATTACH:I = -0x8

.field public static final WM_ACK_CONNECT:I = 0x0

.field public static final WM_ACK_DETACH:I = -0x9

.field public static final WM_ACS_MSG:I = 0x2b

.field public static final WM_ACTIVE_CHATS:I = 0x21

.field public static final WM_AV_MSG:I = 0x1d

.field public static final WM_CLEAR_ACTIVE_CHATS:I = 0x22

.field public static final WM_CLEAR_NOTI:I = 0x20

.field public static final WM_CLOSE_STREAM:I = -0x6

.field public static final WM_CROSSPRODUCT:I = 0x4

.field public static final WM_CUSTOM:I = 0x2

.field public static final WM_DISABLE:I = -0x5

.field public static final WM_DMS_MSG:I = 0x28a

.field public static final WM_DNAME_UPDATE:I = 0x2d

.field public static final WM_FEED_ACC_SUB:I = 0x27

.field public static final WM_FEED_SUB:I = 0x28

.field public static final WM_GRP_ACCEPT:I = 0x2be

.field public static final WM_GRP_MSG:I = 0x2bc

.field public static final WM_GRP_PRESENCE:I = 0x2bd

.field public static final WM_GRP_TOUCH_MSG:I = 0x2bf

.field public static final WM_INFO:I = 0x1

.field public static final WM_LOGOUT:I = 0x3

.field public static final WM_MEETING_INFO:I = 0x2c

.field public static final WM_NFY_COLLABADD:I = 0x15

.field public static final WM_NFY_COLLABDELETE:I = 0x16

.field public static final WM_NFY_CSTATUSCHANGE:I = 0x18

.field public static final WM_NFY_LOGOUT:I = -0x2

.field public static final WM_NFY_STATUS:I = 0x17

.field public static final WM_NFY_USERIMGCHANGE:I = 0x19

.field public static final WM_PRESENCE:I = 0x6

.field public static final WM_PUBSUB:I = 0x320

.field public static final WM_RECONNECT:I = -0x1

.field public static final WM_RMAPI_MSG:I = 0x1f5

.field public static final WM_S2S_FEED:I = 0x29

.field public static final WM_SERVER_UP:I = -0x3

.field public static final WM_SERVICE_MSG:I = -0x7

.field public static final WM_SYSINFO_MSG:I = -0xa

.field public static final WM_SYSTEM_MSG:I = 0x26

.field public static final WM_USER_LANG_CHANGE:I = 0x25

.field public static final WM_WS_RECONNECT:I = -0xb

.field public static final WM_ZTI_DISABLE:I = 0x25b

.field public static final WM_ZTI_FAIL_MSG:I = 0x259

.field public static final WM_ZTI_MSG:I = 0x258

.field public static final WM_ZTI_RELOAD_EXTN:I = 0x25a

.field public static final WS_REQ_FAILURE:I = 0x0

.field public static final WS_REQ_RESULT_KEY:Ljava/lang/String; = "rscode"

.field public static final WS_REQ_RESULT_KEY_LEN:I = 0x21

.field public static final WS_REQ_SUCCESS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
