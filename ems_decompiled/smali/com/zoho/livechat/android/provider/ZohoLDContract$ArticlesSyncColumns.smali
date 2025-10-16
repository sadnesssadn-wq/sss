.class public interface abstract Lcom/zoho/livechat/android/provider/ZohoLDContract$ArticlesSyncColumns;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/provider/ZohoLDContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ArticlesSyncColumns"
.end annotation


# static fields
.field public static final CLIENT_CRC:Ljava/lang/String; = "CLIENT_CRC"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE SIQ_ARTICLES_SYNC (_id INTEGER PRIMARY KEY AUTOINCREMENT, DEPT_ID TEXT , LAST_SYNC_TIME TEXT , CLIENT_CRC TEXT )"

.field public static final DEPT_ID:Ljava/lang/String; = "DEPT_ID"

.field public static final LAST_SYNC_TIME:Ljava/lang/String; = "LAST_SYNC_TIME"

.field public static final PKID:Ljava/lang/String; = "_id"
