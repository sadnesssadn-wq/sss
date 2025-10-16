.class public Lc/d/a/c/x/a0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lc/d/a/c/x/b0;


# direct methods
.method public constructor <init>(Lc/d/a/c/x/b0;I)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/x/a0;->d:Lc/d/a/c/x/b0;

    iput p2, p0, Lc/d/a/c/x/a0;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lc/d/a/c/x/a0;->c:I

    iget-object v0, p0, Lc/d/a/c/x/a0;->d:Lc/d/a/c/x/b0;

    .line 1
    iget-object v0, v0, Lc/d/a/c/x/b0;->a:Lc/d/a/c/x/g;

    .line 2
    iget-object v0, v0, Lc/d/a/c/x/g;->g:Lc/d/a/c/x/r;

    .line 3
    iget v0, v0, Lc/d/a/c/x/r;->d:I

    invoke-static {p1, v0}, Lc/d/a/c/x/r;->r(II)Lc/d/a/c/x/r;

    move-result-object p1

    iget-object v0, p0, Lc/d/a/c/x/a0;->d:Lc/d/a/c/x/b0;

    .line 4
    iget-object v0, v0, Lc/d/a/c/x/b0;->a:Lc/d/a/c/x/g;

    .line 5
    iget-object v0, v0, Lc/d/a/c/x/g;->f:Lc/d/a/c/x/a;

    .line 6
    iget-object v1, v0, Lc/d/a/c/x/a;->c:Lc/d/a/c/x/r;

    invoke-virtual {p1, v1}, Lc/d/a/c/x/r;->a(Lc/d/a/c/x/r;)I

    move-result v1

    if-gez v1, :cond_0

    iget-object p1, v0, Lc/d/a/c/x/a;->c:Lc/d/a/c/x/r;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lc/d/a/c/x/a;->d:Lc/d/a/c/x/r;

    invoke-virtual {p1, v1}, Lc/d/a/c/x/r;->a(Lc/d/a/c/x/r;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object p1, v0, Lc/d/a/c/x/a;->d:Lc/d/a/c/x/r;

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lc/d/a/c/x/a0;->d:Lc/d/a/c/x/b0;

    .line 8
    iget-object v0, v0, Lc/d/a/c/x/b0;->a:Lc/d/a/c/x/g;

    .line 9
    invoke-virtual {v0, p1}, Lc/d/a/c/x/g;->j(Lc/d/a/c/x/r;)V

    iget-object p1, p0, Lc/d/a/c/x/a0;->d:Lc/d/a/c/x/b0;

    .line 10
    iget-object p1, p1, Lc/d/a/c/x/b0;->a:Lc/d/a/c/x/g;

    .line 11
    sget-object v0, Lc/d/a/c/x/g$e;->c:Lc/d/a/c/x/g$e;

    invoke-virtual {p1, v0}, Lc/d/a/c/x/g;->l(Lc/d/a/c/x/g$e;)V

    return-void
.end method
