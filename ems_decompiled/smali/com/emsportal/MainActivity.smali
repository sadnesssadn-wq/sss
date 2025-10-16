.class public Lcom/emsportal/MainActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;


# static fields
.field public static h:Lcom/emsportal/MainActivity;


# instance fields
.field public c:Lb/b/k/g;

.field public d:Lb/b/k/g$a;

.field public e:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field public f:Landroidx/fragment/app/Fragment;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b0041

    return v0
.end method

.method public onBackPressed()V
    .locals 4

    .line 1
    new-instance v0, Lb/b/k/g$a;

    invoke-direct {v0, p0}, Lb/b/k/g$a;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, v0, Lb/b/k/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    const v3, 0x7f100027

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroidx/appcompat/app/AlertController$b;->e:Ljava/lang/CharSequence;

    const v1, 0x7f100272

    .line 3
    invoke-virtual {v0, v1}, Lb/b/k/g$a;->b(I)Lb/b/k/g$a;

    const v1, 0x7f100319

    new-instance v2, Lc/b/a;

    invoke-direct {v2, p0}, Lc/b/a;-><init>(Lcom/emsportal/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Lb/b/k/g$a;->e(ILandroid/content/DialogInterface$OnClickListener;)Lb/b/k/g$a;

    const v1, 0x7f100311

    new-instance v2, Lc/b/b;

    invoke-direct {v2, p0}, Lc/b/b;-><init>(Lcom/emsportal/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Lb/b/k/g$a;->c(ILandroid/content/DialogInterface$OnClickListener;)Lb/b/k/g$a;

    invoke-virtual {v0}, Lb/b/k/g$a;->a()Lb/b/k/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/emsportal/base/BaseNavigationActivity;->onDestroy()V

    const/4 v0, 0x0

    sput-object v0, Lcom/emsportal/MainActivity;->h:Lcom/emsportal/MainActivity;

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1}, Lb/m/d/m;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/emsportal/MainActivity;->w(Landroid/content/Intent;)V

    const-string v0, "login"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/emsportal/MainActivity;->f:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    const/16 v1, 0x17

    const/16 v2, 0x86

    invoke-virtual {v0, v1, v2, p1}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    const p1, 0x7f100253

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/emsportal/base/BaseNavigationActivity;->onResume()V

    sput-object p0, Lcom/emsportal/MainActivity;->h:Lcom/emsportal/MainActivity;

    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q()V
    .locals 2

    iget-object v0, p0, Lcom/emsportal/MainActivity;->e:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0, p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;)V

    iget-object v0, p0, Lcom/emsportal/MainActivity;->e:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v1, Lcom/emsportal/MainActivity$a;

    invoke-direct {v1, p0}, Lcom/emsportal/MainActivity$a;-><init>(Lcom/emsportal/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemReselectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;)V

    .line 1
    iget-object v0, p0, Lcom/emsportal/base/BaseNavigationActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/emsportal/MainActivity;->e:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const v1, 0x7f0801bf

    invoke-virtual {v0, v1}, Lc/d/a/c/d0/e;->setSelectedItemId(I)V

    invoke-virtual {p0, v1}, Lcom/emsportal/MainActivity;->x(I)V

    sget-object v0, Lc/b/u/a;->a:Lc/b/u/a;

    .line 3
    new-instance v1, Lc/b/u/b;

    invoke-direct {v1, v0}, Lc/b/u/b;-><init>(Lc/b/u/a;)V

    invoke-virtual {v0, v1}, Lc/b/u/a;->a(Lc/b/u/a$b;)V

    return-void
.end method

