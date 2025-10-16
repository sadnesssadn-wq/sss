.class public Lc/b/o/d;
.super Lcom/emsportal/base/BaseFragment;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final v:Ljava/lang/String;


# instance fields
.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/view/ViewGroup;

.field public i:Landroid/view/ViewGroup;

.field public j:Landroid/view/ViewGroup;

.field public k:Landroid/view/ViewGroup;

.field public l:Landroid/view/ViewGroup;

.field public m:Landroid/view/ViewGroup;

.field public n:Landroid/view/ViewGroup;

.field public o:Landroid/view/ViewGroup;

.field public p:Landroid/view/ViewGroup;

.field public q:Landroid/view/ViewGroup;

.field public r:Landroid/widget/ImageView;

.field public s:Landroid/widget/ImageView;

.field public t:Lb/b/k/g;

.field public u:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lc/b/o/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/b/o/d;->v:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseFragment;-><init>()V

    return-void
.end method

.method public static o(Lc/b/o/d;)V
    .locals 6

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lb/u/a;->z()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/b/v/c/a;

    invoke-virtual {v4}, Lc/b/v/c/a;->i()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b/v/c/a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lc/b/v/c/a;->k(Z)V

    invoke-virtual {v1}, Lc/b/v/c/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lb/u/a;->f0(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v1, ""

    invoke-static {v1}, Lb/u/a;->f0(Ljava/lang/String;)V

    invoke-static {}, Lb/u/a;->Y()V

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {v0}, Lb/u/a;->Z(Ljava/util/ArrayList;)V

    .line 2
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->unregisterVisitor()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    const-class v1, Lcom/emsportal/user/activity/LogInActivity;

    invoke-static {v0, v1}, Lb/u/a;->p0(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public e()I
    .locals 1

    const v0, 0x7f0b0069

    return v0
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lc/b/o/d;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lc/b/o/d;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lc/b/o/d;->h:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lc/b/o/d;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lc/b/o/d;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lc/b/o/d;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lc/b/o/d;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lc/b/o/d;->n:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lc/b/o/d;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lc/b/o/d;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lc/b/o/d;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lc/b/o/d;->q:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const v1, 0x3eb425ed

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 3
    iget-object v1, p0, Lc/b/o/d;->r:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    invoke-virtual {p0}, Lc/b/o/d;->p()V

    .line 5
    iget-object v0, p0, Lc/b/o/d;->g:Landroid/widget/TextView;

    const-string v1, "version 2.3.0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public l(Landroid/view/View;)V
    .locals 0

    const p1, 0x7f08048e

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/o/d;->c:Landroid/widget/TextView;

    const p1, 0x7f080477

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/o/d;->d:Landroid/widget/TextView;

    const p1, 0x7f0804a6

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/o/d;->e:Landroid/widget/TextView;

    const p1, 0x7f08048b

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/o/d;->f:Landroid/widget/TextView;

    const p1, 0x7f080237

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lc/b/o/d;->h:Landroid/view/ViewGroup;

    const p1, 0x7f080260

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lc/b/o/d;->i:Landroid/view/ViewGroup;

    const p1, 0x7f08025b

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lc/b/o/d;->j:Landroid/view/ViewGroup;

    const p1, 0x7f080155

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lc/b/o/d;->r:Landroid/widget/ImageView;

    const p1, 0x7f080159

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lc/b/o/d;->s:Landroid/widget/ImageView;

    const p1, 0x7f080258

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lc/b/o/d;->k:Landroid/view/ViewGroup;

    const p1, 0x7f08024d

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lc/b/o/d;->l:Landroid/view/ViewGroup;

    const p1, 0x7f080238

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lc/b/o/d;->m:Landroid/view/ViewGroup;

    const p1, 0x7f080254

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lc/b/o/d;->n:Landroid/view/ViewGroup;

    const p1, 0x7f080233

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lc/b/o/d;->o:Landroid/view/ViewGroup;

    const p1, 0x7f08025f

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lc/b/o/d;->p:Landroid/view/ViewGroup;

    const p1, 0x7f08023c

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lc/b/o/d;->q:Landroid/view/ViewGroup;

    const p1, 0x7f0804ef

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/o/d;->g:Landroid/widget/TextView;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x28d

    if-ne p1, p3, :cond_0

    const/16 p3, 0xd6

    if-eq p2, p3, :cond_1

    :cond_0
    const/16 p3, 0x17

    if-ne p1, p3, :cond_2

    const/16 p3, 0x86

    if-ne p2, p3, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lc/b/o/d;->p()V

    goto :goto_1

    :cond_2
    const/16 p3, 0x445

    if-ne p1, p3, :cond_3

    const/16 p1, 0x144

    if-ne p2, p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lc/b/o/d;->f:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 1
    new-instance v0, Lb/b/k/g$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/b/k/g$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00b0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/b/k/g$a;->f(Landroid/view/View;)Lb/b/k/g$a;

    const v2, 0x7f080076

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0804a2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lb/b/k/g$a;->a()Lb/b/k/g;

    move-result-object v0

    iput-object v0, p0, Lc/b/o/d;->t:Lb/b/k/g;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v3, 0x7f05027b

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    new-instance v0, Lc/b/o/e;

    invoke-direct {v0, p0}, Lc/b/o/e;-><init>(Lc/b/o/d;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lc/b/o/f;

    invoke-direct {v0, p0}, Lc/b/o/f;-><init>(Lc/b/o/d;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lc/b/o/d;->t:Lb/b/k/g;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/b/o/d;->t:Lb/b/k/g;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2
    :cond_0
    iget-object v0, p0, Lc/b/o/d;->h:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_4

    .line 3
    invoke-static {}, Lb/u/a;->G()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/u/a;->u(Ljava/lang/String;)Lio/jsonwebtoken/Claims;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/jsonwebtoken/Claims;->getExpiration()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lc/b/o/d;->u:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 4
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    if-eqz v1, :cond_3

    const-class v1, Lcom/emsportal/user/activity/ListStoresActivity;

    invoke-static {v0, v1}, Lb/u/a;->p0(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :cond_3
    const v1, 0x7f10024c

    invoke-static {v0, v1}, Lb/u/a;->n0(Landroid/content/Context;I)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lc/b/o/d;->i:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_5

    const-class v0, Lcom/emsportal/user/activity/ListAccountActivity;

    const/16 v1, 0x28d

    invoke-static {p0, v0, v1}, Lb/u/a;->t0(Landroidx/fragment/app/Fragment;Ljava/lang/Class;I)V

    :cond_5
    iget-object v0, p0, Lc/b/o/d;->j:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    const-class v1, Lcom/emsportal/activity/SettingNotificationActivity;

    invoke-static {v0, v1}, Lb/u/a;->p0(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_6
    iget-object v0, p0, Lc/b/o/d;->s:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_7

    const-class v0, Lcom/emsportal/user/activity/UpdateUserInfoActivity;

    const/16 v1, 0x445

    invoke-static {p0, v0, v1}, Lb/u/a;->t0(Landroidx/fragment/app/Fragment;Ljava/lang/Class;I)V

    :cond_7
    iget-object v0, p0, Lc/b/o/d;->k:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    const-class v1, Lcom/emsportal/express/activity/request/RequestActivity;

    invoke-static {v0, v1}, Lb/u/a;->p0(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_8
    iget-object v0, p0, Lc/b/o/d;->l:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    const-class v1, Lcom/emsportal/activity/IntroduceActivity;

    invoke-static {v0, v1}, Lb/u/a;->p0(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_9
    iget-object v0, p0, Lc/b/o/d;->m:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    const-class v1, Lcom/emsportal/activity/ContactActivity;

    invoke-static {v0, v1}, Lb/u/a;->p0(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_a
    iget-object v0, p0, Lc/b/o/d;->n:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    const-class v1, Lcom/emsportal/activity/InformationSecurityPolicyActivity;

    invoke-static {v0, v1}, Lb/u/a;->p0(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_b
    iget-object v0, p0, Lc/b/o/d;->o:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    const-class v1, Lcom/emsportal/user/activity/ChangePasswordActivity;

    invoke-static {v0, v1}, Lb/u/a;->p0(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_c
    iget-object v0, p0, Lc/b/o/d;->p:Landroid/view/ViewGroup;

    const v1, 0x7f100263

    if-ne p1, v0, :cond_e

    invoke-static {}, Lb/u/a;->M()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-static {v0}, Lb/u/a;->l0(Landroid/content/Context;)V

    goto :goto_2

    :cond_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-static {v0, v1}, Lb/u/a;->n0(Landroid/content/Context;I)V

    :cond_e
    :goto_2
    iget-object v0, p0, Lc/b/o/d;->q:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_10

    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    invoke-static {p1, v1}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const v0, 0x7f10025f

    new-instance v1, Lc/b/o/d$a;

    invoke-direct {v1, p0}, Lc/b/o/d$a;-><init>(Lc/b/o/d;)V

    invoke-static {p1, v0, v1}, Lb/u/a;->i0(Landroid/content/Context;ILc/b/w/m;)V

    :cond_10
    return-void
.end method

.method public final p()V
    .locals 3

    invoke-static {}, Lb/u/a;->H()Lc/b/v/c/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lc/b/v/c/a;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    iget-object v2, p0, Lc/b/o/d;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lc/b/o/d;->s:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lc/b/o/d;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/v/c/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lc/b/v/c/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lc/b/v/c/a;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lc/b/o/d;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/v/c/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lc/b/o/d;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/v/c/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lc/b/o/d;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1
    :goto_1
    invoke-virtual {v0}, Lc/b/v/c/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lc/b/v/c/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lc/b/v/c/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/zoho/salesiqembed/ZohoSalesIQ$Visitor;->setName(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/zoho/salesiqembed/ZohoSalesIQ$Visitor;->setContactNumber(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/zoho/salesiqembed/ZohoSalesIQ$Visitor;->setEmail(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
