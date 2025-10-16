.class public final Lc/d/a/a/j/t/h/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lc/d/a/a/j/t/h/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Lc/d/a/a/j/q/e;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Lc/d/a/a/j/t/i/s;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Lc/d/a/a/j/t/h/s;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Lc/d/a/a/j/u/b;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Lc/d/a/a/j/v/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/a/a;Lf/a/a;Lf/a/a;Lf/a/a;Lf/a/a;Lf/a/a;Lf/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lf/a/a<",
            "Lc/d/a/a/j/q/e;",
            ">;",
            "Lf/a/a<",
            "Lc/d/a/a/j/t/i/s;",
            ">;",
            "Lf/a/a<",
            "Lc/d/a/a/j/t/h/s;",
            ">;",
            "Lf/a/a<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lf/a/a<",
            "Lc/d/a/a/j/u/b;",
            ">;",
            "Lf/a/a<",
            "Lc/d/a/a/j/v/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/a/j/t/h/p;->a:Lf/a/a;

    iput-object p2, p0, Lc/d/a/a/j/t/h/p;->b:Lf/a/a;

    iput-object p3, p0, Lc/d/a/a/j/t/h/p;->c:Lf/a/a;

    iput-object p4, p0, Lc/d/a/a/j/t/h/p;->d:Lf/a/a;

    iput-object p5, p0, Lc/d/a/a/j/t/h/p;->e:Lf/a/a;

    iput-object p6, p0, Lc/d/a/a/j/t/h/p;->f:Lf/a/a;

    iput-object p7, p0, Lc/d/a/a/j/t/h/p;->g:Lf/a/a;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lc/d/a/a/j/t/h/p;->a:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lc/d/a/a/j/t/h/p;->b:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lc/d/a/a/j/q/e;

    iget-object v0, p0, Lc/d/a/a/j/t/h/p;->c:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lc/d/a/a/j/t/i/s;

    iget-object v0, p0, Lc/d/a/a/j/t/h/p;->d:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lc/d/a/a/j/t/h/s;

    iget-object v0, p0, Lc/d/a/a/j/t/h/p;->e:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lc/d/a/a/j/t/h/p;->f:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lc/d/a/a/j/u/b;

    iget-object v0, p0, Lc/d/a/a/j/t/h/p;->g:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lc/d/a/a/j/v/a;

    .line 2
    new-instance v0, Lc/d/a/a/j/t/h/o;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lc/d/a/a/j/t/h/o;-><init>(Landroid/content/Context;Lc/d/a/a/j/q/e;Lc/d/a/a/j/t/i/s;Lc/d/a/a/j/t/h/s;Ljava/util/concurrent/Executor;Lc/d/a/a/j/u/b;Lc/d/a/a/j/v/a;)V

    return-object v0
.end method
