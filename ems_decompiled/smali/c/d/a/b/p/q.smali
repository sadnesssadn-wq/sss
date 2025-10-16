.class public final Lc/d/a/b/p/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/p/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/d/a/b/p/h<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/d/a/b/p/i;


# direct methods
.method public constructor <init>(Lc/d/a/b/p/i;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/p/q;->a:Lc/d/a/b/p/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lc/d/a/b/p/q;->a:Lc/d/a/b/p/i;

    invoke-interface {p1}, Lc/d/a/b/p/i;->onCanceled()V

    return-void
.end method
