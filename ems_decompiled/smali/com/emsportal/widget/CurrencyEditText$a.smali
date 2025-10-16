.class public Lcom/emsportal/widget/CurrencyEditText$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/emsportal/widget/CurrencyEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/emsportal/widget/CurrencyEditText;


# direct methods
.method public constructor <init>(Lcom/emsportal/widget/CurrencyEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/widget/CurrencyEditText$a;->c:Lcom/emsportal/widget/CurrencyEditText;

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

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/emsportal/widget/CurrencyEditText$a;->c:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[^\\d]"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/emsportal/widget/CurrencyEditText$a;->c:Lcom/emsportal/widget/CurrencyEditText;

    .line 1
    iget-boolean p3, p2, Lcom/emsportal/widget/CurrencyEditText;->g:Z

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_1

    const/4 p4, 0x1

    goto :goto_0

    :catch_0
    move-exception p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    .line 2
    iget-object p1, p0, Lcom/emsportal/widget/CurrencyEditText$a;->c:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    goto :goto_2

    :cond_2
    :try_start_1
    iget-object p2, p0, Lcom/emsportal/widget/CurrencyEditText$a;->c:Lcom/emsportal/widget/CurrencyEditText;

    .line 3
    invoke-virtual {p2, p1}, Lcom/emsportal/widget/CurrencyEditText;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 4
    const-class p3, Lcom/emsportal/widget/CurrencyEditText$a;

    invoke-virtual {p2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    goto :goto_1

    :catch_2
    move-exception p2

    const-class p3, Lcom/emsportal/widget/CurrencyEditText$a;

    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    :goto_1
    iget-object p2, p0, Lcom/emsportal/widget/CurrencyEditText$a;->c:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0xe

    if-gt p2, p3, :cond_3

    iget-object p2, p0, Lcom/emsportal/widget/CurrencyEditText$a;->c:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/emsportal/widget/CurrencyEditText$a;->c:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setSelection(I)V

    :goto_2
    iget-object p1, p0, Lcom/emsportal/widget/CurrencyEditText$a;->c:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
