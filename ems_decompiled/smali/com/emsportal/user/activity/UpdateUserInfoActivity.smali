.class public Lcom/emsportal/user/activity/UpdateUserInfoActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""


# instance fields
.field public c:Landroid/widget/EditText;

.field public d:Landroid/widget/EditText;

.field public e:Landroid/widget/Switch;

.field public f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b0055

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/emsportal/user/activity/UpdateUserInfoActivity;->f:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/emsportal/user/activity/UpdateUserInfoActivity;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/emsportal/user/activity/UpdateUserInfoActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const p1, 0x7f100290

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 2
    iget-object p1, p0, Lcom/emsportal/user/activity/UpdateUserInfoActivity;->c:Landroid/widget/EditText;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const p1, 0x7f1002b0

    .line 3
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 4
    iget-object p1, p0, Lcom/emsportal/user/activity/UpdateUserInfoActivity;->d:Landroid/widget/EditText;

    :goto_0
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/emsportal/user/activity/UpdateUserInfoActivity;->e:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    .line 5
    new-instance v1, Lc/b/v/a/w;

    invoke-direct {v1, p0, p1, v0}, Lc/b/v/a/w;-><init>(Lcom/emsportal/user/activity/UpdateUserInfoActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget v3, Lc/b/s/a;->d:I

    const-string v3, "fullname"

    const-string v4, "phone"

    invoke-static {v3, p1, v4, v0}, Lc/a/a/a/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "http://ws.ems.com.vn/api/v1/merchants/update"

    invoke-static {v0, p1, v2, v1}, Lc/b/t/b;->d(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    :cond_2
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 4

    iget-object v0, p0, Lcom/emsportal/user/activity/UpdateUserInfoActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1
    invoke-static {}, Lb/u/a;->H()Lc/b/v/c/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lc/b/k/a;->b()Lc/b/k/a;

    move-result-object v1

    iget-object v1, v1, Lc/b/k/a;->a:Lc/b/k/e;

    invoke-virtual {v0}, Lc/b/v/c/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/b/k/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lc/d/c/e;

    invoke-direct {v2}, Lc/d/c/e;-><init>()V

    invoke-virtual {v2}, Lc/d/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lc/b/v/c/a;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b/v/c/a;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/emsportal/user/activity/UpdateUserInfoActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Lc/b/v/c/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/user/activity/UpdateUserInfoActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Lc/b/v/c/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/emsportal/user/activity/UpdateUserInfoActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Lc/b/v/c/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/user/activity/UpdateUserInfoActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Lc/b/v/c/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public r()V
    .locals 1

    const v0, 0x7f0800f8

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/user/activity/UpdateUserInfoActivity;->c:Landroid/widget/EditText;

    const v0, 0x7f08010b

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/user/activity/UpdateUserInfoActivity;->d:Landroid/widget/EditText;

    const v0, 0x7f080400

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/emsportal/user/activity/UpdateUserInfoActivity;->e:Landroid/widget/Switch;

    const v0, 0x7f0804e8

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/user/activity/UpdateUserInfoActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f1003b8

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    return-void
.end method
