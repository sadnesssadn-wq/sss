.class public Landroidx/lifecycle/SavedStateHandleController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/o/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/SavedStateHandleController;->i(Lb/s/b;Lb/o/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/o/f;

.field public final synthetic b:Lb/s/b;


# direct methods
.method public constructor <init>(Lb/o/f;Lb/s/b;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandleController$1;->a:Lb/o/f;

    iput-object p2, p0, Landroidx/lifecycle/SavedStateHandleController$1;->b:Lb/s/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lb/o/j;Lb/o/f$a;)V
    .locals 0

    sget-object p1, Lb/o/f$a;->ON_START:Lb/o/f$a;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/SavedStateHandleController$1;->a:Lb/o/f;

    check-cast p1, Lb/o/k;

    const-string p2, "removeObserver"

    .line 1
    invoke-virtual {p1, p2}, Lb/o/k;->d(Ljava/lang/String;)V

    iget-object p1, p1, Lb/o/k;->a:Lb/c/a/b/a;

    invoke-virtual {p1, p0}, Lb/c/a/b/a;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Landroidx/lifecycle/SavedStateHandleController$1;->b:Lb/s/b;

    const-class p2, Landroidx/lifecycle/SavedStateHandleController$a;

    invoke-virtual {p1, p2}, Lb/s/b;->c(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method
