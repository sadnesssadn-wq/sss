.class public Lb/i/m/c0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/i/m/c0$a;,
        Lb/i/m/c0$d;,
        Lb/i/m/c0$c;,
        Lb/i/m/c0$b;,
        Lb/i/m/c0$e;,
        Lb/i/m/c0$j;,
        Lb/i/m/c0$i;,
        Lb/i/m/c0$h;,
        Lb/i/m/c0$g;,
        Lb/i/m/c0$f;,
        Lb/i/m/c0$k;
    }
.end annotation


# static fields
.field public static final b:Lb/i/m/c0;


# instance fields
.field public final a:Lb/i/m/c0$k;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, Lb/i/m/c0$j;->o:Lb/i/m/c0;

    goto :goto_0

    :cond_0
    sget-object v0, Lb/i/m/c0$k;->b:Lb/i/m/c0;

    :goto_0
    sput-object v0, Lb/i/m/c0;->b:Lb/i/m/c0;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Lb/i/m/c0$j;

    invoke-direct {v0, p0, p1}, Lb/i/m/c0$j;-><init>(Lb/i/m/c0;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, Lb/i/m/c0$i;

    invoke-direct {v0, p0, p1}, Lb/i/m/c0$i;-><init>(Lb/i/m/c0;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    new-instance v0, Lb/i/m/c0$h;

    invoke-direct {v0, p0, p1}, Lb/i/m/c0$h;-><init>(Lb/i/m/c0;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    new-instance v0, Lb/i/m/c0$g;

    invoke-direct {v0, p0, p1}, Lb/i/m/c0$g;-><init>(Lb/i/m/c0;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x14

    if-lt v0, v1, :cond_4

    new-instance v0, Lb/i/m/c0$f;

    invoke-direct {v0, p0, p1}, Lb/i/m/c0$f;-><init>(Lb/i/m/c0;Landroid/view/WindowInsets;)V

    :goto_0
    iput-object v0, p0, Lb/i/m/c0;->a:Lb/i/m/c0$k;

    goto :goto_1

    :cond_4
    new-instance p1, Lb/i/m/c0$k;

    invoke-direct {p1, p0}, Lb/i/m/c0$k;-><init>(Lb/i/m/c0;)V

    iput-object p1, p0, Lb/i/m/c0;->a:Lb/i/m/c0$k;

    :goto_1
    return-void
.end method

.method public constructor <init>(Lb/i/m/c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lb/i/m/c0$k;

    invoke-direct {p1, p0}, Lb/i/m/c0$k;-><init>(Lb/i/m/c0;)V

    iput-object p1, p0, Lb/i/m/c0;->a:Lb/i/m/c0$k;

    return-void
.end method

.method public static f(Lb/i/g/b;IIII)Lb/i/g/b;
    .locals 5

    iget v0, p0, Lb/i/g/b;->a:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lb/i/g/b;->b:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lb/i/g/b;->c:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lb/i/g/b;->d:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, v2, v3, v1}, Lb/i/g/b;->a(IIII)Lb/i/g/b;

    move-result-object p0

    return-object p0
.end method

.method public static j(Landroid/view/WindowInsets;)Lb/i/m/c0;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lb/i/m/c0;->k(Landroid/view/WindowInsets;Landroid/view/View;)Lb/i/m/c0;

    move-result-object p0

    return-object p0
.end method

.method public static k(Landroid/view/WindowInsets;Landroid/view/View;)Lb/i/m/c0;
    .locals 2

    new-instance v0, Lb/i/m/c0;

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {v0, p0}, Lb/i/m/c0;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lb/i/m/r;->n(Landroid/view/View;)Lb/i/m/c0;

    move-result-object p0

    .line 3
    iget-object v1, v0, Lb/i/m/c0;->a:Lb/i/m/c0$k;

    invoke-virtual {v1, p0}, Lb/i/m/c0$k;->m(Lb/i/m/c0;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 5
    iget-object p1, v0, Lb/i/m/c0;->a:Lb/i/m/c0$k;

    invoke-virtual {p1, p0}, Lb/i/m/c0$k;->d(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lb/i/m/c0;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lb/i/m/c0;->a:Lb/i/m/c0$k;

    invoke-virtual {v0}, Lb/i/m/c0$k;->c()Lb/i/m/c0;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lb/i/m/c0;->a:Lb/i/m/c0$k;

    invoke-virtual {v0}, Lb/i/m/c0$k;->h()Lb/i/g/b;

    move-result-object v0

    iget v0, v0, Lb/i/g/b;->d:I

    return v0
.end method

.method public c()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lb/i/m/c0;->a:Lb/i/m/c0$k;

    invoke-virtual {v0}, Lb/i/m/c0$k;->h()Lb/i/g/b;

    move-result-object v0

    iget v0, v0, Lb/i/g/b;->a:I

    return v0
.end method

.method public d()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lb/i/m/c0;->a:Lb/i/m/c0$k;

    invoke-virtual {v0}, Lb/i/m/c0$k;->h()Lb/i/g/b;

    move-result-object v0

    iget v0, v0, Lb/i/g/b;->c:I

    return v0
.end method

.method public e()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lb/i/m/c0;->a:Lb/i/m/c0$k;

    invoke-virtual {v0}, Lb/i/m/c0$k;->h()Lb/i/g/b;

    move-result-object v0

    iget v0, v0, Lb/i/g/b;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lb/i/m/c0;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lb/i/m/c0;

    iget-object v0, p0, Lb/i/m/c0;->a:Lb/i/m/c0$k;

    iget-object p1, p1, Lb/i/m/c0;->a:Lb/i/m/c0$k;

    .line 1
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lb/i/m/c0;->a:Lb/i/m/c0$k;

    invoke-virtual {v0}, Lb/i/m/c0$k;->j()Z

    move-result v0

    return v0
.end method

.method public h(IIII)Lb/i/m/c0;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Lb/i/m/c0$d;

    invoke-direct {v0, p0}, Lb/i/m/c0$d;-><init>(Lb/i/m/c0;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, Lb/i/m/c0$c;

    invoke-direct {v0, p0}, Lb/i/m/c0$c;-><init>(Lb/i/m/c0;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x14

    if-lt v0, v1, :cond_2

    new-instance v0, Lb/i/m/c0$b;

    invoke-direct {v0, p0}, Lb/i/m/c0$b;-><init>(Lb/i/m/c0;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lb/i/m/c0$e;

    invoke-direct {v0, p0}, Lb/i/m/c0$e;-><init>(Lb/i/m/c0;)V

    .line 2
    :goto_0
    invoke-static {p1, p2, p3, p4}, Lb/i/g/b;->a(IIII)Lb/i/g/b;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lb/i/m/c0$e;->c(Lb/i/g/b;)V

    .line 4
    invoke-virtual {v0}, Lb/i/m/c0$e;->a()Lb/i/m/c0;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lb/i/m/c0;->a:Lb/i/m/c0$k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lb/i/m/c0$k;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public i()Landroid/view/WindowInsets;
    .locals 2

    iget-object v0, p0, Lb/i/m/c0;->a:Lb/i/m/c0$k;

    instance-of v1, v0, Lb/i/m/c0$f;

    if-eqz v1, :cond_0

    check-cast v0, Lb/i/m/c0$f;

    iget-object v0, v0, Lb/i/m/c0$f;->c:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
