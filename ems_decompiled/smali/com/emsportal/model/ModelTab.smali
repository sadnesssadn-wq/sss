.class public Lcom/emsportal/model/ModelTab;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/emsportal/model/ModelTab$Builder;,
        Lcom/emsportal/model/ModelTab$IOnClickTab;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private imgIcon:Landroid/widget/ImageView;

.field private isSelected:Z

.field private mTab:Landroid/view/View;

.field private onClickTab:Lcom/emsportal/model/ModelTab$IOnClickTab;

.field private root:Landroid/view/ViewGroup;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/emsportal/model/ModelTab;->root:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/emsportal/model/ModelTab;->onClickTab:Lcom/emsportal/model/ModelTab$IOnClickTab;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/emsportal/model/ModelTab;->isSelected:Z

    if-nez v0, :cond_0

    invoke-interface {p1, p0}, Lcom/emsportal/model/ModelTab$IOnClickTab;->a(Lcom/emsportal/model/ModelTab;)V

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/emsportal/model/ModelTab;->isSelected:Z

    iget-object p1, p0, Lcom/emsportal/model/ModelTab;->imgIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/emsportal/model/ModelTab;->context:Landroid/content/Context;

    const v1, 0x7f05003f

    .line 2
    invoke-static {v0, v1}, Lb/i/f/a;->b(Landroid/content/Context;I)I

    move-result v0

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object p1, p0, Lcom/emsportal/model/ModelTab;->tvTitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
