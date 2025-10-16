.class public Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/o/h;
.implements Lb/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/OnBackPressedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LifecycleOnBackPressedCancellable"
.end annotation


# instance fields
.field public final a:Lb/o/f;

.field public final b:Lb/a/b;

.field public c:Lb/a/a;

.field public final synthetic d:Landroidx/activity/OnBackPressedDispatcher;


# direct methods
.method public constructor <init>(Landroidx/activity/OnBackPressedDispatcher;Lb/o/f;Lb/a/b;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->d:Landroidx/activity/OnBackPressedDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->a:Lb/o/f;

    iput-object p3, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->b:Lb/a/b;

    invoke-virtual {p2, p0}, Lb/o/f;->a(Lb/o/i;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->a:Lb/o/f;

    check-cast v0, Lb/o/k;

    const-string v1, "removeObserver"

    .line 1
    invoke-virtual {v0, v1}, Lb/o/k;->d(Ljava/lang/String;)V

    iget-object v0, v0, Lb/o/k;->a:Lb/c/a/b/a;

    invoke-virtual {v0, p0}, Lb/c/a/b/a;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->b:Lb/a/b;

    invoke-virtual {v0, p0}, Lb/a/b;->removeCancellable(Lb/a/a;)V

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Lb/a/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lb/a/a;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Lb/a/a;

    :cond_0
    return-void
.end method

.method public d(Lb/o/j;Lb/o/f$a;)V
    .locals 1

    sget-object p1, Lb/o/f$a;->ON_START:Lb/o/f$a;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->d:Landroidx/activity/OnBackPressedDispatcher;

    iget-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->b:Lb/a/b;

    .line 1
    iget-object v0, p1, Landroidx/activity/OnBackPressedDispatcher;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$a;

    invoke-direct {v0, p1, p2}, Landroidx/activity/OnBackPressedDispatcher$a;-><init>(Landroidx/activity/OnBackPressedDispatcher;Lb/a/b;)V

    invoke-virtual {p2, v0}, Lb/a/b;->addCancellable(Lb/a/a;)V

    .line 2
    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Lb/a/a;

    goto :goto_0

    :cond_0
    sget-object p1, Lb/o/f$a;->ON_STOP:Lb/o/f$a;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Lb/a/a;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lb/a/a;->cancel()V

    goto :goto_0

    :cond_1
    sget-object p1, Lb/o/f$a;->ON_DESTROY:Lb/o/f$a;

    if-ne p2, p1, :cond_2

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->cancel()V

    :cond_2
    :goto_0
    return-void
.end method
