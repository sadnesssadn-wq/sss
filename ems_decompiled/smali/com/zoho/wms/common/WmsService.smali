.class public Lcom/zoho/wms/common/WmsService;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ACCOUNTS:Lcom/zoho/wms/common/WmsService;

.field public static final AC_SERVER:Lcom/zoho/wms/common/WmsService;

.field public static final ALARMCENTRAL:Lcom/zoho/wms/common/WmsService;

.field public static final BLOGS:Lcom/zoho/wms/common/WmsService;

.field public static final BUSSINESS:Lcom/zoho/wms/common/WmsService;

.field public static final CALENDAR:Lcom/zoho/wms/common/WmsService;

.field public static final CAMPAIGN:Lcom/zoho/wms/common/WmsService;

.field public static final CHAT:Lcom/zoho/wms/common/WmsService;

.field public static final CONNECTS:Lcom/zoho/wms/common/WmsService;

.field public static final CONTACTS:Lcom/zoho/wms/common/WmsService;

.field public static final CONTACTS_MANAGER:Lcom/zoho/wms/common/WmsService;

.field public static final CREATOR:Lcom/zoho/wms/common/WmsService;

.field public static final CRM:Lcom/zoho/wms/common/WmsService;

.field public static final DESKTOP:Lcom/zoho/wms/common/WmsService;

.field public static final EXPLORER:Lcom/zoho/wms/common/WmsService;

.field public static final FORUMS:Lcom/zoho/wms/common/WmsService;

.field public static final HOME:Lcom/zoho/wms/common/WmsService;

.field public static final INTRANET:Lcom/zoho/wms/common/WmsService;

.field public static final ISSUE_TRACKER:Lcom/zoho/wms/common/WmsService;

.field public static final JABBER_SERVER:Lcom/zoho/wms/common/WmsService;

.field public static final LIVEDESK:Lcom/zoho/wms/common/WmsService;

.field public static final MAIL:Lcom/zoho/wms/common/WmsService;

.field public static final MEETING:Lcom/zoho/wms/common/WmsService;

.field public static final MOBILE:Lcom/zoho/wms/common/WmsService;

.field public static final NOTEBOOK:Lcom/zoho/wms/common/WmsService;

.field public static final OPMANAGER:Lcom/zoho/wms/common/WmsService;

.field public static final PAYMENTS:Lcom/zoho/wms/common/WmsService;

.field public static final PEOPLE:Lcom/zoho/wms/common/WmsService;

.field public static final PIE:Lcom/zoho/wms/common/WmsService;

.field public static final PLANNER:Lcom/zoho/wms/common/WmsService;

.field public static final PROJECTS:Lcom/zoho/wms/common/WmsService;

.field public static final PULSE:Lcom/zoho/wms/common/WmsService;

.field public static final REACH:Lcom/zoho/wms/common/WmsService;

.field public static final RECRUIT:Lcom/zoho/wms/common/WmsService;

.field public static final REMOTE_AGENT:Lcom/zoho/wms/common/WmsService;

.field public static final SEARCH:Lcom/zoho/wms/common/WmsService;

.field public static final SERVICE_DESK:Lcom/zoho/wms/common/WmsService;

.field public static final SHARE:Lcom/zoho/wms/common/WmsService;

.field public static final SHEET:Lcom/zoho/wms/common/WmsService;

.field public static final SHOW:Lcom/zoho/wms/common/WmsService;

.field public static final SHOWTIME:Lcom/zoho/wms/common/WmsService;

.field public static final SITE24_7:Lcom/zoho/wms/common/WmsService;

.field public static final START:Lcom/zoho/wms/common/WmsService;

.field public static final STARTWITH:Lcom/zoho/wms/common/WmsService;

.field public static final STORE:Lcom/zoho/wms/common/WmsService;

.field public static final SUPPORT:Lcom/zoho/wms/common/WmsService;

.field public static final TELE_ADAPTER:Lcom/zoho/wms/common/WmsService;

.field public static final VIDEOS:Lcom/zoho/wms/common/WmsService;

.field public static final WIKI:Lcom/zoho/wms/common/WmsService;

.field public static final WRITER:Lcom/zoho/wms/common/WmsService;

.field public static final ZOHOBOOKS:Lcom/zoho/wms/common/WmsService;

.field public static final ZOHOEXPENSE:Lcom/zoho/wms/common/WmsService;

.field public static final ZOHOFORMS:Lcom/zoho/wms/common/WmsService;

.field public static final ZOHOFOX:Lcom/zoho/wms/common/WmsService;

.field public static final ZOHOMOBILE:Lcom/zoho/wms/common/WmsService;

.field public static final ZOHOPAD:Lcom/zoho/wms/common/WmsService;

.field public static final ZOHOSITES:Lcom/zoho/wms/common/WmsService;

.field public static final ZOHOSUBSCRIPTIONS:Lcom/zoho/wms/common/WmsService;


# instance fields
.field private prd:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "CR"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->CRM:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "VO"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->MAIL:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "ZO"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->BUSSINESS:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "PR"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->PROJECTS:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "ST"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->SHEET:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "CT"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->CHAT:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "WR"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->WRITER:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "SW"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->SHOW:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "MT"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->MEETING:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "PL"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->PLANNER:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "NB"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->NOTEBOOK:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "FM"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->FORUMS:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "AC"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->ACCOUNTS:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "EX"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->EXPLORER:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "SO"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->SHARE:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "CL"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->CALENDAR:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "CO"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->CONTACTS:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "CE"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->CREATOR:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "HR"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->PEOPLE:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "ZC"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->CONNECTS:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "SR"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->STORE:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "SE"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->SEARCH:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "ZF"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->ZOHOFOX:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "VI"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->VIDEOS:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "WK"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->WIKI:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "ZS"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->SUPPORT:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "CA"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->CAMPAIGN:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "ZD"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->DESKTOP:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "BL"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->BLOGS:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "MB"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->MOBILE:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "RM"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->REMOTE_AGENT:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "ZT"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->TELE_ADAPTER:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "IS"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->ISSUE_TRACKER:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "SD"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->SERVICE_DESK:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "OP"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->OPMANAGER:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "CM"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->CONTACTS_MANAGER:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "PU"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->PULSE:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "IN"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->INTRANET:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "SI"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->SITE24_7:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "ZR"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->REACH:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "AS"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->AC_SERVER:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "LD"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->LIVEDESK:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "JS"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->JABBER_SERVER:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "ZP"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->PAYMENTS:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "ZI"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->PIE:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v2, "ZH"

    invoke-direct {v0, v2}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->HOME:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->SHOWTIME:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "ZA"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->RECRUIT:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "SA"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->START:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "ZM"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->ZOHOMOBILE:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "PD"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->ZOHOPAD:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "FO"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->ZOHOFORMS:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "SB"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->ZOHOSUBSCRIPTIONS:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "SZ"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->ZOHOSITES:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "ZE"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->ZOHOEXPENSE:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "ZB"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->ZOHOBOOKS:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "AL"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->ALARMCENTRAL:Lcom/zoho/wms/common/WmsService;

    new-instance v0, Lcom/zoho/wms/common/WmsService;

    const-string v1, "WH"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/wms/common/WmsService;->STARTWITH:Lcom/zoho/wms/common/WmsService;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zoho/wms/common/WmsService;->prd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPrd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/WmsService;->prd:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/WmsService;->prd:Ljava/lang/String;

    return-object v0
.end method
