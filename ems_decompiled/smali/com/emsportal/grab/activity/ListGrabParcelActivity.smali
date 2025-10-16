.class public Lcom/emsportal/grab/activity/ListGrabParcelActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""

# interfaces
.implements Lc/b/l/a0$a;
.implements Lc/b/p/c/a$a;


# instance fields
.field public c:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public d:Lc/b/p/c/a;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/p/e/h;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p4, p0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->j:Ljava/lang/String;

    iput-object p3, p0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->k:Ljava/lang/String;

    invoke-virtual {p0, p4, p5}, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->v()V

    return-void
.end method

.method public o()I
    .locals 1

    const v0, 0x7f0b003e

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lb/m/d/m;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0xbc4

    if-ne p1, p3, :cond_0

    const/16 p1, 0x202a

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->v()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->c:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-ne p1, v0, :cond_0

    const-class p1, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;

    const/16 v0, 0xbc4

    invoke-static {p0, p1, v0}, Lb/u/a;->r0(Lb/b/k/h;Ljava/lang/Class;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->l:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->d:Lc/b/p/c/a;

    invoke-virtual {p0}, Lb/m/d/m;->getSupportFragmentManager()Lb/m/d/y;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/b/p/c/a;->d(Lb/m/d/y;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Lc/b/p/a/d;

    invoke-direct {p1, p0}, Lc/b/p/a/d;-><init>(Lcom/emsportal/grab/activity/ListGrabParcelActivity;)V

    .line 2
    sget v0, Lc/b/s/a;->d:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "datatype"

    const-string v2, "list"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    const-string v2, "http://ws.ems.com.vn/api/v1/grab/status"

    invoke-static {v2, v0, v1, p1}, Lc/b/t/b;->a(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100263

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->m:Landroid/widget/TextView;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->x()V

    :cond_4
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

    if-eqz p1, :cond_0

    const-string v0, "DATA_SUPER_SPEED_PARCEL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x202a

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->v()V

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
    invoke-virtual {p0}, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->x()V

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
    .locals 10

    const v0, 0x7f1003b4

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    iget-object v0, p0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->c:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->e:Ljava/util/List;

    .line 1
    sget v0, Lc/b/p/c/a;->i:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lc/b/p/c/a;

    invoke-direct {v1}, Lc/b/p/c/a;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lc/b/p/c/a;->f:Ljava/util/List;

    new-instance v2, Lc/b/p/b/f;

    invoke-direct {v2, v0}, Lc/b/p/b/f;-><init>(Ljava/util/List;)V

    iput-object v2, v1, Lc/b/p/c/a;->g:Lc/b/p/b/f;

    .line 2
    iput-object v1, p0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->d:Lc/b/p/c/a;

    .line 3
    iput-object p0, v1, Lc/b/p/c/a;->h:Lc/b/p/c/a$a;

    .line 4
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2, v2, v0}, Lc/a/a/a/a;->s(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v1, v2, v2, v0}, Lc/a/a/a/a;->r(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    new-instance v2, Lc/b/m/d/m;

    sget-object v4, Lcom/emsportal/dialog/DateTimeOption;->THIS_MONTH:Lcom/emsportal/dialog/DateTimeOption;

    invoke-direct {v2, v3, v0, v4}, Lc/b/m/d/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/emsportal/dialog/DateTimeOption;)V

    invoke-virtual {v2, v8}, Lc/b/m/d/m;->x(I)V

    invoke-virtual {v2, v7}, Lc/b/m/d/m;->z(I)V

    invoke-virtual {v2, v5}, Lc/b/m/d/m;->E(I)V

    invoke-virtual {v2, v1}, Lc/b/m/d/m;->F(I)V

    invoke-virtual {v2, v6}, Lc/b/m/d/m;->G(I)V

    invoke-virtual {v2, v9}, Lc/b/m/d/m;->H(I)V

    .line 5
    invoke-virtual {v2}, Lc/b/m/d/m;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->f:Ljava/lang/String;

    invoke-virtual {v2}, Lc/b/m/d/m;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->g:Ljava/lang/String;

    const-string v1, "ALL"

    iput-object v1, p0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->f:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->l:Landroid/widget/TextView;

    const-string v1, "T\u1ea5t c\u1ea3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p0}, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->v()V

    .line 8
    invoke-static {v2}, Lb/u/a;->e0(Lc/b/m/d/m;)V

    return-void
.end method

.method public r()V
    .locals 1

    const v0, 0x7f080128

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v0, p0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->c:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v0, 0x7f0804c9

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->l:Landroid/widget/TextView;

    const v0, 0x7f08047d

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->m:Landroid/widget/TextView;

    return-void
.end method

.method public final v()V
    .locals 4

    .line 1
    sget v0, Lc/b/p/d/b;->k:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lc/b/p/d/b;

    invoke-direct {v1}, Lc/b/p/d/b;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->f:Ljava/lang/String;

    .line 3
    iput-object v0, v1, Lc/b/p/d/b;->e:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->g:Ljava/lang/String;

    .line 5
    iput-object v0, v1, Lc/b/p/d/b;->f:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->h:Ljava/lang/String;

    .line 7
    iput-object v0, v1, Lc/b/p/d/b;->g:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->i:Ljava/lang/String;

    .line 9
    iput-object v0, v1, Lc/b/p/d/b;->h:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->j:Ljava/lang/String;

    .line 11
    iput-object v0, v1, Lc/b/p/d/b;->i:Ljava/lang/String;

    .line 12
    iget-object v0, p0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->k:Ljava/lang/String;

    .line 13
    iput-object v0, v1, Lc/b/p/d/b;->j:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->m:Landroid/widget/TextView;

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
    .locals 2

    .line 1
    sget v0, Lc/b/l/a0;->D:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lc/b/l/a0;

    invoke-direct {v1}, Lc/b/l/a0;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 2
    iput-object p0, v1, Lc/b/l/a0;->z:Lc/b/l/a0$a;

    .line 3
    invoke-virtual {p0}, Lb/m/d/m;->getSupportFragmentManager()Lb/m/d/y;

    move-result-object v0

    invoke-virtual {v1, v0}, Lc/b/l/a0;->l(Lb/m/d/y;)V

    return-void
.end method
