.class public Lcom/emsportal/widget/CurrencyEditText;
.super Landroid/widget/EditText;
.source ""


# instance fields
.field public c:C

.field public d:C

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Z

.field public h:I

.field public i:C

.field public j:C

.field public k:Ljava/util/Locale;

.field public l:Ljava/text/DecimalFormat;

.field public m:Ljava/lang/String;

.field public n:I

.field public o:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const-string v0, "-"

    const-string v1, ""

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v2, "vn"

    iput-object v2, p0, Lcom/emsportal/widget/CurrencyEditText;->e:Ljava/lang/String;

    new-instance v2, Lcom/emsportal/widget/CurrencyEditText$a;

    invoke-direct {v2, p0}, Lcom/emsportal/widget/CurrencyEditText$a;-><init>(Lcom/emsportal/widget/CurrencyEditText;)V

    iput-object v2, p0, Lcom/emsportal/widget/CurrencyEditText;->o:Landroid/text/TextWatcher;

    const/16 v2, 0x2002

    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v2, Lc/b/g;->currencyEditText:[I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    iput-char p2, p0, Lcom/emsportal/widget/CurrencyEditText;->c:C

    iput-char p2, p0, Lcom/emsportal/widget/CurrencyEditText;->i:C

    :cond_0
    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    iput-char p2, p0, Lcom/emsportal/widget/CurrencyEditText;->d:C

    iput-char p2, p0, Lcom/emsportal/widget/CurrencyEditText;->j:C

    :cond_1
    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/emsportal/widget/CurrencyEditText;->getDefaultLocale()Ljava/util/Locale;

    move-result-object p2

    iput-object p2, p0, Lcom/emsportal/widget/CurrencyEditText;->k:Ljava/util/Locale;

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/emsportal/widget/CurrencyEditText;->e:Ljava/lang/String;

    :goto_0
    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/emsportal/widget/CurrencyEditText;->f:Z

    :cond_3
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/emsportal/widget/CurrencyEditText;->g:Z

    :cond_4
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/emsportal/widget/CurrencyEditText;->h:I

    iput v2, p0, Lcom/emsportal/widget/CurrencyEditText;->n:I

    :cond_5
    iget-object v2, p0, Lcom/emsportal/widget/CurrencyEditText;->e:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/emsportal/widget/CurrencyEditText;->getDefaultLocale()Ljava/util/Locale;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lcom/emsportal/widget/CurrencyEditText;->k:Ljava/util/Locale;

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/emsportal/widget/CurrencyEditText;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "_"

    if-eqz v2, :cond_7

    :try_start_1
    iget-object v2, p0, Lcom/emsportal/widget/CurrencyEditText;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/widget/CurrencyEditText;->e:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lcom/emsportal/widget/CurrencyEditText;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-le v2, p2, :cond_8

    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object p2, v0, p2

    invoke-direct {v1, v2, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/emsportal/widget/CurrencyEditText;->k:Ljava/util/Locale;

    goto :goto_2

    :cond_8
    new-instance p2, Ljava/util/Locale;

    iget-object v0, p0, Lcom/emsportal/widget/CurrencyEditText;->e:Ljava/lang/String;

    invoke-direct {p2, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Lcom/emsportal/widget/CurrencyEditText;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/emsportal/widget/CurrencyEditText;->o:Landroid/text/TextWatcher;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method

.method private getDefaultLocale()Ljava/util/Locale;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    iget-boolean v0, p0, Lcom/emsportal/widget/CurrencyEditText;->f:Z

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/emsportal/widget/CurrencyEditText;->l:Ljava/text/DecimalFormat;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iget p1, p0, Lcom/emsportal/widget/CurrencyEditText;->n:I

    int-to-double v5, p1

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    div-double/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/emsportal/widget/CurrencyEditText;->l:Ljava/text/DecimalFormat;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iget p1, p0, Lcom/emsportal/widget/CurrencyEditText;->n:I

    int-to-double v5, p1

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    div-double/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/emsportal/widget/CurrencyEditText;->m:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    :try_start_0
    iget v1, p0, Lcom/emsportal/widget/CurrencyEditText;->n:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/emsportal/widget/CurrencyEditText;->k:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Currency;->getDefaultFractionDigits()I

    move-result v1

    iput v1, p0, Lcom/emsportal/widget/CurrencyEditText;->n:I

    :cond_0
    iget-object v1, p0, Lcom/emsportal/widget/CurrencyEditText;->k:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    iget-char v2, p0, Lcom/emsportal/widget/CurrencyEditText;->c:C

    if-lez v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    :cond_1
    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v2

    iput-char v2, p0, Lcom/emsportal/widget/CurrencyEditText;->i:C

    iget-char v2, p0, Lcom/emsportal/widget/CurrencyEditText;->d:C

    if-lez v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    :cond_2
    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v2

    iput-char v2, p0, Lcom/emsportal/widget/CurrencyEditText;->j:C

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/emsportal/widget/CurrencyEditText;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/emsportal/widget/CurrencyEditText;->k:Ljava/util/Locale;

    invoke-static {v2}, Ljava/text/DecimalFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    check-cast v2, Ljava/text/DecimalFormat;

    new-instance v3, Ljava/text/DecimalFormat;

    invoke-virtual {v2}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v3, p0, Lcom/emsportal/widget/CurrencyEditText;->l:Ljava/text/DecimalFormat;

    iget v1, p0, Lcom/emsportal/widget/CurrencyEditText;->h:I

    if-lez v1, :cond_3

    invoke-virtual {v3, v1}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    invoke-direct {p0}, Lcom/emsportal/widget/CurrencyEditText;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/emsportal/widget/CurrencyEditText;->k:Ljava/util/Locale;

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final c()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/emsportal/widget/CurrencyEditText;->b()V

    return-void

    :cond_0
    iget-char v1, p0, Lcom/emsportal/widget/CurrencyEditText;->i:C

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iget-char v1, p0, Lcom/emsportal/widget/CurrencyEditText;->j:C

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/emsportal/widget/CurrencyEditText;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/emsportal/widget/CurrencyEditText;->b()V

    invoke-virtual {p0, v0}, Lcom/emsportal/widget/CurrencyEditText;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/emsportal/widget/CurrencyEditText;->o:Landroid/text/TextWatcher;

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/emsportal/widget/CurrencyEditText;->o:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public getCurrencyDouble()D
    .locals 6

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-char v1, p0, Lcom/emsportal/widget/CurrencyEditText;->i:C

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iget-char v1, p0, Lcom/emsportal/widget/CurrencyEditText;->j:C

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/emsportal/widget/CurrencyEditText;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1
    iget-boolean v1, p0, Lcom/emsportal/widget/CurrencyEditText;->f:Z

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/emsportal/widget/CurrencyEditText;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget v2, p0, Lcom/emsportal/widget/CurrencyEditText;->n:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getCurrencyText()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/emsportal/widget/CurrencyEditText;->f:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/emsportal/widget/CurrencyEditText;->m:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFractionDigit()I
    .locals 1

    iget v0, p0, Lcom/emsportal/widget/CurrencyEditText;->n:I

    return v0
.end method

.method public getGroupDivider()C
    .locals 1

    iget-char v0, p0, Lcom/emsportal/widget/CurrencyEditText;->i:C

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/emsportal/widget/CurrencyEditText;->k:Ljava/util/Locale;

    return-object v0
.end method

.method public getMonetaryDivider()C
    .locals 1

    iget-char v0, p0, Lcom/emsportal/widget/CurrencyEditText;->j:C

    return v0
.end method

.method public setDecimals(I)V
    .locals 0

    iput p1, p0, Lcom/emsportal/widget/CurrencyEditText;->h:I

    iput p1, p0, Lcom/emsportal/widget/CurrencyEditText;->n:I

    invoke-virtual {p0}, Lcom/emsportal/widget/CurrencyEditText;->c()V

    return-void
.end method

.method public setGroupDivider(C)V
    .locals 0

    iput-char p1, p0, Lcom/emsportal/widget/CurrencyEditText;->c:C

    invoke-virtual {p0}, Lcom/emsportal/widget/CurrencyEditText;->c()V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/widget/CurrencyEditText;->k:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/emsportal/widget/CurrencyEditText;->c()V

    return-void
.end method

.method public setMonetaryDivider(C)V
    .locals 0

    iput-char p1, p0, Lcom/emsportal/widget/CurrencyEditText;->d:C

    invoke-virtual {p0}, Lcom/emsportal/widget/CurrencyEditText;->c()V

    return-void
.end method
