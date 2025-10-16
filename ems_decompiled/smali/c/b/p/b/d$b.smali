.class public Lc/b/p/b/d$b;
.super Lcom/emsportal/base/BaseAdapter$BaseViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/p/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# static fields
.field public static final synthetic k:I


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/Button;

.field public f:Landroid/widget/Button;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public final synthetic j:Lc/b/p/b/d;


# direct methods
.method public constructor <init>(Lc/b/p/b/d;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lc/b/p/b/d$b;->j:Lc/b/p/b/d;

    invoke-direct {p0, p1, p2}, Lcom/emsportal/base/BaseAdapter$BaseViewHolder;-><init>(Lcom/emsportal/base/BaseAdapter;Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080454

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/p/b/d$b;->a:Landroid/widget/TextView;

    const v0, 0x7f0804c9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/p/b/d$b;->b:Landroid/widget/TextView;

    const v0, 0x7f0804ae

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f080464

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/p/b/d$b;->c:Landroid/widget/TextView;

    const v0, 0x7f0804c5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/p/b/d$b;->d:Landroid/widget/TextView;

    const v0, 0x7f08019a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lc/b/p/b/d$b;->e:Landroid/widget/Button;

    const v0, 0x7f0804be

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/p/b/d$b;->g:Landroid/widget/TextView;

    const v0, 0x7f0804bc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/p/b/d$b;->h:Landroid/widget/TextView;

    const v0, 0x7f08048d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/p/b/d$b;->i:Landroid/widget/TextView;

    const v0, 0x7f08007b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lc/b/p/b/d$b;->f:Landroid/widget/Button;

    iget-object v0, p0, Lc/b/p/b/d$b;->b:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lc/b/p/b/d$b;->e:Landroid/widget/Button;

    new-instance v1, Lc/b/p/b/d$b$a;

    invoke-direct {v1, p0, p1, p2}, Lc/b/p/b/d$b$a;-><init>(Lc/b/p/b/d$b;Lc/b/p/b/d;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lc/b/p/b/d$b;->d:Landroid/widget/TextView;

    new-instance v0, Lc/b/p/b/d$b$b;

    invoke-direct {v0, p0, p1}, Lc/b/p/b/d$b$b;-><init>(Lc/b/p/b/d$b;Lc/b/p/b/d;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lc/b/p/b/d$b;->f:Landroid/widget/Button;

    new-instance v0, Lc/b/p/b/d$b$c;

    invoke-direct {v0, p0, p1}, Lc/b/p/b/d$b$c;-><init>(Lc/b/p/b/d$b;Lc/b/p/b/d;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 9

    check-cast p1, Lc/b/p/e/b;

    invoke-virtual {p1}, Lc/b/p/e/b;->f()Lc/b/p/e/g;

    move-result-object p2

    invoke-virtual {p1}, Lc/b/p/e/b;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lc/b/p/e/g;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lc/b/p/e/b;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lc/b/p/e/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lc/b/p/e/g;->a()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/b/p/e/c;

    invoke-virtual {p2}, Lc/b/p/e/c;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lc/b/p/e/c;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lc/b/p/e/c;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lc/b/p/e/c;->n()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lb/u/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v7, " - "

    invoke-static {v4, v7, v5}, Lc/a/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lc/b/p/b/d$b;->g:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lc/b/p/b/d$b;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lc/b/p/b/d$b;->i:Landroid/widget/TextView;

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1
    sget-object p2, Lc/b/p/b/d;->b:Ljava/util/List;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lc/b/p/b/d$b;->e:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lc/b/p/b/d$b;->e:Landroid/widget/Button;

    const v5, 0x7f10004b

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    iget-object v4, p0, Lc/b/p/b/d$b;->e:Landroid/widget/Button;

    iget-object v5, p0, Lc/b/p/b/d$b;->j:Lc/b/p/b/d;

    .line 3
    iget-object v5, v5, Lcom/emsportal/base/BaseAdapter;->context:Landroid/content/Context;

    const v6, 0x7f070084

    .line 4
    invoke-static {v5, v6}, Lb/i/f/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 5
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    :cond_1
    sget-object v4, Lc/b/p/b/d;->c:Ljava/util/List;

    .line 7
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lc/b/p/b/d$b;->e:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v5, p0, Lc/b/p/b/d$b;->e:Landroid/widget/Button;

    const v6, 0x7f100351

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    iget-object v5, p0, Lc/b/p/b/d$b;->e:Landroid/widget/Button;

    iget-object v6, p0, Lc/b/p/b/d$b;->j:Lc/b/p/b/d;

    .line 8
    iget-object v6, v6, Lcom/emsportal/base/BaseAdapter;->context:Landroid/content/Context;

    const v7, 0x7f070081

    .line 9
    invoke-static {v6, v7}, Lb/i/f/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 10
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/16 v5, 0x8

    if-nez p2, :cond_3

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lc/b/p/b/d$b;->e:Landroid/widget/Button;

    invoke-virtual {p2, v5}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    iget-object p2, p0, Lc/b/p/b/d$b;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lc/b/p/b/d$b;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lc/b/p/b/d$b;->c:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lc/b/p/b/d$b;->j:Lc/b/p/b/d;

    .line 11
    iget-object p1, p1, Lcom/emsportal/base/BaseAdapter;->context:Landroid/content/Context;

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/16 v1, 0x58

    const/4 v2, 0x7

    const/4 v4, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x3

    if-eq p2, v1, :cond_10

    const/16 v1, 0x622

    if-eq p2, v1, :cond_e

    const v1, 0xd176

    if-eq p2, v1, :cond_c

    const v1, 0xdd19

    if-eq p2, v1, :cond_a

    const/16 v1, 0xad9

    if-eq p2, v1, :cond_8

    const/16 v1, 0xada

    if-eq p2, v1, :cond_6

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string p2, "6"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    goto :goto_1

    :pswitch_1
    const-string p2, "5"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    goto :goto_1

    :pswitch_2
    const-string p2, "4"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    goto :goto_0

    :cond_6
    const-string p2, "X2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x6

    goto :goto_1

    :cond_8
    const-string p2, "X1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x5

    goto :goto_1

    :cond_a
    const-string p2, "999"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_0

    :cond_b
    const/16 v3, 0x8

    goto :goto_1

    :cond_c
    const-string p2, "666"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto :goto_0

    :cond_d
    const/4 v3, 0x7

    goto :goto_1

    :cond_e
    const-string p2, "13"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    goto :goto_0

    :cond_f
    const/4 v3, 0x4

    goto :goto_1

    :cond_10
    const-string p2, "X"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    :goto_0
    const/4 v3, -0x1

    goto :goto_1

    :cond_11
    const/4 v3, 0x3

    :cond_12
    :goto_1
    const p2, 0x7f05008e

    if-eqz v3, :cond_17

    if-eq v3, v7, :cond_16

    if-eq v3, v6, :cond_15

    if-eq v3, v8, :cond_14

    if-eq v3, v4, :cond_17

    if-eq v3, v2, :cond_15

    if-eq v3, v5, :cond_13

    goto :goto_2

    :cond_13
    const p2, 0x7f050087

    goto :goto_2

    :cond_14
    const p2, 0x7f050093

    goto :goto_2

    :cond_15
    const p2, 0x7f050263

    goto :goto_2

    :cond_16
    const p2, 0x7f050084

    goto :goto_2

    :cond_17
    const p2, 0x7f05003f

    .line 13
    :goto_2
    invoke-static {p1, p2}, Lb/i/f/a;->b(Landroid/content/Context;I)I

    move-result p1

    .line 14
    iget-object p2, p0, Lc/b/p/b/d$b;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
