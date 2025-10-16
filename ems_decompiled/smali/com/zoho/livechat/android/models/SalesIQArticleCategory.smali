.class public Lcom/zoho/livechat/android/models/SalesIQArticleCategory;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private canned_category_id:Ljava/lang/String;

.field private canned_category_name:Ljava/lang/String;

.field private count:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQArticleCategory;->canned_category_id:Ljava/lang/String;

    iput-object p2, p0, Lcom/zoho/livechat/android/models/SalesIQArticleCategory;->canned_category_name:Ljava/lang/String;

    iput p3, p0, Lcom/zoho/livechat/android/models/SalesIQArticleCategory;->count:I

    return-void
.end method


# virtual methods
.method public getCanned_category_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticleCategory;->canned_category_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCanned_category_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticleCategory;->canned_category_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticleCategory;->count:I

    return v0
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/models/SalesIQArticleCategory;->count:I

    return-void
.end method
