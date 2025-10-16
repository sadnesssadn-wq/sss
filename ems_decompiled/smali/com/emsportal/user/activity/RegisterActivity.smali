.class public Lcom/emsportal/user/activity/RegisterActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""


# static fields
.field public static final synthetic f:I


# instance fields
.field public c:Landroid/widget/EditText;

.field public d:Lcom/google/android/material/button/MaterialButton;

.field public e:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b0046

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/emsportal/user/activity/RegisterActivity;->d:Lcom/google/android/material/button/MaterialButton;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/emsportal/user/activity/RegisterActivity;->v()V

    :cond_0
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 2

    iget-object v0, p0, Lcom/emsportal/user/activity/RegisterActivity;->e:Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Lb/u/a;->c(Landroid/app/Activity;Landroid/view/View;)V

    iget-object v0, p0, Lcom/emsportal/user/activity/RegisterActivity;->d:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1003a7

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    iget-object v0, p0, Lcom/emsportal/user/activity/RegisterActivity;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/emsportal/user/activity/RegisterActivity$a;

    invoke-direct {v1, p0}, Lcom/emsportal/user/activity/RegisterActivity$a;-><init>(Lcom/emsportal/user/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public r()V
    .locals 1

    const v0, 0x7f08022a

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/user/activity/RegisterActivity;->e:Landroid/view/ViewGroup;

    const v0, 0x7f08010b

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/user/activity/RegisterActivity;->c:Landroid/widget/EditText;

    const v0, 0x7f080081

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/emsportal/user/activity/RegisterActivity;->d:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f08016c

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-void
.end method

.method public final v()V
    .locals 5

    invoke-static {}, Lb/u/a;->M()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const v0, 0x7f100263

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/emsportal/user/activity/RegisterActivity;->c:Landroid/widget/EditText;

    invoke-static {v0}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lb/u/a;->L(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f1002ab

    .line 4
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_2

    .line 5
    new-instance v2, Lc/b/v/a/v;

    invoke-direct {v2, p0, v0}, Lc/b/v/a/v;-><init>(Lcom/emsportal/user/activity/RegisterActivity;Ljava/lang/String;)V

    .line 6
    sget v3, Lc/b/s/a;->d:I

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "account"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "http://ws.ems.com.vn/rc/send-confirmation-code"

    invoke-static {v0, v3, v1, v2}, Lc/b/t/b;->d(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    :cond_2
    return-void
.end method
