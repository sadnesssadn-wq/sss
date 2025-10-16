.class public Lc/b/h/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/emsportal/activity/DetailPromotionActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/activity/DetailPromotionActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/h/d;->c:Lcom/emsportal/activity/DetailPromotionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lc/b/h/d;->c:Lcom/emsportal/activity/DetailPromotionActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/activity/DetailPromotionActivity;->e:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lc/b/h/d;->c:Lcom/emsportal/activity/DetailPromotionActivity;

    .line 3
    iget-object v0, v0, Lcom/emsportal/activity/DetailPromotionActivity;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lc/b/h/d;->c:Lcom/emsportal/activity/DetailPromotionActivity;

    .line 5
    iget-object v0, v0, Lcom/emsportal/activity/DetailPromotionActivity;->e:Landroid/widget/TextView;

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lc/b/h/d;->c:Lcom/emsportal/activity/DetailPromotionActivity;

    .line 7
    iget-object v0, v0, Lcom/emsportal/activity/DetailPromotionActivity;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
