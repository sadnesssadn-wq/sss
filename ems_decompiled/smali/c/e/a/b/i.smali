.class public Lc/e/a/b/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lc/e/a/b/j;


# direct methods
.method public constructor <init>(Lc/e/a/b/j;II)V
    .locals 0

    iput-object p1, p0, Lc/e/a/b/i;->e:Lc/e/a/b/j;

    iput p2, p0, Lc/e/a/b/i;->c:I

    iput p3, p0, Lc/e/a/b/i;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lc/e/a/b/i;->e:Lc/e/a/b/j;

    iget-object v1, v0, Lc/e/a/b/j;->q:Lc/e/a/b/r/b;

    iget-object v2, v0, Lc/e/a/b/j;->k:Ljava/lang/String;

    iget-object v0, v0, Lc/e/a/b/j;->m:Lc/e/a/b/q/a;

    check-cast v0, Lc/e/a/b/q/b;

    invoke-virtual {v0}, Lc/e/a/b/q/b;->d()Landroid/view/View;

    move-result-object v0

    iget v3, p0, Lc/e/a/b/i;->c:I

    iget v4, p0, Lc/e/a/b/i;->d:I

    invoke-interface {v1, v2, v0, v3, v4}, Lc/e/a/b/r/b;->a(Ljava/lang/String;Landroid/view/View;II)V

    return-void
.end method
