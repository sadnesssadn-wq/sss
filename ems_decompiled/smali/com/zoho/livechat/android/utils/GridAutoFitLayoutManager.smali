.class public Lcom/zoho/livechat/android/utils/GridAutoFitLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source ""


# static fields
.field private static final COLUMN_WIDTH:I = 0xc8


# instance fields
.field private mColumnWidth:I

.field private mColumnWidthChanged:Z

.field private mWidth:I

.field private mWidthChanged:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-boolean v0, p0, Lcom/zoho/livechat/android/utils/GridAutoFitLayoutManager;->mColumnWidthChanged:Z

    iput-boolean v0, p0, Lcom/zoho/livechat/android/utils/GridAutoFitLayoutManager;->mWidthChanged:Z

    invoke-direct {p0, p1, p2}, Lcom/zoho/livechat/android/utils/GridAutoFitLayoutManager;->checkedColumnWidth(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/utils/GridAutoFitLayoutManager;->setColumnWidth(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iput-boolean v0, p0, Lcom/zoho/livechat/android/utils/GridAutoFitLayoutManager;->mColumnWidthChanged:Z

    iput-boolean v0, p0, Lcom/zoho/livechat/android/utils/GridAutoFitLayoutManager;->mWidthChanged:Z

    invoke-direct {p0, p1, p2}, Lcom/zoho/livechat/android/utils/GridAutoFitLayoutManager;->checkedColumnWidth(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/utils/GridAutoFitLayoutManager;->setColumnWidth(I)V

    return-void
.end method

.method private checkedColumnWidth(Landroid/content/Context;I)I
    .locals 1

    const/4 v0, 0x1

    if-gtz p2, :cond_0

    const/high16 p2, 0x43480000    # 200.0f

    goto :goto_0

    :cond_0
    int-to-float p2, p2

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {v0, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private setColumnWidth(I)V
    .locals 1

    if-lez p1, :cond_0

    iget v0, p0, Lcom/zoho/livechat/android/utils/GridAutoFitLayoutManager;->mColumnWidth:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/zoho/livechat/android/utils/GridAutoFitLayoutManager;->mColumnWidth:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zoho/livechat/android/utils/GridAutoFitLayoutManager;->mColumnWidthChanged:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$s;Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$m;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$m;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/zoho/livechat/android/utils/GridAutoFitLayoutManager;->mWidth:I

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    iput-boolean v3, p0, Lcom/zoho/livechat/android/utils/GridAutoFitLayoutManager;->mWidthChanged:Z

    iput v0, p0, Lcom/zoho/livechat/android/utils/GridAutoFitLayoutManager;->mWidth:I

    :cond_0
    iget-boolean v2, p0, Lcom/zoho/livechat/android/utils/GridAutoFitLayoutManager;->mColumnWidthChanged:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/zoho/livechat/android/utils/GridAutoFitLayoutManager;->mColumnWidth:I

    if-lez v2, :cond_1

    if-lez v0, :cond_1

    if-gtz v1, :cond_2

    :cond_1
    iget-boolean v2, p0, Lcom/zoho/livechat/android/utils/GridAutoFitLayoutManager;->mWidthChanged:Z

    if-eqz v2, :cond_4

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v2

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$m;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$m;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$m;->getPaddingTop()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$m;->getPaddingBottom()I

    move-result v0

    sub-int v0, v1, v0

    :goto_0
    iget v1, p0, Lcom/zoho/livechat/android/utils/GridAutoFitLayoutManager;->mColumnWidth:I

    div-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zoho/livechat/android/utils/GridAutoFitLayoutManager;->mColumnWidthChanged:Z

    iput-boolean v0, p0, Lcom/zoho/livechat/android/utils/GridAutoFitLayoutManager;->mWidthChanged:Z

    :cond_4
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$s;Landroidx/recyclerview/widget/RecyclerView$x;)V

    return-void
.end method
