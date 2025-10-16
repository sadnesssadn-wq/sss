.class public final Lc/d/a/b/e/p/b$j;
.super Lc/d/a/b/e/p/k$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/e/p/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation


# instance fields
.field public c:Lc/d/a/b/e/p/b;

.field public final d:I


# direct methods
.method public constructor <init>(Lc/d/a/b/e/p/b;I)V
    .locals 0

    invoke-direct {p0}, Lc/d/a/b/e/p/k$a;-><init>()V

    iput-object p1, p0, Lc/d/a/b/e/p/b$j;->c:Lc/d/a/b/e/p/b;

    iput p2, p0, Lc/d/a/b/e/p/b$j;->d:I

    return-void
.end method


# virtual methods
.method public final i0(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lc/d/a/b/e/p/b$j;->c:Lc/d/a/b/e/p/b;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lc/d/a/b/e/p/b$j;->c:Lc/d/a/b/e/p/b;

    iget v1, p0, Lc/d/a/b/e/p/b$j;->d:I

    .line 1
    iget-object v2, v0, Lc/d/a/b/e/p/b;->j:Landroid/os/Handler;

    new-instance v3, Lc/d/a/b/e/p/b$k;

    invoke-direct {v3, v0, p1, p2, p3}, Lc/d/a/b/e/p/b$k;-><init>(Lc/d/a/b/e/p/b;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 p2, -0x1

    invoke-virtual {v2, p1, v1, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lc/d/a/b/e/p/b$j;->c:Lc/d/a/b/e/p/b;

    return-void
.end method
