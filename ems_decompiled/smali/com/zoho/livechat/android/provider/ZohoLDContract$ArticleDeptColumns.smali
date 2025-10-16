.class public interface abstract Lcom/zoho/livechat/android/provider/ZohoLDContract$ArticleDeptColumns;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/provider/ZohoLDContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ArticleDeptColumns"
.end annotation


# static fields
.field public static final COUNT:Ljava/lang/String; = "COUNT"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE SIQ_ARTICLE_DEPTS (_id INTEGER PRIMARY KEY AUTOINCREMENT, COUNT INT          , DEPT_ID TEXT  unique not null, DEPT_NAME TEXT not null)"

.field public static final DEPT_ID:Ljava/lang/String; = "DEPT_ID"

.field public static final DEPT_NAME:Ljava/lang/String; = "DEPT_NAME"

.field public static final PKID:Ljava/lang/String; = "_id"
