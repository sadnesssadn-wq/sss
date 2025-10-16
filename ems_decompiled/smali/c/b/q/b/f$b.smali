.class public Lc/b/q/b/f$b;
.super Lcom/emsportal/base/BaseAdapter$BaseViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/q/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Lc/b/q/b/b;

.field public b:Landroid/widget/EditText;

.field public c:Landroid/widget/EditText;

.field public d:Landroid/widget/EditText;

.field public e:Landroid/widget/EditText;

.field public f:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Lcom/google/android/material/button/MaterialButton;

.field public j:Lcom/google/android/material/button/MaterialButton;

.field public final synthetic k:Lc/b/q/b/f;


# direct methods
.method public constructor <init>(Lc/b/q/b/f;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lc/b/q/b/f$b;->k:Lc/b/q/b/f;

    invoke-direct {p0, p1, p2}, Lcom/emsportal/base/BaseAdapter$BaseViewHolder;-><init>(Lcom/emsportal/base/BaseAdapter;Landroid/view/View;)V

    const v0, 0x7f0800f8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lc/b/q/b/f$b;->b:Landroid/widget/EditText;

    const v0, 0x7f08010b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    iput-object v0, p0, Lc/b/q/b/f$b;->f:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    const v0, 0x7f080114

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lc/b/q/b/f$b;->c:Landroid/widget/EditText;

    const v0, 0x7f0800f7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lc/b/q/b/f$b;->d:Landroid/widget/EditText;

    const v0, 0x7f0800f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lc/b/q/b/f$b;->e:Landroid/widget/EditText;

    const v0, 0x7f0804d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/q/b/f$b;->g:Landroid/widget/TextView;

    const v0, 0x7f080076

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/q/b/f$b;->h:Landroid/widget/TextView;

    const v0, 0x7f08007f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lc/b/q/b/f$b;->i:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f08007d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lc/b/q/b/f$b;->j:Lcom/google/android/material/button/MaterialButton;

    .line 1
    new-instance p2, Lc/b/q/b/b;

    .line 2
    iget-object v0, p1, Lcom/emsportal/base/BaseAdapter;->context:Landroid/content/Context;

    .line 3
    invoke-direct {p2, v0}, Lc/b/q/b/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lc/b/q/b/f$b;->a:Lc/b/q/b/b;

    iget-object v0, p0, Lc/b/q/b/f$b;->f:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {v0, p2}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p2, p0, Lc/b/q/b/f$b;->f:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object p2, p0, Lc/b/q/b/f$b;->f:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    new-instance v0, Lc/b/q/b/g;

    invoke-direct {v0, p0}, Lc/b/q/b/g;-><init>(Lc/b/q/b/f$b;)V

    invoke-virtual {p2, v0}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4
    iget-object p2, p0, Lc/b/q/b/f$b;->j:Lcom/google/android/material/button/MaterialButton;

    new-instance v0, Lc/b/q/b/f$b$a;

    invoke-direct {v0, p0, p1}, Lc/b/q/b/f$b$a;-><init>(Lc/b/q/b/f$b;Lc/b/q/b/f;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lc/b/q/b/f$b;->i:Lcom/google/android/material/button/MaterialButton;

    new-instance v0, Lc/b/q/b/f$b$b;

    invoke-direct {v0, p0, p1}, Lc/b/q/b/f$b$b;-><init>(Lc/b/q/b/f$b;Lc/b/q/b/f;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lc/b/q/b/f$b;->h:Landroid/widget/TextView;

    new-instance v0, Lc/b/q/b/f$b$c;

    invoke-direct {v0, p0, p1}, Lc/b/q/b/f$b$c;-><init>(Lc/b/q/b/f$b;Lc/b/q/b/f;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lc/b/q/b/f$b;->b:Landroid/widget/EditText;

    new-instance v0, Lc/b/q/b/f$b$d;

    invoke-direct {v0, p0, p1}, Lc/b/q/b/f$b$d;-><init>(Lc/b/q/b/f$b;Lc/b/q/b/f;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p0, Lc/b/q/b/f$b;->f:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    new-instance v0, Lc/b/q/b/f$b$e;

    invoke-direct {v0, p0, p1}, Lc/b/q/b/f$b$e;-><init>(Lc/b/q/b/f$b;Lc/b/q/b/f;)V

    invoke-virtual {p2, v0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p0, Lc/b/q/b/f$b;->c:Landroid/widget/EditText;

    new-instance v0, Lc/b/q/b/f$b$f;

    invoke-direct {v0, p0, p1}, Lc/b/q/b/f$b$f;-><init>(Lc/b/q/b/f$b;Lc/b/q/b/f;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p0, Lc/b/q/b/f$b;->d:Landroid/widget/EditText;

    new-instance v0, Lc/b/q/b/f$b$g;

    invoke-direct {v0, p0, p1}, Lc/b/q/b/f$b$g;-><init>(Lc/b/q/b/f$b;Lc/b/q/b/f;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p0, Lc/b/q/b/f$b;->e:Landroid/widget/EditText;

    new-instance v0, Lc/b/q/b/f$b$h;

    invoke-direct {v0, p0, p1}, Lc/b/q/b/f$b$h;-><init>(Lc/b/q/b/f$b;Lc/b/q/b/f;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 6

    const/16 v0, 0x8

    const/4 v1, 0x0

    iget-object v2, p0, Lc/b/q/b/f$b;->h:Landroid/widget/TextView;

    if-nez p2, :cond_0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    check-cast p1, Lc/b/q/d/d;

    const/4 v2, 0x1

    add-int/2addr p2, v2

    iget-object v3, p0, Lc/b/q/b/f$b;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lc/b/q/b/f$b;->k:Lc/b/q/b/f;

    .line 1
    iget-object v4, v4, Lcom/emsportal/base/BaseAdapter;->context:Landroid/content/Context;

    const v5, 0x7f100350

    .line 2
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lc/b/q/b/f$b;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Lc/b/q/d/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lc/b/q/b/f$b;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Lc/b/q/d/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lc/b/q/b/f$b;->f:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {p1}, Lc/b/q/d/d;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lc/b/q/b/f$b;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Lc/b/q/d/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lc/b/q/b/f$b;->e:Landroid/widget/EditText;

    invoke-virtual {p1}, Lc/b/q/d/d;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lc/b/q/b/f$b;->k:Lc/b/q/b/f;

    .line 3
    iget-boolean p1, p1, Lc/b/q/b/f;->a:Z

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 4
    :cond_1
    iget-object p1, p0, Lc/b/q/b/f$b;->d:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    return-void
.end method
