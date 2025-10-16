.class public Lcom/emsportal/activity/DialogNotifiCreateInventorySuccessActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""


# instance fields
.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Lc/b/m/d/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b00ab

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/emsportal/activity/DialogNotifiCreateInventorySuccessActivity;->c:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    const/16 p1, 0x338

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/emsportal/activity/DialogNotifiCreateInventorySuccessActivity;->d:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    const/16 p1, 0x28b

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q()V
    .locals 5

    iget-object v0, p0, Lcom/emsportal/activity/DialogNotifiCreateInventorySuccessActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/activity/DialogNotifiCreateInventorySuccessActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "OBJ_INFO_INVENTORY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/b/m/d/p;

    iput-object v0, p0, Lcom/emsportal/activity/DialogNotifiCreateInventorySuccessActivity;->i:Lc/b/m/d/p;

    .line 1
    iget-object v1, p0, Lcom/emsportal/activity/DialogNotifiCreateInventorySuccessActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/m/d/p;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/activity/DialogNotifiCreateInventorySuccessActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/m/d/p;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lb/u/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/activity/DialogNotifiCreateInventorySuccessActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/m/d/p;->f()Lc/b/m/d/y;

    move-result-object v2

    invoke-virtual {v2}, Lc/b/m/d/y;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lb/u/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lc/b/m/d/p;->a()Lc/b/m/d/k;

    move-result-object v1

    invoke-virtual {v1}, Lc/b/m/d/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0}, Lc/b/m/d/p;->a()Lc/b/m/d/k;

    move-result-object v0

    invoke-virtual {v0}, Lc/b/m/d/k;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    add-double/2addr v3, v1

    iget-object v0, p0, Lcom/emsportal/activity/DialogNotifiCreateInventorySuccessActivity;->g:Landroid/widget/TextView;

    invoke-static {v3, v4}, Lb/u/a;->i(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public r()V
    .locals 2

    const v0, 0x7f08045b

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/activity/DialogNotifiCreateInventorySuccessActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f080488

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/activity/DialogNotifiCreateInventorySuccessActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f08048d

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/activity/DialogNotifiCreateInventorySuccessActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f08046c

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/activity/DialogNotifiCreateInventorySuccessActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f08047a

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/activity/DialogNotifiCreateInventorySuccessActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f080455

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/activity/DialogNotifiCreateInventorySuccessActivity;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/emsportal/base/BaseNavigationActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f05027b

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method
