.class public Lc/b/m/a/b/d/b/e/a;
.super Lc/c/b/a/c/h;
.source ""


# instance fields
.field public final f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc/c/b/a/c/h;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f08045a

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/m/a/b/d/b/e/a;->f:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(Lc/c/b/a/d/o;Lc/c/b/a/f/d;)V
    .locals 2

    instance-of v0, p1, Lc/c/b/a/d/c;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lc/c/b/a/d/g;->a()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " b\u01b0u g\u1eedi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/b/m/a/b/d/b/e/a;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/b/m/a/b/d/b/e/a;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/c/b/a/d/g;->a()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lb/u/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-super {p0, p1, p2}, Lc/c/b/a/c/h;->a(Lc/c/b/a/d/o;Lc/c/b/a/f/d;)V

    return-void
.end method

.method public getOffset()Lc/c/b/a/k/e;
    .locals 3

    new-instance v0, Lc/c/b/a/k/e;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lc/c/b/a/k/e;-><init>(FF)V

    return-object v0
.end method
