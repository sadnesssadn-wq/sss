.class public final Lc/d/a/a/j/t/h/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lc/d/a/a/j/t/h/q;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Lc/d/a/a/j/t/i/s;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Lc/d/a/a/j/t/h/s;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Lc/d/a/a/j/u/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/a/a;Lf/a/a;Lf/a/a;Lf/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a/a<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lf/a/a<",
            "Lc/d/a/a/j/t/i/s;",
            ">;",
            "Lf/a/a<",
            "Lc/d/a/a/j/t/h/s;",
            ">;",
            "Lf/a/a<",
            "Lc/d/a/a/j/u/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/a/j/t/h/r;->a:Lf/a/a;

    iput-object p2, p0, Lc/d/a/a/j/t/h/r;->b:Lf/a/a;

    iput-object p3, p0, Lc/d/a/a/j/t/h/r;->c:Lf/a/a;

    iput-object p4, p0, Lc/d/a/a/j/t/h/r;->d:Lf/a/a;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lc/d/a/a/j/t/h/r;->a:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lc/d/a/a/j/t/h/r;->b:Lf/a/a;

    invoke-interface {v1}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/a/j/t/i/s;

    iget-object v2, p0, Lc/d/a/a/j/t/h/r;->c:Lf/a/a;

    invoke-interface {v2}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/a/j/t/h/s;

    iget-object v3, p0, Lc/d/a/a/j/t/h/r;->d:Lf/a/a;

    invoke-interface {v3}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/a/j/u/b;

    .line 2
    new-instance v4, Lc/d/a/a/j/t/h/q;

    invoke-direct {v4, v0, v1, v2, v3}, Lc/d/a/a/j/t/h/q;-><init>(Ljava/util/concurrent/Executor;Lc/d/a/a/j/t/i/s;Lc/d/a/a/j/t/h/s;Lc/d/a/a/j/u/b;)V

    return-object v4
.end method
