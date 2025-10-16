.class public final Lc/d/a/b/e/p/b$l;
.super Lc/d/a/b/e/p/b$f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/e/p/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/e/p/b$f;"
    }
.end annotation


# instance fields
.field public final synthetic g:Lc/d/a/b/e/p/b;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/p/b;I)V
    .locals 1

    iput-object p1, p0, Lc/d/a/b/e/p/b$l;->g:Lc/d/a/b/e/p/b;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc/d/a/b/e/p/b$f;-><init>(Lc/d/a/b/e/p/b;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final d(Lc/d/a/b/e/a;)V
    .locals 1

    iget-object v0, p0, Lc/d/a/b/e/p/b$l;->g:Lc/d/a/b/e/p/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lc/d/a/b/e/p/b$l;->g:Lc/d/a/b/e/p/b;

    iget-object v0, v0, Lc/d/a/b/e/p/b;->n:Lc/d/a/b/e/p/b$c;

    invoke-interface {v0, p1}, Lc/d/a/b/e/p/b$c;->a(Lc/d/a/b/e/a;)V

    iget-object v0, p0, Lc/d/a/b/e/p/b$l;->g:Lc/d/a/b/e/p/b;

    invoke-virtual {v0, p1}, Lc/d/a/b/e/p/b;->F(Lc/d/a/b/e/a;)V

    return-void
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lc/d/a/b/e/p/b$l;->g:Lc/d/a/b/e/p/b;

    iget-object v0, v0, Lc/d/a/b/e/p/b;->n:Lc/d/a/b/e/p/b$c;

    sget-object v1, Lc/d/a/b/e/a;->g:Lc/d/a/b/e/a;

    invoke-interface {v0, v1}, Lc/d/a/b/e/p/b$c;->a(Lc/d/a/b/e/a;)V

    const/4 v0, 0x1

    return v0
.end method
