.class public Lcom/zoho/wms/common/pex/PEXTaskTypes;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ACK_MESSAGE:Lcom/zoho/wms/common/pex/PEXTaskTypes;

.field public static final ADD_MEMBER:Lcom/zoho/wms/common/pex/PEXTaskTypes;

.field public static final ANNON_CHAT_MSG:Lcom/zoho/wms/common/pex/PEXTaskTypes;

.field public static final ATTACH_JOIN_CHAT:Lcom/zoho/wms/common/pex/PEXTaskTypes;

.field public static final BLOCKPNSFORCHAT:Lcom/zoho/wms/common/pex/PEXTaskTypes;

.field public static final CHAT_INFO_MSG:Lcom/zoho/wms/common/pex/PEXTaskTypes;

.field public static final CHAT_MSG:Lcom/zoho/wms/common/pex/PEXTaskTypes;

.field public static final CLEAR_UNREAD:Lcom/zoho/wms/common/pex/PEXTaskTypes;

.field public static final CREATE_CHAT:Lcom/zoho/wms/common/pex/PEXTaskTypes;

.field public static final CREATE_GROUP_CHAT:Lcom/zoho/wms/common/pex/PEXTaskTypes;

.field public static final CREATE_MPCHAT:Lcom/zoho/wms/common/pex/PEXTaskTypes;

.field public static final DELETE_MEMBER:Lcom/zoho/wms/common/pex/PEXTaskTypes;

.field public static final GETBADGE:Lcom/zoho/wms/common/pex/PEXTaskTypes;

.field public static final GETCONTACTINFO:Lcom/zoho/wms/common/pex/PEXTaskTypes;

.field public static final GET_INSID:Lcom/zoho/wms/common/pex/PEXTaskTypes;

.field public static final GET_TRANSCRIPT:Lcom/zoho/wms/common/pex/PEXTaskTypes;

.field public static final INFO_MSG:Lcom/zoho/wms/common/pex/PEXTaskTypes;

.field public static final JOIN_CHAT:Lcom/zoho/wms/common/pex/PEXTaskTypes;

.field public static final LOGERROR:Lcom/zoho/wms/common/pex/PEXTaskTypes;

.field public static final QUIT_CHAT:Lcom/zoho/wms/common/pex/PEXTaskTypes;

.field public static final REGISTER_UNS:Lcom/zoho/wms/common/pex/PEXTaskTypes;

.field public static final SENDATTMSG:Lcom/zoho/wms/common/pex/PEXTaskTypes;

.field public static final SETLOCATION:Lcom/zoho/wms/common/pex/PEXTaskTypes;

.field public static final SETPNSLEEP:Lcom/zoho/wms/common/pex/PEXTaskTypes;

.field public static final SET_HISTORY:Lcom/zoho/wms/common/pex/PEXTaskTypes;

.field public static final SET_IDLE:Lcom/zoho/wms/common/pex/PEXTaskTypes;

.field public static final SET_USERSTATUS:Lcom/zoho/wms/common/pex/PEXTaskTypes;

.field public static final SYNCCONTACTS:Lcom/zoho/wms/common/pex/PEXTaskTypes;

.field public static final UNREGISTER_UNS:Lcom/zoho/wms/common/pex/PEXTaskTypes;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;

    const-string v1, "cmsg"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXTaskTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;->CHAT_MSG:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;

    const-string v1, "acmsg"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXTaskTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;->ANNON_CHAT_MSG:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;

    const-string v1, "createchat"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXTaskTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;->CREATE_CHAT:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;

    const-string v1, "creategchat"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXTaskTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;->CREATE_GROUP_CHAT:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;

    const-string v1, "addmember"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXTaskTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;->ADD_MEMBER:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;

    const-string v1, "joinchat"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXTaskTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;->JOIN_CHAT:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;

    const-string v1, "attachsessionandjoin"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXTaskTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;->ATTACH_JOIN_CHAT:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;

    const-string v1, "deletemember"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXTaskTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;->DELETE_MEMBER:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;

    const-string v1, "quitchat"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXTaskTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;->QUIT_CHAT:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;

    const-string v1, "sendchatinfomessage"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXTaskTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;->CHAT_INFO_MSG:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;

    const-string v1, "sendinfomessage"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXTaskTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;->INFO_MSG:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;

    const-string v1, "gettranscript"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXTaskTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;->GET_TRANSCRIPT:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;

    const-string v1, "setsessionstatus"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXTaskTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;->SET_IDLE:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;

    const-string v1, "setuserstatus"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXTaskTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;->SET_USERSTATUS:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;

    const-string v1, "sethistory"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXTaskTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;->SET_HISTORY:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;

    const-string v1, "getinsid"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXTaskTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;->GET_INSID:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;

    const-string v1, "registeruns"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXTaskTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;->REGISTER_UNS:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;

    const-string v1, "unregisteruns"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXTaskTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;->UNREGISTER_UNS:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;

    const-string v1, "clearunreadchats"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXTaskTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;->CLEAR_UNREAD:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;

    const-string v1, "getcontactinfo"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXTaskTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;->GETCONTACTINFO:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;

    const-string v1, "mutechat"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXTaskTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;->BLOCKPNSFORCHAT:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;

    const-string v1, "setpnsleep"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXTaskTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;->SETPNSLEEP:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;

    const-string v1, "synccontacts"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXTaskTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;->SYNCCONTACTS:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;

    const-string v1, "setlocation"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXTaskTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;->SETLOCATION:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;

    const-string v1, "getbadge"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXTaskTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;->GETBADGE:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;

    const-string v1, "logerror"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXTaskTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;->LOGERROR:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;

    const-string v1, "sendattmessage"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXTaskTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;->SENDATTMSG:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;

    const-string v1, "creatempchat"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXTaskTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;->CREATE_MPCHAT:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;

    const-string v1, "ackmessage"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXTaskTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXTaskTypes;->ACK_MESSAGE:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zoho/wms/common/pex/PEXTaskTypes;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEXTaskTypes;->type:Ljava/lang/String;

    return-object v0
.end method
