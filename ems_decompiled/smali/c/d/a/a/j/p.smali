.class public final Lc/d/a/a/j/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lc/d/a/a/j/n;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Lc/d/a/a/j/v/a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Lc/d/a/a/j/v/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Lc/d/a/a/j/t/e;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Lc/d/a/a/j/t/h/o;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Lc/d/a/a/j/t/h/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/a/a;Lf/a/a;Lf/a/a;Lf/a/a;Lf/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a/a<",
            "Lc/d/a/a/j/v/a;",
            ">;",
            "Lf/a/a<",
            "Lc/d/a/a/j/v/a;",
            ">;",
            "Lf/a/a<",
            "Lc/d/a/a/j/t/e;",
            ">;",
            "Lf/a/a<",
            "Lc/d/a/a/j/t/h/o;",
            ">;",
            "Lf/a/a<",
            "Lc/d/a/a/j/t/h/q;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/a/j/p;->a:Lf/a/a;

    iput-object p2, p0, Lc/d/a/a/j/p;->b:Lf/a/a;

    iput-object p3, p0, Lc/d/a/a/j/p;->c:Lf/a/a;

    iput-object p4, p0, Lc/d/a/a/j/p;->d:Lf/a/a;

    iput-object p5, p0, Lc/d/a/a/j/p;->e:Lf/a/a;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lc/d/a/a/j/p;->a:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lc/d/a/a/j/v/a;

    iget-object v0, p0, Lc/d/a/a/j/p;->b:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lc/d/a/a/j/v/a;

    iget-object v0, p0, Lc/d/a/a/j/p;->c:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lc/d/a/a/j/t/e;

    iget-object v0, p0, Lc/d/a/a/j/p;->d:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lc/d/a/a/j/t/h/o;

    iget-object v0, p0, Lc/d/a/a/j/p;->e:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lc/d/a/a/j/t/h/q;

    .line 2
    new-instance v0, Lc/d/a/a/j/n;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lc/d/a/a/j/n;-><init>(Lc/d/a/a/j/v/a;Lc/d/a/a/j/v/a;Lc/d/a/a/j/t/e;Lc/d/a/a/j/t/h/o;Lc/d/a/a/j/t/h/q;)V

    return-object v0
.end method
