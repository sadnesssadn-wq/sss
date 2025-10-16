.class public Lc/b/v/a/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic c:Lcom/emsportal/user/activity/ConfirmOtpActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/user/activity/ConfirmOtpActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/v/a/f;->c:Lcom/emsportal/user/activity/ConfirmOtpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lc/b/v/a/f;->c:Lcom/emsportal/user/activity/ConfirmOtpActivity;

    .line 1
    iget-object p1, p1, Lcom/emsportal/user/activity/ConfirmOtpActivity;->g:Landroid/widget/EditText;

    .line 2
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method
