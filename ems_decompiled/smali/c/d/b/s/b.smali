.class public final synthetic Lc/d/b/s/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lc/d/b/s/g;


# direct methods
.method public synthetic constructor <init>(Lc/d/b/s/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/b/s/b;->c:Lc/d/b/s/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lc/d/b/s/b;->c:Lc/d/b/s/g;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Lc/d/b/s/g;->b(Z)V

    return-void
.end method
