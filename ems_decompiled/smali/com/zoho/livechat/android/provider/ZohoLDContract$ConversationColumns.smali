.class public interface abstract Lcom/zoho/livechat/android/provider/ZohoLDContract$ConversationColumns;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/provider/ZohoLDContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConversationColumns"
.end annotation


# static fields
.field public static final ATTENDER:Ljava/lang/String; = "ATTENDER"

.field public static final ATTENDER_EMAIL:Ljava/lang/String; = "ATTENDER_EMAIL"

.field public static final ATTENDER_ID:Ljava/lang/String; = "ATTENDER_ID"

.field public static final ATTENDER_IMGKEY:Ljava/lang/String; = "ATTENDER_IMGKEY"

.field public static final CHATID:Ljava/lang/String; = "CHATID"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE SIQ_CONVERSATIONS (_id INTEGER PRIMARY KEY AUTOINCREMENT, CHATID TEXT , VISITORID TEXT , VISITID TEXT , ATTENDER TEXT , TIME LONG not null, DEPTID TEXT, QUESTION TEXT, ATTENDER_IMGKEY TEXT, LASTMSG TEXT, ISBOTATTENDER INT, LMTIME TEXT, ATTENDER_ID TEXT, ATTENDER_EMAIL TEXT, DEPTNAME TEXT, DRAFT TEXT, SHOW_FEEDBACK INT, SHOW_CONTINUE_CHAT INT, STATUS INT not null)"

.field public static final DEPTID:Ljava/lang/String; = "DEPTID"

.field public static final DEPTNAME:Ljava/lang/String; = "DEPTNAME"

.field public static final DRAFT:Ljava/lang/String; = "DRAFT"

.field public static final ISBOTATTENDER:Ljava/lang/String; = "ISBOTATTENDER"

.field public static final LASTMSG:Ljava/lang/String; = "LASTMSG"

.field public static final LMTIME:Ljava/lang/String; = "LMTIME"

.field public static final PKID:Ljava/lang/String; = "_id"

.field public static final QUESTION:Ljava/lang/String; = "QUESTION"

.field public static final SHOW_CONTINUE_CHAT:Ljava/lang/String; = "SHOW_CONTINUE_CHAT"

.field public static final SHOW_FEEDBACK:Ljava/lang/String; = "SHOW_FEEDBACK"

.field public static final STATUS:Ljava/lang/String; = "STATUS"

.field public static final TIME:Ljava/lang/String; = "TIME"

.field public static final VISITID:Ljava/lang/String; = "VISITID"

.field public static final VISITORID:Ljava/lang/String; = "VISITORID"
