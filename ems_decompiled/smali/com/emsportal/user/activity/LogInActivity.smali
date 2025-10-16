.class public Lcom/emsportal/user/activity/LogInActivity;
.super Lb/b/k/h;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lc/b/t/b$e;


# static fields
.field public static final synthetic n:I


# instance fields
.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/EditText;

.field public i:Landroid/widget/EditText;

.field public j:Lcom/emsportal/user/activity/LogInActivity;

.field public k:Landroid/widget/ProgressBar;

.field public l:Lc/b/m/d/r;

.field public m:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/b/k/h;-><init>()V

    new-instance v0, Lcom/emsportal/user/activity/LogInActivity$a;

    invoke-direct {v0, p0}, Lcom/emsportal/user/activity/LogInActivity$a;-><init>(Lcom/emsportal/user/activity/LogInActivity;)V

    return-void
.end method


# virtual methods
.method public j()V
    .locals 2

    iget-object v0, p0, Lcom/emsportal/user/activity/LogInActivity;->k:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lcom/emsportal/user/activity/LogInActivity;->k:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public final n()V
    .locals 4

    const-string v0, "permissionReadPhoneStateStatus"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/user/activity/LogInActivity;->m:Landroid/content/SharedPreferences;

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lb/i/f/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0, v0}, Lb/i/e/a;->g(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/emsportal/user/activity/LogInActivity;->p()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/emsportal/user/activity/LogInActivity;->m:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1000ac

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f1002bf

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lc/b/v/a/t;

    invoke-direct {v2, p0}, Lc/b/v/a/t;-><init>(Lcom/emsportal/user/activity/LogInActivity;)V

    const v3, 0x7f1000ab

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lc/b/v/a/u;

    invoke-direct {v2, p0}, Lc/b/v/a/u;-><init>(Lcom/emsportal/user/activity/LogInActivity;)V

    const v3, 0x7f10004c

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 2
    :cond_1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1ae

    invoke-static {p0, v1, v2}, Lb/i/e/a;->f(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    iget-object v1, p0, Lcom/emsportal/user/activity/LogInActivity;->m:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/emsportal/user/activity/LogInActivity;->o()V

    :goto_1
    return-void
.end method

.method public final o()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/emsportal/user/activity/LogInActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/emsportal/user/activity/LogInActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const v0, 0x7f10024d

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3
    iget-object v0, p0, Lcom/emsportal/user/activity/LogInActivity;->h:Landroid/widget/EditText;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f1002a7

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5
    iget-object v0, p0, Lcom/emsportal/user/activity/LogInActivity;->i:Landroid/widget/EditText;

    :goto_0
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    .line 6
    iget-object v0, p0, Lcom/emsportal/user/activity/LogInActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/emsportal/user/activity/LogInActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Lc/b/v/a/q;

    invoke-direct {v2, p0}, Lc/b/v/a/q;-><init>(Lcom/emsportal/user/activity/LogInActivity;)V

    .line 8
    sget v4, Lc/b/s/a;->d:I

    const-string v4, "username"

    const-string v5, "password"

    invoke-static {v4, v0, v5, v1}, Lc/a/a/a/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lc/b/k/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v4, "device_token"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "device_name"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "device_model"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v1, Lcom/emsportal/AppController;->c:Lcom/emsportal/AppController;

    .line 10
    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lb/u/a;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "device_ime"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_type"

    const-string v4, "android"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "http://ws.ems.com.vn/auth/login"

    invoke-static {v1, v0, v3, v2}, Lc/b/t/b;->d(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    :cond_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lb/m/d/m;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x7b

    if-ne p1, v0, :cond_0

    const/16 v0, 0xd6

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    :try_start_0
    const-string v0, "KEY_PHONE_OR_EMAIL"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/emsportal/user/activity/LogInActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    const-string p1, "com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "(^[0-9]{8})"

    .line 1
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 2
    :goto_0
    iget-object p2, p0, Lcom/emsportal/user/activity/LogInActivity;->i:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/emsportal/user/activity/LogInActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f100263

    if-ne p1, v0, :cond_1

    invoke-static {}, Lb/u/a;->M()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/emsportal/user/activity/LogInActivity;->j:Lcom/emsportal/user/activity/LogInActivity;

    invoke-static {p1, v1}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/emsportal/user/activity/LogInActivity;->n()V

    :cond_1
    iget-object v0, p0, Lcom/emsportal/user/activity/LogInActivity;->e:Landroid/widget/TextView;

    const/4 v2, 0x1

    if-ne p1, v0, :cond_5

    const/4 v0, 0x0

    const-string v3, "permissionReadPhoneStateStatus"

    .line 1
    invoke-virtual {p0, v3, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/emsportal/user/activity/LogInActivity;->m:Landroid/content/SharedPreferences;

    const-string v3, "android.permission.CALL_PHONE"

    invoke-static {p0, v3}, Lb/i/f/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p0, v3}, Lb/i/e/a;->g(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/emsportal/user/activity/LogInActivity;->q()V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/emsportal/user/activity/LogInActivity;->m:Landroid/content/SharedPreferences;

    invoke-interface {v4, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f1000ac

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f1002a9

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lc/b/v/a/r;

    invoke-direct {v4, p0}, Lc/b/v/a/r;-><init>(Lcom/emsportal/user/activity/LogInActivity;)V

    const v5, 0x7f1000ab

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lc/b/v/a/s;

    invoke-direct {v4, p0}, Lc/b/v/a/s;-><init>(Lcom/emsportal/user/activity/LogInActivity;)V

    const v5, 0x7f10004b

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 3
    :cond_3
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x3dd

    invoke-static {p0, v0, v4}, Lb/i/e/a;->f(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    iget-object v0, p0, Lcom/emsportal/user/activity/LogInActivity;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :cond_4
    const-string v0, "1900545433"

    invoke-static {p0, v0}, Lb/u/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/emsportal/user/activity/LogInActivity;->f:Landroid/widget/TextView;

    if-ne p1, v0, :cond_6

    .line 5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b00af

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const v4, 0x7f08007c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f080078

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0800ea

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v6, Lc/b/v/a/n;

    invoke-direct {v6, p0, v0}, Lc/b/v/a/n;-><init>(Lcom/emsportal/user/activity/LogInActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lc/b/v/a/o;

    invoke-direct {v4, p0, v3, v0}, Lc/b/v/a/o;-><init>(Lcom/emsportal/user/activity/LogInActivity;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    :cond_6
    iget-object v0, p0, Lcom/emsportal/user/activity/LogInActivity;->g:Landroid/widget/TextView;

    if-ne p1, v0, :cond_8

    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-nez p1, :cond_7

    .line 7
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 8
    :cond_7
    const-class p1, Lcom/emsportal/user/activity/RegisterActivity;

    const/16 v0, 0x7b

    invoke-static {p0, p1, v0}, Lb/u/a;->r0(Lb/b/k/h;Ljava/lang/Class;I)V

    :cond_8
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lb/m/d/m;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b003f

    invoke-virtual {p0, p1}, Lb/b/k/h;->setContentView(I)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    new-instance v0, Lc/b/w/c;

    invoke-direct {v0, p0, p1}, Lc/b/w/c;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "OBJ_NOTIFICATION"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc/b/m/d/r;

    iput-object p1, p0, Lcom/emsportal/user/activity/LogInActivity;->l:Lc/b/m/d/r;

    .line 4
    :cond_0
    iput-object p0, p0, Lcom/emsportal/user/activity/LogInActivity;->j:Lcom/emsportal/user/activity/LogInActivity;

    const p1, 0x7f08048a

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/emsportal/user/activity/LogInActivity;->c:Landroid/widget/TextView;

    const p1, 0x7f0800db

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/emsportal/user/activity/LogInActivity;->h:Landroid/widget/EditText;

    const p1, 0x7f08010a

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/emsportal/user/activity/LogInActivity;->i:Landroid/widget/EditText;

    const p1, 0x7f0804ef

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/emsportal/user/activity/LogInActivity;->d:Landroid/widget/TextView;

    const p1, 0x7f0801fa

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/emsportal/user/activity/LogInActivity;->k:Landroid/widget/ProgressBar;

    const p1, 0x7f080459

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/emsportal/user/activity/LogInActivity;->e:Landroid/widget/TextView;

    const p1, 0x7f08047e

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/emsportal/user/activity/LogInActivity;->f:Landroid/widget/TextView;

    const p1, 0x7f0804bf

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/emsportal/user/activity/LogInActivity;->g:Landroid/widget/TextView;

    .line 5
    iget-object p1, p0, Lcom/emsportal/user/activity/LogInActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/emsportal/user/activity/LogInActivity;->i:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p1, p0, Lcom/emsportal/user/activity/LogInActivity;->d:Landroid/widget/TextView;

    const-string v0, "version 2.3.0"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/emsportal/user/activity/LogInActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/emsportal/user/activity/LogInActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/emsportal/user/activity/LogInActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/emsportal/user/activity/LogInActivity;->e:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    iget-object p1, p0, Lcom/emsportal/user/activity/LogInActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    iget-object p1, p0, Lcom/emsportal/user/activity/LogInActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 6
    invoke-static {}, Lc/b/t/b;->b()Lc/b/t/b;

    move-result-object p1

    .line 7
    iput-object p0, p1, Lc/b/t/b;->a:Lc/b/t/b$e;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lb/b/k/h;->onDestroy()V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/emsportal/user/activity/LogInActivity;->n()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/emsportal/user/activity/LogInActivity;->j:Lcom/emsportal/user/activity/LogInActivity;

    const p2, 0x7f100263

    invoke-static {p1, p2}, Lb/u/a;->n0(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lb/m/d/m;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "OBJ_NOTIFICATION"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/b/m/d/r;

    iput-object v0, p0, Lcom/emsportal/user/activity/LogInActivity;->l:Lc/b/m/d/r;

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "KEY_OTP"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "KEY_PHONE_OR_EMAIL"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/emsportal/user/activity/LogInActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/emsportal/user/activity/LogInActivity;->n()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/emsportal/user/activity/LogInActivity;->j:Lcom/emsportal/user/activity/LogInActivity;

    const v0, 0x7f100263

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lb/m/d/m;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 v0, 0x1ae

    if-ne p1, v0, :cond_2

    const-string p1, "android.permission.READ_PHONE_STATE"

    invoke-static {p2, p3, p1}, Lb/u/a;->N([Ljava/lang/String;[ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p0, p1}, Lb/i/e/a;->g(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/emsportal/user/activity/LogInActivity;->p()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/emsportal/user/activity/LogInActivity;->o()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x3dd

    if-ne p1, v0, :cond_4

    const-string p1, "android.permission.CALL_PHONE"

    invoke-static {p2, p3, p1}, Lb/u/a;->N([Ljava/lang/String;[ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {p0, p1}, Lb/i/e/a;->g(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/emsportal/user/activity/LogInActivity;->q()V

    goto :goto_0

    :cond_3
    const-string p1, "1900545433"

    invoke-static {p0, p1}, Lb/u/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final p()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1000ac

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f100336

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/emsportal/user/activity/LogInActivity$b;

    invoke-direct {v1, p0}, Lcom/emsportal/user/activity/LogInActivity$b;-><init>(Lcom/emsportal/user/activity/LogInActivity;)V

    const v2, 0x7f1000ab

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/emsportal/user/activity/LogInActivity$c;

    invoke-direct {v1, p0}, Lcom/emsportal/user/activity/LogInActivity$c;-><init>(Lcom/emsportal/user/activity/LogInActivity;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public final q()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1000ad

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f100332

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/emsportal/user/activity/LogInActivity$d;

    invoke-direct {v1, p0}, Lcom/emsportal/user/activity/LogInActivity$d;-><init>(Lcom/emsportal/user/activity/LogInActivity;)V

    const v2, 0x7f1000ab

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/emsportal/user/activity/LogInActivity$e;

    invoke-direct {v1, p0}, Lcom/emsportal/user/activity/LogInActivity$e;-><init>(Lcom/emsportal/user/activity/LogInActivity;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
