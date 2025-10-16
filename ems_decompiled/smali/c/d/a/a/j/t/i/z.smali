.class public final Lc/d/a/a/j/t/i/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lc/d/a/a/j/t/i/y;",
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
            "Lc/d/a/a/j/t/i/t;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Lc/d/a/a/j/t/i/a0;",
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
            "Lc/d/a/a/j/v/a;",
            ">;",
            "Lf/a/a<",
            "Lc/d/a/a/j/v/a;",
            ">;",
            "Lf/a/a<",
            "Lc/d/a/a/j/t/i/t;",
            ">;",
            "Lf/a/a<",
            "Lc/d/a/a/j/t/i/a0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/a/j/t/i/z;->a:Lf/a/a;

    iput-object p2, p0, Lc/d/a/a/j/t/i/z;->b:Lf/a/a;

    iput-object p3, p0, Lc/d/a/a/j/t/i/z;->c:Lf/a/a;

    iput-object p4, p0, Lc/d/a/a/j/t/i/z;->d:Lf/a/a;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lc/d/a/a/j/t/i/z;->a:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/a/j/v/a;

    iget-object v1, p0, Lc/d/a/a/j/t/i/z;->b:Lf/a/a;

    invoke-interface {v1}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/a/j/v/a;

    iget-object v2, p0, Lc/d/a/a/j/t/i/z;->c:Lf/a/a;

    invoke-interface {v2}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lc/d/a/a/j/t/i/z;->d:Lf/a/a;

    invoke-interface {v3}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    .line 2
    new-instance v4, Lc/d/a/a/j/t/i/y;

    check-cast v2, Lc/d/a/a/j/t/i/t;

    check-cast v3, Lc/d/a/a/j/t/i/a0;

    invoke-direct {v4, v0, v1, v2, v3}, Lc/d/a/a/j/t/i/y;-><init>(Lc/d/a/a/j/v/a;Lc/d/a/a/j/v/a;Lc/d/a/a/j/t/i/t;Lc/d/a/a/j/t/i/a0;)V

    return-object v4
.end method
