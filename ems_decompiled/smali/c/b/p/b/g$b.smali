.class public Lc/b/p/b/g$b;
.super Lcom/emsportal/base/BaseAdapter$BaseViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/p/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/widget/EditText;

.field public b:Landroid/widget/EditText;

.field public c:Landroid/widget/EditText;

.field public d:Landroid/widget/AutoCompleteTextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/AutoCompleteTextView;

.field public g:Landroid/widget/EditText;

.field public h:Landroid/widget/EditText;

.field public i:Landroid/widget/EditText;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Lc/b/p/b/b;

.field public final synthetic m:Lc/b/p/b/g;


# direct methods
.method public constructor <init>(Lc/b/p/b/g;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lc/b/p/b/g$b;->m:Lc/b/p/b/g;

    invoke-direct {p0, p1, p2}, Lcom/emsportal/base/BaseAdapter$BaseViewHolder;-><init>(Lcom/emsportal/base/BaseAdapter;Landroid/view/View;)V

    const v0, 0x7f0800f8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lc/b/p/b/g$b;->a:Landroid/widget/EditText;

    const v0, 0x7f08010b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lc/b/p/b/g$b;->f:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0800f7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lc/b/p/b/g$b;->b:Landroid/widget/EditText;

    const v0, 0x7f08010f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lc/b/p/b/g$b;->c:Landroid/widget/EditText;

    const v0, 0x7f08011a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lc/b/p/b/g$b;->g:Landroid/widget/EditText;

    const v0, 0x7f0800e9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lc/b/p/b/g$b;->h:Landroid/widget/EditText;

    const v0, 0x7f08011c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lc/b/p/b/g$b;->i:Landroid/widget/EditText;

    const v0, 0x7f0804d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/p/b/g$b;->j:Landroid/widget/TextView;

    const v0, 0x7f080076

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/p/b/g$b;->k:Landroid/widget/TextView;

    const v0, 0x7f080114

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lc/b/p/b/g$b;->d:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0804c6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lc/b/p/b/g$b;->e:Landroid/widget/TextView;

    iget-object p2, p0, Lc/b/p/b/g$b;->k:Landroid/widget/TextView;

    new-instance v0, Lc/b/p/b/g$b$a;

    invoke-direct {v0, p0, p1}, Lc/b/p/b/g$b$a;-><init>(Lc/b/p/b/g$b;Lc/b/p/b/g;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lc/b/p/b/g$b;->d:Landroid/widget/AutoCompleteTextView;

    new-instance v0, Lc/b/p/b/g$b$b;

    invoke-direct {v0, p0, p1}, Lc/b/p/b/g$b$b;-><init>(Lc/b/p/b/g$b;Lc/b/p/b/g;)V

    invoke-virtual {p2, v0}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lc/b/p/b/g$b;->e:Landroid/widget/TextView;

    new-instance v0, Lc/b/p/b/g$b$c;

    invoke-direct {v0, p0, p1}, Lc/b/p/b/g$b$c;-><init>(Lc/b/p/b/g$b;Lc/b/p/b/g;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1
    iget-object p2, p0, Lc/b/p/b/g$b;->a:Landroid/widget/EditText;

    new-instance v0, Lc/b/p/b/j;

    invoke-direct {v0, p0}, Lc/b/p/b/j;-><init>(Lc/b/p/b/g$b;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p0, Lc/b/p/b/g$b;->f:Landroid/widget/AutoCompleteTextView;

    new-instance v0, Lc/b/p/b/k;

    invoke-direct {v0, p0}, Lc/b/p/b/k;-><init>(Lc/b/p/b/g$b;)V

    invoke-virtual {p2, v0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p0, Lc/b/p/b/g$b;->b:Landroid/widget/EditText;

    new-instance v0, Lc/b/p/b/l;

    invoke-direct {v0, p0}, Lc/b/p/b/l;-><init>(Lc/b/p/b/g$b;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p0, Lc/b/p/b/g$b;->c:Landroid/widget/EditText;

    new-instance v0, Lc/b/p/b/m;

    invoke-direct {v0, p0}, Lc/b/p/b/m;-><init>(Lc/b/p/b/g$b;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p0, Lc/b/p/b/g$b;->g:Landroid/widget/EditText;

    new-instance v0, Lc/b/p/b/n;

    invoke-direct {v0, p0}, Lc/b/p/b/n;-><init>(Lc/b/p/b/g$b;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p0, Lc/b/p/b/g$b;->h:Landroid/widget/EditText;

    new-instance v0, Lc/b/p/b/o;

    invoke-direct {v0, p0}, Lc/b/p/b/o;-><init>(Lc/b/p/b/g$b;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p0, Lc/b/p/b/g$b;->i:Landroid/widget/EditText;

    new-instance v0, Lc/b/p/b/h;

    invoke-direct {v0, p0}, Lc/b/p/b/h;-><init>(Lc/b/p/b/g$b;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2
    new-instance p2, Lc/b/p/b/b;

    .line 3
    iget-object p1, p1, Lc/b/p/b/g;->b:Landroid/content/Context;

    .line 4
    invoke-direct {p2, p1}, Lc/b/p/b/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lc/b/p/b/g$b;->l:Lc/b/p/b/b;

    iget-object p1, p0, Lc/b/p/b/g$b;->f:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lc/b/p/b/g$b;->f:Landroid/widget/AutoCompleteTextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object p1, p0, Lc/b/p/b/g$b;->f:Landroid/widget/AutoCompleteTextView;

    new-instance p2, Lc/b/p/b/i;

    invoke-direct {p2, p0}, Lc/b/p/b/i;-><init>(Lc/b/p/b/g$b;)V

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 9

    iget-object v0, p0, Lc/b/p/b/g$b;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez p2, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    check-cast p1, Lc/b/p/e/j;

    const/4 v0, 0x1

    add-int/2addr p2, v0

    iget-object v3, p0, Lc/b/p/b/g$b;->j:Landroid/widget/TextView;

    iget-object v4, p0, Lc/b/p/b/g$b;->m:Lc/b/p/b/g;

    .line 1
    iget-object v4, v4, Lc/b/p/b/g;->b:Landroid/content/Context;

    const v5, 0x7f100350

    .line 2
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lc/b/p/e/j;->E(Ljava/lang/String;)V

    invoke-virtual {p1}, Lc/b/p/e/j;->p()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lc/b/p/e/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lc/b/p/e/j;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lc/b/p/e/j;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lc/b/p/e/j;->r()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lc/b/p/e/j;->w()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lc/b/p/e/j;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lc/b/p/e/j;->x()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, ""

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iget-object v8, p0, Lc/b/p/b/g$b;->a:Landroid/widget/EditText;

    invoke-virtual {v8, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lc/b/p/b/g$b;->d:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p2, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lc/b/p/b/g$b;->f:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p2, v3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lc/b/p/b/g$b;->b:Landroid/widget/EditText;

    invoke-virtual {p2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lc/b/p/b/g$b;->c:Landroid/widget/EditText;

    invoke-virtual {p2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lc/b/p/b/g$b;->g:Landroid/widget/EditText;

    invoke-virtual {p2, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lc/b/p/b/g$b;->h:Landroid/widget/EditText;

    invoke-virtual {p2, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lc/b/p/b/g$b;->i:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lc/b/p/b/g$b;->m:Lc/b/p/b/g;

    .line 3
    iget-boolean p1, p1, Lc/b/p/b/g;->a:Z

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    .line 4
    :goto_2
    iget-object p1, p0, Lc/b/p/b/g$b;->b:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    return-void
.end method
