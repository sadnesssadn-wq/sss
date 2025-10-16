.class public final Lc/d/a/a/j/t/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lc/d/a/a/j/t/h/s;",
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
            "Lc/d/a/a/j/t/i/s;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Lc/d/a/a/j/t/h/n;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Lc/d/a/a/j/v/a;",
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
            "Landroid/content/Context;",
            ">;",
            "Lf/a/a<",
            "Lc/d/a/a/j/t/i/s;",
            ">;",
            "Lf/a/a<",
            "Lc/d/a/a/j/t/h/n;",
            ">;",
            "Lf/a/a<",
            "Lc/d/a/a/j/v/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/a/j/t/g;->a:Lf/a/a;

    iput-object p2, p0, Lc/d/a/a/j/t/g;->b:Lf/a/a;

    iput-object p3, p0, Lc/d/a/a/j/t/g;->c:Lf/a/a;

    iput-object p4, p0, Lc/d/a/a/j/t/g;->d:Lf/a/a;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lc/d/a/a/j/t/g;->a:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lc/d/a/a/j/t/g;->b:Lf/a/a;

    invoke-interface {v1}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/a/j/t/i/s;

    iget-object v2, p0, Lc/d/a/a/j/t/g;->c:Lf/a/a;

    invoke-interface {v2}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/a/j/t/h/n;

    iget-object v3, p0, Lc/d/a/a/j/t/g;->d:Lf/a/a;

    invoke-interface {v3}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/a/j/v/a;

    .line 2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    new-instance v3, Lc/d/a/a/j/t/h/m;

    invoke-direct {v3, v0, v1, v2}, Lc/d/a/a/j/t/h/m;-><init>(Landroid/content/Context;Lc/d/a/a/j/t/i/s;Lc/d/a/a/j/t/h/n;)V

    goto :goto_0

    :cond_0
    new-instance v4, Lc/d/a/a/j/t/h/j;

    invoke-direct {v4, v0, v1, v3, v2}, Lc/d/a/a/j/t/h/j;-><init>(Landroid/content/Context;Lc/d/a/a/j/t/i/s;Lc/d/a/a/j/v/a;Lc/d/a/a/j/t/h/n;)V

    move-object v3, v4

    :goto_0
    return-object v3
.end method
