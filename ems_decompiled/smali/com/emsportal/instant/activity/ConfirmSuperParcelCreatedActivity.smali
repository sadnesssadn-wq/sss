.class public Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""


# static fields
.field public static final synthetic o:I


# instance fields
.field public c:Landroid/widget/RadioButton;

.field public d:Landroid/widget/RadioButton;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/EditText;

.field public i:Lc/b/q/d/a;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/view/ViewGroup;

.field public m:Landroid/view/ViewGroup;

.field public n:Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b0044

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->g:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f100259

    new-instance v0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity$a;

    invoke-direct {v0, p0}, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity$a;-><init>(Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;)V

    invoke-static {p0, p1, v0}, Lb/u/a;->i0(Landroid/content/Context;ILc/b/w/m;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100263

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 5

    iget-object v0, p0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-static {}, Lb/u/a;->H()Lc/b/v/c/a;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->d:Landroid/widget/RadioButton;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_1
    const-string v1, "DATA_SUPER_SPEED_PARCEL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/b/q/d/a;

    iput-object v0, p0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->i:Lc/b/q/d/a;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Lc/b/q/d/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->i:Lc/b/q/d/a;

    invoke-virtual {v0}, Lc/b/q/d/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "18"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->d:Landroid/widget/RadioButton;

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->c:Landroid/widget/RadioButton;

    goto :goto_0

    .line 1
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->i:Lc/b/q/d/a;

    new-instance v1, Lc/b/q/a/b;

    invoke-direct {v1, p0}, Lc/b/q/a/b;-><init>(Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;)V

    .line 2
    sget v2, Lc/b/s/a;->d:I

    invoke-virtual {v0}, Lc/b/q/d/a;->n()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "http://ws.ems.com.vn/api/v1/be/orders/estimate-fee"

    invoke-static {v2, v0, v3, v1}, Lc/b/t/b;->e(Ljava/lang/String;Lorg/json/JSONObject;ZLc/b/t/b$d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method public r()V
    .locals 1

    iput-object p0, p0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->n:Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;

    const v0, 0x7f10006f

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    const v0, 0x7f080201

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->c:Landroid/widget/RadioButton;

    const v0, 0x7f0801ff

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->d:Landroid/widget/RadioButton;

    const v0, 0x7f080473

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f0804d6

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f080461

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f0800ff

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->h:Landroid/widget/EditText;

    const v0, 0x7f080472

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f0804d8

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->k:Landroid/widget/TextView;

    const v0, 0x7f080243

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->l:Landroid/view/ViewGroup;

    const v0, 0x7f080247

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->m:Landroid/view/ViewGroup;

    return-void
.end method
