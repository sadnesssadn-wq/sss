.class public Lcom/emsportal/express/activity/CalculateFreightActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""


# instance fields
.field public c:Landroid/widget/EditText;

.field public d:Landroid/widget/EditText;

.field public e:Landroid/widget/EditText;

.field public f:Lcom/emsportal/widget/CurrencyEditText;

.field public g:Landroid/widget/CheckBox;

.field public h:Landroid/widget/EditText;

.field public i:Landroid/widget/EditText;

.field public j:Landroid/widget/EditText;

.field public k:Landroid/view/ViewGroup;

.field public l:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Lcom/emsportal/model/ObjProvince;

.field public u:Lcom/emsportal/model/ObjProvince;

.field public v:Lcom/emsportal/model/ObjDistrict;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b001f

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lb/m/d/m;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x7c9

    if-ne p1, v0, :cond_0

    const/16 v0, 0x144

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x277

    if-ne p1, v0, :cond_1

    const/16 p1, 0x195

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "PROVINCE"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/emsportal/model/ObjProvince;

    iput-object p1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->t:Lcom/emsportal/model/ObjProvince;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/emsportal/model/ObjProvince;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->q:Ljava/lang/String;

    iget-object p1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->n:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->t:Lcom/emsportal/model/ObjProvince;

    invoke-virtual {p2}, Lcom/emsportal/model/ObjProvince;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->m:Landroid/widget/TextView;

    const v1, 0x7f1002b7

    if-ne p1, v0, :cond_10

    .line 1
    iget-object p1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object p1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object p1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->e:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->f:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->q:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    const p1, 0x7f100251

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p0, p1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 3
    :cond_0
    iget-object v4, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->r:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const p1, 0x7f10026c

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const p1, 0x7f1002d6

    goto :goto_2

    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0x7530

    if-lt p1, v1, :cond_4

    const p1, 0x7f1002d7

    .line 6
    :goto_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 7
    iget-object p1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->e:Landroid/widget/EditText;

    goto/16 :goto_4

    :cond_4
    iget-object p1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->g:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f100280

    goto :goto_3

    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_6

    const p1, 0x7f100281

    .line 8
    :goto_3
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 9
    iget-object p1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->h:Landroid/widget/EditText;

    goto :goto_4

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->i:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    const p1, 0x7f1002de

    goto/16 :goto_0

    :cond_7
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_8

    const p1, 0x7f10024b

    .line 10
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 11
    iget-object p1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->i:Landroid/widget/EditText;

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->j:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    const p1, 0x7f10027d

    .line 12
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_5

    .line 13
    :cond_9
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_a

    const p1, 0x7f10024a

    .line 14
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 15
    iget-object p1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->j:Landroid/widget/EditText;

    :goto_4
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v5, 0x1

    :goto_6
    if-eqz v5, :cond_17

    .line 16
    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object p1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object p1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->e:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->f:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {v0}, Lcom/emsportal/widget/CurrencyEditText;->getCurrencyText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/u/a;->q(Ljava/lang/String;)D

    iget-object v1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lb/u/a;->I()Lc/b/m/d/h0;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lc/b/m/d/h0;->h()Ljava/lang/String;

    move-result-object v2

    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    :cond_c
    new-instance v5, Lc/b/m/d/j$b;

    invoke-direct {v5}, Lc/b/m/d/j$b;-><init>()V

    const-string v6, "1"

    invoke-virtual {v5, v6}, Lc/b/m/d/j$b;->R(Ljava/lang/String;)Lc/b/m/d/j$b;

    invoke-virtual {v5, p1}, Lc/b/m/d/j$b;->U(Ljava/lang/String;)Lc/b/m/d/j$b;

    invoke-virtual {v5, v0}, Lc/b/m/d/j$b;->E(Ljava/lang/String;)Lc/b/m/d/j$b;

    invoke-virtual {v5, v2}, Lc/b/m/d/j$b;->I(Ljava/lang/String;)Lc/b/m/d/j$b;

    iget-object p1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->r:Ljava/lang/String;

    invoke-virtual {v5, p1}, Lc/b/m/d/j$b;->B(Ljava/lang/String;)Lc/b/m/d/j$b;

    iget-object p1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->s:Ljava/lang/String;

    invoke-virtual {v5, p1}, Lc/b/m/d/j$b;->A(Ljava/lang/String;)Lc/b/m/d/j$b;

    iget-object p1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->q:Ljava/lang/String;

    invoke-virtual {v5, p1}, Lc/b/m/d/j$b;->C(Ljava/lang/String;)Lc/b/m/d/j$b;

    iget-object p1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->u:Lcom/emsportal/model/ObjProvince;

    invoke-virtual {v5, p1}, Lc/b/m/d/j$b;->P(Lcom/emsportal/model/ObjProvince;)Lc/b/m/d/j$b;

    iget-object p1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->v:Lcom/emsportal/model/ObjDistrict;

    invoke-virtual {v5, p1}, Lc/b/m/d/j$b;->F(Lcom/emsportal/model/ObjDistrict;)Lc/b/m/d/j$b;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {v5, v1}, Lc/b/m/d/j$b;->J(Ljava/lang/String;)Lc/b/m/d/j$b;

    :cond_d
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {v5, v3}, Lc/b/m/d/j$b;->V(Ljava/lang/String;)Lc/b/m/d/j$b;

    :cond_e
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {v5, v4}, Lc/b/m/d/j$b;->H(Ljava/lang/String;)Lc/b/m/d/j$b;

    .line 17
    :cond_f
    new-instance p1, Lc/b/m/d/j;

    invoke-direct {p1, v5}, Lc/b/m/d/j;-><init>(Lc/b/m/d/j$b;)V

    .line 18
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DATA_INVENTORY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class p1, Lcom/emsportal/express/activity/FreightActivity;

    const/16 v1, 0x7c9

    invoke-static {p0, p1, v1, v0}, Lb/u/a;->s0(Lb/b/k/h;Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto/16 :goto_8

    :cond_10
    iget-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->o:Landroid/widget/TextView;

    const-string v2, "DISTRICT"

    const/16 v3, 0x3bd

    const v4, 0x7f100263

    const-string v5, "PROVINCE"

    const-string v6, "FLAG_TARGET"

    if-ne p1, v0, :cond_12

    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-nez p1, :cond_11

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_11
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v6, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->u:Lcom/emsportal/model/ObjProvince;

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->v:Lcom/emsportal/model/ObjDistrict;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class v0, Lcom/emsportal/activity/SelectProvinceActivity;

    :goto_7
    invoke-static {p0, v0, p1}, Lb/u/a;->q0(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_8

    :cond_12
    iget-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->n:Landroid/widget/TextView;

    if-ne p1, v0, :cond_14

    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-nez p1, :cond_13

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_13
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/16 v0, 0x195

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->t:Lcom/emsportal/model/ObjProvince;

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class v0, Lcom/emsportal/activity/SelectProvinceActivity;

    const/16 v1, 0x277

    invoke-static {p0, v0, v1, p1}, Lb/u/a;->s0(Lb/b/k/h;Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_8

    :cond_14
    iget-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->p:Landroid/widget/TextView;

    if-ne p1, v0, :cond_17

    iget-object p1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->u:Lcom/emsportal/model/ObjProvince;

    if-nez p1, :cond_15

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_15
    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-nez p1, :cond_16

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_16
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v6, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->u:Lcom/emsportal/model/ObjProvince;

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->v:Lcom/emsportal/model/ObjDistrict;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class v0, Lcom/emsportal/activity/SelectDistrictActivity;

    goto :goto_7

    :cond_17
    :goto_8
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Lb/m/d/m;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "PROVINCE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/emsportal/model/ObjProvince;

    iput-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->u:Lcom/emsportal/model/ObjProvince;

    const-string v0, "DISTRICT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/emsportal/model/ObjDistrict;

    iput-object p1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->v:Lcom/emsportal/model/ObjDistrict;

    iget-object p1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->u:Lcom/emsportal/model/ObjProvince;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/emsportal/model/ObjProvince;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->r:Ljava/lang/String;

    iget-object p1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->u:Lcom/emsportal/model/ObjProvince;

    invoke-virtual {v0}, Lcom/emsportal/model/ObjProvince;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->v:Lcom/emsportal/model/ObjDistrict;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/emsportal/model/ObjDistrict;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->s:Ljava/lang/String;

    iget-object p1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->v:Lcom/emsportal/model/ObjDistrict;

    invoke-virtual {v0}, Lcom/emsportal/model/ObjDistrict;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 2

    iget-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->g:Landroid/widget/CheckBox;

    new-instance v1, Lcom/emsportal/express/activity/CalculateFreightActivity$a;

    invoke-direct {v1, p0}, Lcom/emsportal/express/activity/CalculateFreightActivity$a;-><init>(Lcom/emsportal/express/activity/CalculateFreightActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p0, v0}, Lb/u/a;->c(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public r()V
    .locals 1

    const v0, 0x7f100386

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    const v0, 0x7f0800de

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->c:Landroid/widget/EditText;

    const v0, 0x7f0800dd

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->d:Landroid/widget/EditText;

    const v0, 0x7f08011c

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->e:Landroid/widget/EditText;

    const v0, 0x7f0800f7

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/emsportal/widget/CurrencyEditText;

    iput-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->f:Lcom/emsportal/widget/CurrencyEditText;

    const v0, 0x7f08008d

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->g:Landroid/widget/CheckBox;

    const v0, 0x7f0800f5

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->h:Landroid/widget/EditText;

    const v0, 0x7f08011e

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->i:Landroid/widget/EditText;

    const v0, 0x7f0800f2

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->j:Landroid/widget/EditText;

    const v0, 0x7f080242

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->k:Landroid/view/ViewGroup;

    const v0, 0x7f08044a

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->m:Landroid/widget/TextView;

    const v0, 0x7f0803e5

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    const v0, 0x7f0803e4

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    const v0, 0x7f0803e2

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    const v0, 0x7f08022a

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0804b9

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->n:Landroid/widget/TextView;

    const v0, 0x7f0804b7

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f080475

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/CalculateFreightActivity;->p:Landroid/widget/TextView;

    return-void
.end method
