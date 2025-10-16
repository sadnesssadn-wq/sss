.class public Lc/b/r/b/f$a;
.super Lcom/emsportal/base/BaseAdapter$BaseViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/r/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/view/ViewGroup;

.field public i:Landroid/view/ViewGroup;

.field public j:Lcom/google/android/material/button/MaterialButton;

.field public k:Lcom/google/android/material/button/MaterialButton;

.field public l:Landroid/widget/FrameLayout$LayoutParams;

.field public final synthetic m:Lc/b/r/b/f;


# direct methods
.method public constructor <init>(Lc/b/r/b/f;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lc/b/r/b/f$a;->m:Lc/b/r/b/f;

    invoke-direct {p0, p1, p2}, Lcom/emsportal/base/BaseAdapter$BaseViewHolder;-><init>(Lcom/emsportal/base/BaseAdapter;Landroid/view/View;)V

    const v0, 0x7f080454

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/r/b/f$a;->b:Landroid/widget/TextView;

    const v0, 0x7f0804c9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/r/b/f$a;->c:Landroid/widget/TextView;

    const v0, 0x7f080494

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/r/b/f$a;->d:Landroid/widget/TextView;

    const v0, 0x7f080445

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/r/b/f$a;->a:Landroid/widget/TextView;

    const v0, 0x7f08048d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/r/b/f$a;->e:Landroid/widget/TextView;

    const v0, 0x7f080076

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lc/b/r/b/f$a;->j:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f080073

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lc/b/r/b/f$a;->k:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f08022c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lc/b/r/b/f$a;->h:Landroid/view/ViewGroup;

    const v0, 0x7f080453

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/r/b/f$a;->f:Landroid/widget/TextView;

    const v0, 0x7f080174

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/r/b/f$a;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lc/b/r/b/f$a;->c:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const v0, 0x7f08022a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lc/b/r/b/f$a;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lc/b/r/b/f$a;->l:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lc/b/r/b/f$a;->j:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lc/b/r/b/f$a$a;

    invoke-direct {v1, p0, p1, p2}, Lc/b/r/b/f$a$a;-><init>(Lc/b/r/b/f$a;Lc/b/r/b/f;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lc/b/r/b/f$a;->k:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lc/b/r/b/f$a$b;

    invoke-direct {v1, p0, p1, p2}, Lc/b/r/b/f$a$b;-><init>(Lc/b/r/b/f$a;Lc/b/r/b/f;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 7

    check-cast p1, Lc/b/r/c/e;

    .line 1
    iget-object v0, p1, Lc/b/r/c/e;->z:Ljava/lang/String;

    const-string v1, "X"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x4

    const-string v4, "XX"

    const-string v5, "X1"

    const/4 v6, 0x0

    if-nez v2, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lc/b/r/b/f$a;->j:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lc/b/r/b/f$a;->j:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lc/b/r/b/f$a;->k:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lc/b/r/b/f$a;->k:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x8

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lc/b/r/b/f$a;->h:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p1}, Lc/b/r/c/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lc/b/r/b/f$a;->g:Landroid/widget/TextView;

    const v2, 0x7f10016a

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lc/b/r/b/f$a;->g:Landroid/widget/TextView;

    const v2, 0x7f100166

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lc/b/r/b/f$a;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lc/b/r/b/f$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/r/c/e;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lc/b/r/b/f$a;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/r/c/e;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lc/b/r/c/e;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lc/b/r/c/e;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/b/r/b/f$a;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lc/b/r/c/e;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lc/b/r/c/e;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lc/b/r/c/e;->C()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/b/r/b/f$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lc/b/r/b/f$a;->e:Landroid/widget/TextView;

    const-string v1, "0 usd"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lc/b/r/c/e;->n()I

    move-result p1

    iget-object v0, p0, Lc/b/r/b/f$a;->m:Lc/b/r/b/f;

    .line 3
    iget-object v0, v0, Lcom/emsportal/base/BaseAdapter;->context:Landroid/content/Context;

    .line 4
    invoke-static {v0, p1}, Lb/u/a;->x(Landroid/content/Context;I)I

    move-result p1

    iget-object v0, p0, Lc/b/r/b/f$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object p1, p0, Lc/b/r/b/f$a;->m:Lc/b/r/b/f;

    .line 5
    iget-object p1, p1, Lcom/emsportal/base/BaseAdapter;->listDatas:Ljava/util/List;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    if-ne p2, p1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_6

    iget-object p1, p0, Lc/b/r/b/f$a;->m:Lc/b/r/b/f;

    .line 7
    iget-object p1, p1, Lcom/emsportal/base/BaseAdapter;->context:Landroid/content/Context;

    const/high16 p2, 0x41400000    # 12.0f

    .line 8
    invoke-static {p1, p2}, Lb/u/a;->g(Landroid/content/Context;F)I

    move-result v6

    :cond_6
    iget-object p1, p0, Lc/b/r/b/f$a;->l:Landroid/widget/FrameLayout$LayoutParams;

    iput v6, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object p2, p0, Lc/b/r/b/f$a;->i:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
