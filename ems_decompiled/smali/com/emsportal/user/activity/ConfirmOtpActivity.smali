.class public Lcom/emsportal/user/activity/ConfirmOtpActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""


# instance fields
.field public c:Landroid/widget/EditText;

.field public d:Landroid/widget/EditText;

.field public e:Landroid/widget/EditText;

.field public f:Landroid/widget/EditText;

.field public g:Landroid/widget/EditText;

.field public h:Landroid/widget/EditText;

.field public i:Landroid/widget/EditText;

.field public j:Landroid/widget/EditText;

.field public k:Landroid/widget/TextView;

.field public l:Ljava/lang/String;

.field public final m:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    new-instance v0, Lcom/emsportal/user/activity/ConfirmOtpActivity$a;

    invoke-direct {v0, p0}, Lcom/emsportal/user/activity/ConfirmOtpActivity$a;-><init>(Lcom/emsportal/user/activity/ConfirmOtpActivity;)V

    iput-object v0, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->m:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b0024

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lb/m/d/m;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    const/4 p1, -0x1

    if-ne p2, p1, :cond_9

    :try_start_0
    const-string p1, "com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const-string p3, "([0-9]{8})"

    .line 1
    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p3, :cond_9

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-ne v1, p2, :cond_2

    iget-object v3, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-ne v1, v0, :cond_3

    iget-object v3, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    iget-object v3, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    const/4 v3, 0x4

    if-ne v1, v3, :cond_5

    iget-object v3, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    const/4 v3, 0x5

    if-ne v1, v3, :cond_6

    iget-object v3, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    const/4 v3, 0x6

    if-ne v1, v3, :cond_7

    iget-object v3, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    const/4 v3, 0x7

    if-ne v1, v3, :cond_8

    iget-object v3, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->k:Landroid/widget/TextView;

    if-ne v0, p1, :cond_9

    .line 1
    iget-object p1, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->c:Landroid/widget/EditText;

    invoke-static {p1}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->d:Landroid/widget/EditText;

    invoke-static {v0}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->e:Landroid/widget/EditText;

    invoke-static {v1}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->f:Landroid/widget/EditText;

    invoke-static {v2}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->g:Landroid/widget/EditText;

    invoke-static {v3}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->h:Landroid/widget/EditText;

    invoke-static {v4}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->i:Landroid/widget/EditText;

    invoke-static {v5}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->j:Landroid/widget/EditText;

    invoke-static {v6}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz p1, :cond_0

    const p1, 0x7f1002a0

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 3
    iget-object p1, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->c:Landroid/widget/EditText;

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f1002a4

    .line 4
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 5
    iget-object p1, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->d:Landroid/widget/EditText;

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f1002a3

    .line 6
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 7
    iget-object p1, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->e:Landroid/widget/EditText;

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f10029f

    .line 8
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 9
    iget-object p1, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->f:Landroid/widget/EditText;

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f10029e

    .line 10
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 11
    iget-object p1, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->g:Landroid/widget/EditText;

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f1002a2

    .line 12
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 13
    iget-object p1, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->h:Landroid/widget/EditText;

    goto :goto_0

    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x7f1002a1

    .line 14
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 15
    iget-object p1, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->i:Landroid/widget/EditText;

    goto :goto_0

    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    const p1, 0x7f10029d

    .line 16
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 17
    iget-object p1, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->j:Landroid/widget/EditText;

    :goto_0
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    :cond_7
    const/4 v7, 0x1

    :goto_1
    if-nez v7, :cond_8

    return-void

    .line 18
    :cond_8
    iget-object p1, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->c:Landroid/widget/EditText;

    invoke-static {p1}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->d:Landroid/widget/EditText;

    invoke-static {v0}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->e:Landroid/widget/EditText;

    invoke-static {v1}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->f:Landroid/widget/EditText;

    invoke-static {v2}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->g:Landroid/widget/EditText;

    invoke-static {v3}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->h:Landroid/widget/EditText;

    invoke-static {v4}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->i:Landroid/widget/EditText;

    invoke-static {v5}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->j:Landroid/widget/EditText;

    invoke-static {v6}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v4, v5, v6}, Lc/a/a/a/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->l:Ljava/lang/String;

    .line 19
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "KEY_PHONE_OR_EMAIL"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KEY_OTP"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class p1, Lcom/emsportal/user/activity/LogInActivity;

    invoke-static {p0, p1, v1}, Lb/u/a;->q0(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_9
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/emsportal/base/BaseNavigationActivity;->onDestroy()V

    iget-object v0, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 4

    const v0, 0x7f10038b

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    iget-object v0, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "KEY_PHONE_OR_EMAIL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->l:Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->m:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    const-string v3, "com.google.android.gms.auth.api.phone.permission.SEND"

    invoke-virtual {p0, v1, v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1
    iget-object v0, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->c:Landroid/widget/EditText;

    new-instance v1, Lc/b/v/a/c;

    invoke-direct {v1, p0}, Lc/b/v/a/c;-><init>(Lcom/emsportal/user/activity/ConfirmOtpActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->d:Landroid/widget/EditText;

    new-instance v1, Lc/b/v/a/d;

    invoke-direct {v1, p0}, Lc/b/v/a/d;-><init>(Lcom/emsportal/user/activity/ConfirmOtpActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->e:Landroid/widget/EditText;

    new-instance v1, Lc/b/v/a/e;

    invoke-direct {v1, p0}, Lc/b/v/a/e;-><init>(Lcom/emsportal/user/activity/ConfirmOtpActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->f:Landroid/widget/EditText;

    new-instance v1, Lc/b/v/a/f;

    invoke-direct {v1, p0}, Lc/b/v/a/f;-><init>(Lcom/emsportal/user/activity/ConfirmOtpActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->g:Landroid/widget/EditText;

    new-instance v1, Lc/b/v/a/g;

    invoke-direct {v1, p0}, Lc/b/v/a/g;-><init>(Lcom/emsportal/user/activity/ConfirmOtpActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->h:Landroid/widget/EditText;

    new-instance v1, Lc/b/v/a/h;

    invoke-direct {v1, p0}, Lc/b/v/a/h;-><init>(Lcom/emsportal/user/activity/ConfirmOtpActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->i:Landroid/widget/EditText;

    new-instance v1, Lc/b/v/a/i;

    invoke-direct {v1, p0}, Lc/b/v/a/i;-><init>(Lcom/emsportal/user/activity/ConfirmOtpActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public r()V
    .locals 1

    const v0, 0x7f080103

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->c:Landroid/widget/EditText;

    const v0, 0x7f080107

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->d:Landroid/widget/EditText;

    const v0, 0x7f080106

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->e:Landroid/widget/EditText;

    const v0, 0x7f080102

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->f:Landroid/widget/EditText;

    const v0, 0x7f080101

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->g:Landroid/widget/EditText;

    const v0, 0x7f080105

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->h:Landroid/widget/EditText;

    const v0, 0x7f080104

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->i:Landroid/widget/EditText;

    const v0, 0x7f080100

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->j:Landroid/widget/EditText;

    const v0, 0x7f080457

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/user/activity/ConfirmOtpActivity;->k:Landroid/widget/TextView;

    return-void
.end method
