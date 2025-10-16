.class public Lcom/emsportal/express/retail/activity/ListOrderRCActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""

# interfaces
.implements Lc/b/l/w$a;
.implements Lc/b/l/h0$a;


# instance fields
.field public c:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b003c

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lb/m/d/m;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x4c7

    if-ne p1, p3, :cond_0

    const/16 p1, 0x144

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;->v()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;->c:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-ne p1, v0, :cond_0

    const-class p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;

    const/16 v0, 0x4c7

    invoke-static {p0, p1, v0}, Lb/u/a;->r0(Lb/b/k/h;Ljava/lang/Class;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;->j:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 1
    sget p1, Lc/b/l/h0;->i:I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Lc/b/l/h0;

    invoke-direct {v0}, Lc/b/l/h0;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 2
    iput-object p0, v0, Lc/b/l/h0;->h:Lc/b/l/h0$a;

    .line 3
    invoke-virtual {p0}, Lb/m/d/m;->getSupportFragmentManager()Lb/m/d/y;

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lb/m/d/l;->show(Lb/m/d/y;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lb/m/d/l;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;->k:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;->x()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lb/b/k/h;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lb/m/d/m;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "DATA_INVENTORY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0x180

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;->v()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f08004a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;->x()V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 6

    const v0, 0x7f1003a5

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    iget-object v0, p0, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;->c:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lb/u/a;->F()Lc/b/m/d/m;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/b/m/d/m;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lc/b/m/d/m;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    const/4 v4, 0x5

    const/16 v5, -0x1e

    invoke-static {v2, v4, v5, v1}, Lc/a/a/a/a;->q(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "end"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;->d:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;->j:Landroid/widget/TextView;

    const-string v1, "T\u1ea5t c\u1ea3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;->v()V

    return-void
.end method

.method public r()V
    .locals 1

    const v0, 0x7f080128

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v0, p0, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;->c:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v0, 0x7f0804c9

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f08047d

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;->k:Landroid/widget/TextView;

    return-void
.end method

.method public final v()V
    .locals 4

    .line 1
    sget v0, Lc/b/m/e/c/a;->k:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lc/b/m/e/c/a;

    invoke-direct {v1}, Lc/b/m/e/c/a;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;->d:Ljava/lang/String;

    .line 3
    iput-object v0, v1, Lc/b/m/e/c/a;->e:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;->e:Ljava/lang/String;

    .line 5
    iput-object v0, v1, Lc/b/m/e/c/a;->f:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;->f:Ljava/lang/String;

    .line 7
    iput-object v0, v1, Lc/b/m/e/c/a;->g:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;->g:Ljava/lang/String;

    .line 9
    iput-object v0, v1, Lc/b/m/e/c/a;->h:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;->h:Ljava/lang/String;

    .line 11
    iput-object v0, v1, Lc/b/m/e/c/a;->i:Ljava/lang/String;

    .line 12
    iget-object v0, p0, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;->i:Ljava/lang/String;

    .line 13
    iput-object v0, v1, Lc/b/m/e/c/a;->j:Ljava/lang/String;

    .line 14
    invoke-virtual {p0}, Lb/m/d/m;->getSupportFragmentManager()Lb/m/d/y;

    move-result-object v0

    .line 15
    new-instance v2, Lb/m/d/a;

    invoke-direct {v2, v0}, Lb/m/d/a;-><init>(Lb/m/d/y;)V

    const v0, 0x7f080239

    const/4 v3, 0x0

    .line 16
    invoke-virtual {v2, v0, v1, v3}, Lb/m/d/i0;->j(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Lb/m/d/i0;

    .line 17
    invoke-virtual {v2}, Lb/m/d/a;->e()I

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "dd/MM/yyyy"

    const-string v1, "dd/MM"

    invoke-static {p1, v0, v1}, Lb/u/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, v1}, Lb/u/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;->k:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final x()V
    .locals 4

    .line 1
    sget v0, Lc/b/l/w;->D:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lc/b/l/w;

    invoke-direct {v1}, Lc/b/l/w;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 2
    iput-object p0, v1, Lc/b/l/w;->z:Lc/b/l/w$a;

    .line 3
    invoke-virtual {p0}, Lb/m/d/m;->getSupportFragmentManager()Lb/m/d/y;

    move-result-object v0

    .line 4
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lb/m/d/l;->show(Lb/m/d/y;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lb/m/d/l;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    iget-boolean v2, v1, Lc/b/l/w;->C:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_0
    iput-boolean v3, v1, Lc/b/l/w;->C:Z

    :cond_1
    return-void
.end method
