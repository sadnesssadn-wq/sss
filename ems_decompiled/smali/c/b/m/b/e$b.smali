.class public Lc/b/m/b/e$b;
.super Lcom/emsportal/base/BaseAdapter$BaseViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/m/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/view/ViewGroup;

.field public h:Landroid/view/ViewGroup;

.field public i:Landroid/view/ViewGroup;

.field public j:Landroid/view/ViewGroup;

.field public k:Landroid/widget/TextView;

.field public l:Lcom/google/android/material/button/MaterialButton;

.field public m:Lcom/google/android/material/button/MaterialButton;

.field public n:Landroid/widget/FrameLayout$LayoutParams;

.field public final synthetic o:Lc/b/m/b/e;


# direct methods
.method public constructor <init>(Lc/b/m/b/e;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lc/b/m/b/e$b;->o:Lc/b/m/b/e;

    invoke-direct {p0, p1, p2}, Lcom/emsportal/base/BaseAdapter$BaseViewHolder;-><init>(Lcom/emsportal/base/BaseAdapter;Landroid/view/View;)V

    const v0, 0x7f08022a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lc/b/m/b/e$b;->i:Landroid/view/ViewGroup;

    const v0, 0x7f080454

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/m/b/e$b;->b:Landroid/widget/TextView;

    const v0, 0x7f0804c9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/m/b/e$b;->c:Landroid/widget/TextView;

    const v0, 0x7f080494

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/m/b/e$b;->d:Landroid/widget/TextView;

    const v0, 0x7f080445

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/m/b/e$b;->a:Landroid/widget/TextView;

    const v0, 0x7f080493

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/m/b/e$b;->e:Landroid/widget/TextView;

    const v0, 0x7f080082

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lc/b/m/b/e$b;->g:Landroid/view/ViewGroup;

    const v0, 0x7f08048d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/m/b/e$b;->f:Landroid/widget/TextView;

    const v0, 0x7f080076

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lc/b/m/b/e$b;->l:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f080073

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lc/b/m/b/e$b;->m:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f08022c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lc/b/m/b/e$b;->h:Landroid/view/ViewGroup;

    const v0, 0x7f08025e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lc/b/m/b/e$b;->j:Landroid/view/ViewGroup;

    const v0, 0x7f0804ca

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/m/b/e$b;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lc/b/m/b/e$b;->c:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lc/b/m/b/e$b;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lc/b/m/b/e$b;->n:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lc/b/m/b/e$b;->l:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lc/b/m/b/e$b$a;

    invoke-direct {v1, p0, p1, p2}, Lc/b/m/b/e$b$a;-><init>(Lc/b/m/b/e$b;Lc/b/m/b/e;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lc/b/m/b/e$b;->g:Landroid/view/ViewGroup;

    new-instance v1, Lc/b/m/b/e$b$b;

    invoke-direct {v1, p0, p1}, Lc/b/m/b/e$b$b;-><init>(Lc/b/m/b/e$b;Lc/b/m/b/e;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lc/b/m/b/e$b;->m:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lc/b/m/b/e$b$c;

    invoke-direct {v1, p0, p1, p2}, Lc/b/m/b/e$b$c;-><init>(Lc/b/m/b/e$b;Lc/b/m/b/e;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 7

    check-cast p1, Lc/b/m/d/f;

    invoke-virtual {p1}, Lc/b/m/d/f;->A()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    iget-object v5, p0, Lc/b/m/b/e$b;->l:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    :cond_1
    iget-object v2, p0, Lc/b/m/b/e$b;->m:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_2

    const/16 v0, 0x8

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lc/b/m/b/e$b;->h:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lc/b/m/b/e$b;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/m/d/f;->I()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lc/b/m/b/e$b;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/m/d/f;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lc/b/m/b/e$b;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lc/b/m/d/f;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lc/b/m/d/f;->E()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lc/b/m/b/e$b;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/m/d/f;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lc/b/m/b/e$b;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/m/d/f;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lc/b/m/d/f;->i()Lc/b/m/d/k;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lc/b/m/b/e$b;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/m/d/k;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Lb/u/a;->i(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {p1}, Lc/b/m/d/f;->l()I

    move-result v0

    iget-object v2, p0, Lc/b/m/b/e$b;->o:Lc/b/m/b/e;

    .line 1
    iget-object v2, v2, Lcom/emsportal/base/BaseAdapter;->context:Landroid/content/Context;

    .line 2
    invoke-static {v2, v0}, Lb/u/a;->x(Landroid/content/Context;I)I

    move-result v0

    iget-object v2, p0, Lc/b/m/b/e$b;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    invoke-virtual {p1}, Lc/b/m/d/f;->w()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ""

    :cond_4
    invoke-virtual {p1}, Lc/b/m/d/f;->v()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lc/b/m/b/e$b;->j:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lc/b/m/b/e$b;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_6

    const-string v0, "A"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f050041

    goto :goto_3

    :cond_6
    const v0, 0x7f050042

    :goto_3
    if-eqz p1, :cond_7

    const-string v1, "C"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const v0, 0x7f050097

    :cond_7
    iget-object p1, p0, Lc/b/m/b/e$b;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object p1, p0, Lc/b/m/b/e$b;->o:Lc/b/m/b/e;

    .line 3
    iget-object p1, p1, Lcom/emsportal/base/BaseAdapter;->listDatas:Ljava/util/List;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    if-ne p2, p1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_9

    iget-object p1, p0, Lc/b/m/b/e$b;->o:Lc/b/m/b/e;

    .line 5
    iget-object p1, p1, Lcom/emsportal/base/BaseAdapter;->context:Landroid/content/Context;

    const/high16 p2, 0x41400000    # 12.0f

    .line 6
    invoke-static {p1, p2}, Lb/u/a;->g(Landroid/content/Context;F)I

    move-result v4

    :cond_9
    iget-object p1, p0, Lc/b/m/b/e$b;->n:Landroid/widget/FrameLayout$LayoutParams;

    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object p2, p0, Lc/b/m/b/e$b;->i:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
