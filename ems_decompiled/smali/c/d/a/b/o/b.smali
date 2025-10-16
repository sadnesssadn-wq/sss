.class public final Lc/d/a/b/o/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lc/d/a/b/o/a;


# direct methods
.method public constructor <init>(Lc/d/a/b/o/a;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/o/b;->c:Lc/d/a/b/o/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lc/d/a/b/o/b;->c:Lc/d/a/b/o/a;

    .line 1
    invoke-virtual {v0}, Lc/d/a/b/o/a;->d()V

    return-void
.end method
