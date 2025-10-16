.class public Lc/e/a/b/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lc/e/a/b/j;


# direct methods
.method public constructor <init>(Lc/e/a/b/j;)V
    .locals 0

    iput-object p1, p0, Lc/e/a/b/k;->c:Lc/e/a/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lc/e/a/b/k;->c:Lc/e/a/b/j;

    iget-object v1, v0, Lc/e/a/b/j;->p:Lc/e/a/b/r/a;

    iget-object v2, v0, Lc/e/a/b/j;->k:Ljava/lang/String;

    iget-object v0, v0, Lc/e/a/b/j;->m:Lc/e/a/b/q/a;

    check-cast v0, Lc/e/a/b/q/b;

    invoke-virtual {v0}, Lc/e/a/b/q/b;->d()Landroid/view/View;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lc/e/a/b/r/a;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
