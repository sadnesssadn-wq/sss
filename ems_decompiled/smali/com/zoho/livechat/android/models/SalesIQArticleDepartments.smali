.class public Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private count:I

.field private deptId:Ljava/lang/String;

.field private deptName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DEPT_ID"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;->deptId:Ljava/lang/String;

    const-string v0, "COUNT"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;->count:I

    const-string v0, "DEPT_NAME"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;->deptName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "department_id"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;->deptId:Ljava/lang/String;

    const-string v0, "count"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;->count:I

    const-string v0, "department_name"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;->deptName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;->count:I

    return v0
.end method

.method public getDeptId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;->deptId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeptName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;->deptName:Ljava/lang/String;

    return-object v0
.end method
