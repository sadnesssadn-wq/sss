.class public Lc/b/m/e/b/a$b;
.super Lcom/emsportal/base/BaseAdapter$BaseViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/m/e/b/a;
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

.field public g:Lcom/google/android/material/button/MaterialButton;

.field public final synthetic h:Lc/b/m/e/b/a;


# direct methods
.method public constructor <init>(Lc/b/m/e/b/a;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lc/b/m/e/b/a$b;->h:Lc/b/m/e/b/a;

    invoke-direct {p0, p1, p2}, Lcom/emsportal/base/BaseAdapter$BaseViewHolder;-><init>(Lcom/emsportal/base/BaseAdapter;Landroid/view/View;)V

    const v0, 0x7f080454

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/m/e/b/a$b;->b:Landroid/widget/TextView;

    const v0, 0x7f0804c9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/m/e/b/a$b;->c:Landroid/widget/TextView;

    const v0, 0x7f080494

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/m/e/b/a$b;->d:Landroid/widget/TextView;

    const v0, 0x7f080445

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/m/e/b/a$b;->a:Landroid/widget/TextView;

    const v0, 0x7f080493

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/m/e/b/a$b;->e:Landroid/widget/TextView;

    const v0, 0x7f08048d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/m/e/b/a$b;->f:Landroid/widget/TextView;

    const v0, 0x7f080076

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lc/b/m/e/b/a$b;->g:Lcom/google/android/material/button/MaterialButton;

    iget-object v0, p0, Lc/b/m/e/b/a$b;->c:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lc/b/m/e/b/a$b;->g:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lc/b/m/e/b/a$b$a;

    invoke-direct {v1, p0, p1, p2}, Lc/b/m/e/b/a$b$a;-><init>(Lc/b/m/e/b/a$b;Lc/b/m/e/b/a;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 7

    check-cast p1, Lc/b/m/e/d/c;

    invoke-virtual {p1}, Lc/b/m/e/d/c;->a()Lc/b/m/e/d/a;

    move-result-object p2

    invoke-virtual {p1}, Lc/b/m/e/d/c;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "created"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc/b/m/e/b/a$b;->g:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lc/b/m/e/b/a$b;->g:Lcom/google/android/material/button/MaterialButton;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    iget-object v2, p0, Lc/b/m/e/b/a$b;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/m/e/d/c;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lc/b/m/e/b/a$b;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/m/e/d/c;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lc/b/m/e/b/a$b;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lc/b/m/e/d/a;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lc/b/m/e/d/a;->v()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lc/b/m/e/d/a;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lc/b/m/e/d/a;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lc/b/m/e/d/a;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lc/b/m/e/b/a$b;->a:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lc/b/m/e/b/a$b;->e:Landroid/widget/TextView;

    invoke-virtual {p2}, Lc/b/m/e/d/a;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lc/b/m/e/d/a;->l()D

    move-result-wide p1

    iget-object v2, p0, Lc/b/m/e/b/a$b;->f:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lb/u/a;->i(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lc/b/m/e/b/a$b;->h:Lc/b/m/e/b/a;

    .line 1
    iget-object p1, p1, Lcom/emsportal/base/BaseAdapter;->context:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v2, -0x1

    const v4, -0x7ff16059

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq p2, v4, :cond_5

    const v3, -0x7577b67

    if-eq p2, v3, :cond_3

    const v3, 0x3d4e7ee8

    if-eq p2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    goto :goto_2

    :cond_3
    const-string p2, "canceled"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const-string p2, "accepted"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    :goto_1
    const/4 v3, -0x1

    :cond_6
    :goto_2
    const p2, 0x7f05008e

    if-eqz v3, :cond_8

    if-eq v3, v6, :cond_7

    goto :goto_3

    :cond_7
    const p2, 0x7f05008d

    goto :goto_3

    :cond_8
    const p2, 0x7f05008c

    .line 3
    :goto_3
    invoke-static {p1, p2}, Lb/i/f/a;->b(Landroid/content/Context;I)I

    move-result p1

    .line 4
    iget-object p2, p0, Lc/b/m/e/b/a$b;->c:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    return-void
.end method
