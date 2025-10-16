.class public Lc/b/m/b/k$a;
.super Lcom/emsportal/base/BaseAdapter$BaseViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/m/b/k;
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

.field public e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lc/b/m/b/k;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/emsportal/base/BaseAdapter$BaseViewHolder;-><init>(Lcom/emsportal/base/BaseAdapter;Landroid/view/View;)V

    iput-object p2, p0, Lc/b/m/b/k$a;->e:Landroid/view/View;

    const p1, 0x7f0804d1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/m/b/k$a;->a:Landroid/widget/TextView;

    const p1, 0x7f0804db

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/m/b/k$a;->b:Landroid/widget/TextView;

    const p1, 0x7f0804d6

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/m/b/k$a;->c:Landroid/widget/TextView;

    const p1, 0x7f0804a1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/m/b/k$a;->d:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 2

    check-cast p1, Lc/b/m/d/w;

    invoke-virtual {p1}, Lc/b/m/d/w;->f()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ALL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lc/b/m/b/k$a;->a:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p2, p0, Lc/b/m/b/k$a;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lc/b/m/b/k$a;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050277

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lc/b/m/b/k$a;->a:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p2, p0, Lc/b/m/b/k$a;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lc/b/m/b/k$a;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050041

    .line 1
    :goto_0
    invoke-static {v0, v1}, Lb/i/f/a;->b(Landroid/content/Context;I)I

    move-result v0

    .line 2
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lc/b/m/b/k$a;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/m/d/w;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lc/b/m/b/k$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/m/d/w;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/u/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lc/b/m/b/k$a;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/m/d/w;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/u/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lc/b/m/b/k$a;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/m/d/w;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
