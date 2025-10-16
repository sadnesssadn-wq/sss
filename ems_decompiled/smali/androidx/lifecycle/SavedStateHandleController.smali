.class public final Landroidx/lifecycle/SavedStateHandleController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/o/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/SavedStateHandleController$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Z

.field public final c:Lb/o/u;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lb/o/u;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->b:Z

    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandleController;->a:Ljava/lang/String;

    iput-object p2, p0, Landroidx/lifecycle/SavedStateHandleController;->c:Lb/o/u;

    return-void
.end method

.method public static i(Lb/s/b;Lb/o/f;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lb/o/k;

    .line 1
    iget-object v0, v0, Lb/o/k;->b:Lb/o/f$b;

    .line 2
    sget-object v1, Lb/o/f$b;->d:Lb/o/f$b;

    if-eq v0, v1, :cond_2

    sget-object v1, Lb/o/f$b;->f:Lb/o/f$b;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    new-instance v0, Landroidx/lifecycle/SavedStateHandleController$1;

    invoke-direct {v0, p1, p0}, Landroidx/lifecycle/SavedStateHandleController$1;-><init>(Lb/o/f;Lb/s/b;)V

    invoke-virtual {p1, v0}, Lb/o/f;->a(Lb/o/i;)V

    goto :goto_2

    :cond_2
    :goto_1
    const-class p1, Landroidx/lifecycle/SavedStateHandleController$a;

    invoke-virtual {p0, p1}, Lb/s/b;->c(Ljava/lang/Class;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public d(Lb/o/j;Lb/o/f$a;)V
    .locals 1

    sget-object v0, Lb/o/f$a;->ON_DESTROY:Lb/o/f$a;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/lifecycle/SavedStateHandleController;->b:Z

    invoke-interface {p1}, Lb/o/j;->getLifecycle()Lb/o/f;

    move-result-object p1

    check-cast p1, Lb/o/k;

    const-string p2, "removeObserver"

    .line 1
    invoke-virtual {p1, p2}, Lb/o/k;->d(Ljava/lang/String;)V

    iget-object p1, p1, Lb/o/k;->a:Lb/c/a/b/a;

    invoke-virtual {p1, p0}, Lb/c/a/b/a;->n(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public h(Lb/s/b;Lb/o/f;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->b:Z

    invoke-virtual {p2, p0}, Lb/o/f;->a(Lb/o/i;)V

    iget-object p2, p0, Landroidx/lifecycle/SavedStateHandleController;->a:Ljava/lang/String;

    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandleController;->c:Lb/o/u;

    .line 1
    iget-object v0, v0, Lb/o/u;->d:Lb/s/b$b;

    .line 2
    invoke-virtual {p1, p2, v0}, Lb/s/b;->b(Ljava/lang/String;Lb/s/b$b;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached to lifecycleOwner"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