.method public r()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/emsportal/MainActivity;->g:Ljava/util/List;

    .line 2
    sget-object v1, Lc/b/o/t;->p:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Lc/b/o/t;

    invoke-direct {v2}, Lc/b/o/t;-><init>()V

    invoke-virtual {v2, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/emsportal/MainActivity;->g:Ljava/util/List;

    .line 4
    sget-object v1, Lc/b/o/y;->l:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Lc/b/o/y;

    invoke-direct {v2}, Lc/b/o/y;-><init>()V

    invoke-virtual {v2, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/emsportal/MainActivity;->g:Ljava/util/List;

    .line 6
    sget-object v1, Lc/b/o/d;->v:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Lc/b/o/d;

    invoke-direct {v2}, Lc/b/o/d;-><init>()V

    invoke-virtual {v2, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 7
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/emsportal/MainActivity;->w(Landroid/content/Intent;)V

    sput-object p0, Lcom/emsportal/MainActivity;->h:Lcom/emsportal/MainActivity;

    .line 9
    new-instance v0, Lb/b/k/g$a;

    invoke-direct {v0, p0}, Lb/b/k/g$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/emsportal/MainActivity;->d:Lb/b/k/g$a;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00ad

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/emsportal/MainActivity;->d:Lb/b/k/g$a;

    invoke-virtual {v1, v0}, Lb/b/k/g$a;->f(Landroid/view/View;)Lb/b/k/g$a;

    iget-object v1, p0, Lcom/emsportal/MainActivity;->d:Lb/b/k/g$a;

    .line 10
    iget-object v1, v1, Lb/b/k/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/appcompat/app/AlertController$b;->l:Z

    const v1, 0x7f08048a

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0804cc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Lc/b/e;

    invoke-direct {v2, p0}, Lc/b/e;-><init>(Lcom/emsportal/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lc/b/f;

    invoke-direct {v1, p0}, Lc/b/f;-><init>(Lcom/emsportal/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/MainActivity;->d:Lb/b/k/g$a;

    invoke-virtual {v0}, Lb/b/k/g$a;->a()Lb/b/k/g;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/MainActivity;->c:Lb/b/k/g;

    const v0, 0x7f080069

    .line 12
    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object v0, p0, Lcom/emsportal/MainActivity;->e:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    return-void
.end method

.method public final v(Lc/b/m/d/r;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_5

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "OBJ_NOTIFICATION"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-static {}, Lb/u/a;->M()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual/range {p1 .. p1}, Lc/b/m/d/r;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string v6, "1"

    const/4 v7, 0x1

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v5, "4"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    goto :goto_0

    :pswitch_1
    const-string v5, "3"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    goto :goto_0

    :pswitch_2
    const-string v5, "2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :pswitch_3
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_1

    goto :goto_1

    :pswitch_4
    const-class v1, Lcom/emsportal/activity/DetailPromotionActivity;

    invoke-static {v0, v1, v2}, Lb/u/a;->q0(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lc/b/m/d/r;->b()Ljava/lang/String;

    move-result-object v1

    .line 1
    new-instance v2, Lc/b/d;

    invoke-direct {v2, v0}, Lc/b/d;-><init>(Lcom/emsportal/MainActivity;)V

    const/4 v3, 0x0

    invoke-static {v6, v3, v1, v7, v2}, Lc/b/s/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLc/b/t/b$d;)V

    goto :goto_1

    .line 2
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lc/b/m/d/r;->b()Ljava/lang/String;

    move-result-object v12

    .line 3
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    new-instance v1, Lc/b/c;

    invoke-direct {v1, v0, v12}, Lc/b/c;-><init>(Lcom/emsportal/MainActivity;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v16, v1

    invoke-static/range {v8 .. v16}, Lc/b/s/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLc/b/t/b$d;)V

    goto :goto_1

    .line 4
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100263

    invoke-static {v1, v2}, Lb/u/a;->n0(Landroid/content/Context;I)V

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public final w(Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string v0, "OBJ_NOTIFICATION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc/b/m/d/r;

    invoke-virtual {p0, p1}, Lcom/emsportal/MainActivity;->v(Lc/b/m/d/r;)V

    goto/16 :goto_3

    :cond_0
    const-string v0, "notify_type"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "username"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "merchant_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lb/u/a;->z()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/b/v/c/a;

    invoke-virtual {v3}, Lc/b/v/c/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_2
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "tracking_code"

    if-eqz v2, :cond_3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "status_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lc/b/m/d/r;

    invoke-direct {v2, v1, v1, p1, v0}, Lc/b/m/d/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_2

    :cond_3
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "description"

    if-nez v2, :cond_5

    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    const-string v2, "4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v1, "title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lc/b/m/d/r;

    invoke-direct {v3, v1, v1, v2, v0}, Lc/b/m/d/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "created_at"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0}, Lc/b/m/d/r;->q(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lc/b/m/d/r;->u(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ticket_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, " - "

    invoke-static {v2, v3, v1}, Lc/a/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lc/b/m/d/r;

    invoke-direct {v3, v2, v1, p1, v0}, Lc/b/m/d/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v1, v3

    .line 2
    :cond_6
    :goto_2
    invoke-virtual {p0, v1}, Lcom/emsportal/MainActivity;->v(Lc/b/m/d/r;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public final x(I)V
    .locals 4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object p1, Lc/b/o/y;->l:Ljava/lang/String;

    iget-object p1, p0, Lcom/emsportal/MainActivity;->g:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Lcom/emsportal/MainActivity;->f:Landroidx/fragment/app/Fragment;

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lc/b/o/y;

    invoke-direct {v1}, Lc/b/o/y;-><init>()V

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 2
    :pswitch_1
    sget-object p1, Lc/b/o/d;->v:Ljava/lang/String;

    iget-object p1, p0, Lcom/emsportal/MainActivity;->g:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Lcom/emsportal/MainActivity;->f:Landroidx/fragment/app/Fragment;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lc/b/o/d;

    invoke-direct {v1}, Lc/b/o/d;-><init>()V

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 4
    :pswitch_2
    sget-object p1, Lc/b/o/t;->p:Ljava/lang/String;

    iget-object p1, p0, Lcom/emsportal/MainActivity;->g:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Lcom/emsportal/MainActivity;->f:Landroidx/fragment/app/Fragment;

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lc/b/o/t;

    invoke-direct {v1}, Lc/b/o/t;-><init>()V

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 6
    :goto_0
    iput-object v1, p0, Lcom/emsportal/MainActivity;->f:Landroidx/fragment/app/Fragment;

    :cond_0
    :goto_1
    iget-object p1, p0, Lcom/emsportal/MainActivity;->f:Landroidx/fragment/app/Fragment;

    .line 7
    invoke-virtual {p0}, Lb/m/d/m;->getSupportFragmentManager()Lb/m/d/y;

    move-result-object v1

    .line 8
    new-instance v2, Lb/m/d/a;

    invoke-direct {v2, v1}, Lb/m/d/a;-><init>(Lb/m/d/y;)V

    const v1, 0x7f010022

    const v3, 0x7f010024

    .line 9
    iput v1, v2, Lb/m/d/i0;->b:I

    iput v3, v2, Lb/m/d/i0;->c:I

    iput v0, v2, Lb/m/d/i0;->d:I

    iput v0, v2, Lb/m/d/i0;->e:I

    const v0, 0x7f080239

    .line 10
    iget-object v1, p0, Lcom/emsportal/MainActivity;->f:Landroidx/fragment/app/Fragment;

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v2, v0, v1, v3}, Lb/m/d/i0;->j(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Lb/m/d/i0;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lb/m/d/i0;->d(Ljava/lang/String;)Lb/m/d/i0;

    invoke-virtual {v2}, Lb/m/d/a;->e()I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0801bf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
