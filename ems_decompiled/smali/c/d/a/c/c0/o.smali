.class public final Lc/d/a/c/c0/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/c/c0/r;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Lc/d/a/c/c0/r;


# direct methods
.method public constructor <init>(ZZZLc/d/a/c/c0/r;)V
    .locals 0

    iput-boolean p1, p0, Lc/d/a/c/c0/o;->a:Z

    iput-boolean p2, p0, Lc/d/a/c/c0/o;->b:Z

    iput-boolean p3, p0, Lc/d/a/c/c0/o;->c:Z

    iput-object p4, p0, Lc/d/a/c/c0/o;->d:Lc/d/a/c/c0/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lb/i/m/c0;Lc/d/a/c/c0/s;)Lb/i/m/c0;
    .locals 5

    iget-boolean v0, p0, Lc/d/a/c/c0/o;->a:Z

    if-eqz v0, :cond_0

    iget v0, p3, Lc/d/a/c/c0/s;->d:I

    invoke-virtual {p2}, Lb/i/m/c0;->b()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p3, Lc/d/a/c/c0/s;->d:I

    :cond_0
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->l0(Landroid/view/View;)Z

    move-result v0

    iget-boolean v1, p0, Lc/d/a/c/c0/o;->b:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    iget v1, p3, Lc/d/a/c/c0/s;->c:I

    invoke-virtual {p2}, Lb/i/m/c0;->c()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p3, Lc/d/a/c/c0/s;->c:I

    goto :goto_0

    :cond_1
    iget v1, p3, Lc/d/a/c/c0/s;->a:I

    invoke-virtual {p2}, Lb/i/m/c0;->c()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p3, Lc/d/a/c/c0/s;->a:I

    :cond_2
    :goto_0
    iget-boolean v1, p0, Lc/d/a/c/c0/o;->c:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    iget v0, p3, Lc/d/a/c/c0/s;->a:I

    invoke-virtual {p2}, Lb/i/m/c0;->d()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p3, Lc/d/a/c/c0/s;->a:I

    goto :goto_1

    :cond_3
    iget v0, p3, Lc/d/a/c/c0/s;->c:I

    invoke-virtual {p2}, Lb/i/m/c0;->d()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p3, Lc/d/a/c/c0/s;->c:I

    .line 1
    :cond_4
    :goto_1
    iget v0, p3, Lc/d/a/c/c0/s;->a:I

    iget v1, p3, Lc/d/a/c/c0/s;->b:I

    iget v2, p3, Lc/d/a/c/c0/s;->c:I

    iget v3, p3, Lc/d/a/c/c0/s;->d:I

    .line 2
    sget-object v4, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 3
    iget-object v0, p0, Lc/d/a/c/c0/o;->d:Lc/d/a/c/c0/r;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1, p2, p3}, Lc/d/a/c/c0/r;->a(Landroid/view/View;Lb/i/m/c0;Lc/d/a/c/c0/s;)Lb/i/m/c0;

    move-result-object p2

    :cond_5
    return-object p2
.end method
