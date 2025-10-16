.class public interface abstract Lcom/zoho/livechat/android/provider/ZohoLDContract$MessageColumns;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/provider/ZohoLDContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageColumns"
.end annotation


# static fields
.field public static final ATTACHMENT:Ljava/lang/String; = "META"

.field public static final CHATID:Ljava/lang/String; = "CHATID"

.field public static final CREATE_TABLE:Ljava/lang/String; = " CREATE TABLE SIQ_MESSAGES (_id INTEGER PRIMARY KEY AUTOINCREMENT, CHATID TEXT not null, STIME LONG not null, CTIME LONG , TYPE INT not null, TEXT TEXT , MSGID TEXT , SENDER TEXT not null, DNAME TEXT , META TEXT , MSGMETA TEXT , RESPONDED_VALUE TEXT , IS_BOT INT , STATUS INT not null)"

.field public static final CTIME:Ljava/lang/String; = "CTIME"

.field public static final DNAME:Ljava/lang/String; = "DNAME"

.field public static final IS_BOT:Ljava/lang/String; = "IS_BOT"

.field public static final META:Ljava/lang/String; = "MSGMETA"

.field public static final MSGID:Ljava/lang/String; = "MSGID"

.field public static final MTYPE:Ljava/lang/String; = "TYPE"

.field public static final PKID:Ljava/lang/String; = "_id"

.field public static final RESPONDED_VALUE:Ljava/lang/String; = "RESPONDED_VALUE"

.field public static final SENDER:Ljava/lang/String; = "SENDER"

.field public static final STATUS:Ljava/lang/String; = "STATUS"

.field public static final STIME:Ljava/lang/String; = "STIME"

.field public static final TEXT:Ljava/lang/String; = "TEXT"
