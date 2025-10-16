.class public interface abstract Lcom/zoho/livechat/android/provider/ZohoLDContract$ArticlesColumns;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/provider/ZohoLDContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ArticlesColumns"
.end annotation


# static fields
.field public static final ARTICLE_ID:Ljava/lang/String; = "ARTICLE_ID"

.field public static final ARTICLE_INFO:Ljava/lang/String; = "ARTICLE_INFO"

.field public static final ARTICLE_MESSAGE:Ljava/lang/String; = "ARTICLE_MESSAGE"

.field public static final CATEGORY_ID:Ljava/lang/String; = "CATEGORY_ID"

.field public static final CATEGORY_NAME:Ljava/lang/String; = "CATEGORY_NAME"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE SIQ_ARTICLES (_id INTEGER PRIMARY KEY AUTOINCREMENT, ARTICLE_ID TEXT unique not null , CATEGORY_ID TEXT , CATEGORY_NAME TEXT , VISITORS_VIEWED INT , USAGE_COUNT INT , LIKES INT , DISLIKES INT , DEPT_ID TEXT , CTIME LONG , MTIME LONG , ARTICLE_MESSAGE TEXT , LAST_SEARCH_TIME TEXT , LAST_VIEWED_TIME TEXT , RATED_TYPE INT , ARTICLE_INFO TEXT )"

.field public static final CTIME:Ljava/lang/String; = "CTIME"

.field public static final DEPT_ID:Ljava/lang/String; = "DEPT_ID"

.field public static final DISLIKES:Ljava/lang/String; = "DISLIKES"

.field public static final LAST_SEARCH_TIME:Ljava/lang/String; = "LAST_SEARCH_TIME"

.field public static final LAST_VIEWED_TIME:Ljava/lang/String; = "LAST_VIEWED_TIME"

.field public static final LIKES:Ljava/lang/String; = "LIKES"

.field public static final MTIME:Ljava/lang/String; = "MTIME"

.field public static final PKID:Ljava/lang/String; = "_id"

.field public static final RATED_TYPE:Ljava/lang/String; = "RATED_TYPE"

.field public static final USAGE_COUNT:Ljava/lang/String; = "USAGE_COUNT"

.field public static final VISITORS_VIEWED:Ljava/lang/String; = "VISITORS_VIEWED"
