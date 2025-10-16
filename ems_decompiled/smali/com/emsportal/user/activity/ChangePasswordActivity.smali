.class public Lcom/emsportal/user/activity/ChangePasswordActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""


# instance fields
.field public c:Landroid/widget/EditText;

.field public d:Landroid/widget/EditText;

.field public e:Landroid/widget/EditText;

.field public f:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b0020

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/emsportal/user/activity/ChangePasswordActivity;->f:Lcom/google/android/material/button/MaterialButton;

    if-ne p1, v0, :cond_6

    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const p1, 0x7f100263

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/emsportal/user/activity/ChangePasswordActivity;->c:Landroid/widget/EditText;

    invoke-static {p1}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/emsportal/user/activity/ChangePasswordActivity;->d:Landroid/widget/EditText;

    invoke-static {v1}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/emsportal/user/activity/ChangePasswordActivity;->e:Landroid/widget/EditText;

    invoke-static {v2}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lb/u/a;->L(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const p1, 0x7f1002a5

    .line 3
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 4
    iget-object p1, p0, Lcom/emsportal/user/activity/ChangePasswordActivity;->c:Landroid/widget/EditText;

    goto :goto_2

    :cond_1
    invoke-static {v1}, Lb/u/a;->L(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const p1, 0x7f100292

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f100291

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 6
    iget-object p1, p0, Lcom/emsportal/user/activity/ChangePasswordActivity;->d:Landroid/widget/EditText;

    goto :goto_2

    :cond_3
    invoke-static {v2}, Lb/u/a;->L(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f100261

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const p1, 0x7f100260

    .line 7
    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 8
    iget-object p1, p0, Lcom/emsportal/user/activity/ChangePasswordActivity;->e:Landroid/widget/EditText;

    :goto_2
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_3

    :cond_5
    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_6

    .line 9
    iget-object p1, p0, Lcom/emsportal/user/activity/ChangePasswordActivity;->c:Landroid/widget/EditText;

    invoke-static {p1}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/emsportal/user/activity/ChangePasswordActivity;->d:Landroid/widget/EditText;

    invoke-static {v1}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/emsportal/user/activity/ChangePasswordActivity;->e:Landroid/widget/EditText;

    invoke-static {v2}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v2

    .line 10
    new-instance v3, Lc/b/v/a/b;

    invoke-direct {v3, p0}, Lc/b/v/a/b;-><init>(Lcom/emsportal/user/activity/ChangePasswordActivity;)V

    .line 11
    sget v4, Lc/b/s/a;->d:I

    const-string v4, "oldpass"

    const-string v5, "newpass"

    invoke-static {v4, p1, v5, v1}, Lc/a/a/a/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const-string v1, "againpass"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "http://ws.ems.com.vn/api/v1/merchants/update/password"

    invoke-static {v1, p1, v0, v3}, Lc/b/t/b;->d(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    :cond_6
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Lcom/emsportal/user/activity/ChangePasswordActivity;->f:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public r()V
    .locals 1

    const v0, 0x7f080108

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/user/activity/ChangePasswordActivity;->c:Landroid/widget/EditText;

    const v0, 0x7f0800fe

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/user/activity/ChangePasswordActivity;->d:Landroid/widget/EditText;

    const v0, 0x7f0800e2

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/user/activity/ChangePasswordActivity;->e:Landroid/widget/EditText;

    const v0, 0x7f080086

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/emsportal/user/activity/ChangePasswordActivity;->f:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f100388

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    return-void
.end method
