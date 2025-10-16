.class public interface abstract Lcom/zoho/livechat/android/provider/ZohoLDContract$PushNotificationColumns;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/provider/ZohoLDContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PushNotificationColumns"
.end annotation


# static fields
.field public static final CHATID:Ljava/lang/String; = "CHATID"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE SIQ_NOTIFICATIONS (_id INTEGER PRIMARY KEY AUTOINCREMENT, CHATID TEXT          , SENDER TEXT          , DNAME TEXT          , TIMEUID TEXT \t\t   , GROUPID TEXT \t\t   , TYPE INT  not null, MESSAGE TEXT  not null, NAVLNK TEXT          , IMGURL TEXT          , STIME LONG not null)"

.field public static final DNAME:Ljava/lang/String; = "DNAME"

.field public static final DOM:Ljava/lang/String; = "STIME"

.field public static final GROUPID:Ljava/lang/String; = "GROUPID"

.field public static final IMGURL:Ljava/lang/String; = "IMGURL"

.field public static final MESSAGE:Ljava/lang/String; = "MESSAGE"

.field public static final NAVLNK:Ljava/lang/String; = "NAVLNK"

.field public static final PKID:Ljava/lang/String; = "_id"

.field public static final SENDER:Ljava/lang/String; = "SENDER"

.field public static final TIMEUID:Ljava/lang/String; = "TIMEUID"

.field public static final TYPE:Ljava/lang/String; = "TYPE"
