.class public final synthetic Lc/d/b/s/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lc/d/b/s/g;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lc/d/b/s/g;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/b/s/c;->c:Lc/d/b/s/g;

    iput-boolean p2, p0, Lc/d/b/s/c;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lc/d/b/s/c;->c:Lc/d/b/s/g;

    iget-boolean v1, p0, Lc/d/b/s/c;->d:Z

    .line 1
    invoke-virtual {v0, v1}, Lc/d/b/s/g;->b(Z)V

    return-void
.end method
