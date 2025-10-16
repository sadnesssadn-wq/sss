.class public final Lc/d/a/b/e/p/b$k;
.super Lc/d/a/b/e/p/b$f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/e/p/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/e/p/b$f;"
    }
.end annotation


# instance fields
.field public final g:Landroid/os/IBinder;

.field public final synthetic h:Lc/d/a/b/e/p/b;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/p/b;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/e/p/b$k;->h:Lc/d/a/b/e/p/b;

    invoke-direct {p0, p1, p2, p4}, Lc/d/a/b/e/p/b$f;-><init>(Lc/d/a/b/e/p/b;ILandroid/os/Bundle;)V

    iput-object p3, p0, Lc/d/a/b/e/p/b$k;->g:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final d(Lc/d/a/b/e/a;)V
    .locals 1

    iget-object v0, p0, Lc/d/a/b/e/p/b$k;->h:Lc/d/a/b/e/p/b;

    .line 1
    iget-object v0, v0, Lc/d/a/b/e/p/b;->t:Lc/d/a/b/e/p/b$b;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lc/d/a/b/e/p/d0;

    .line 3
    iget-object v0, v0, Lc/d/a/b/e/p/d0;->a:Lc/d/a/b/e/m/m/m;

    invoke-interface {v0, p1}, Lc/d/a/b/e/m/m/m;->onConnectionFailed(Lc/d/a/b/e/a;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lc/d/a/b/e/p/b$k;->h:Lc/d/a/b/e/p/b;

    invoke-virtual {v0, p1}, Lc/d/a/b/e/p/b;->F(Lc/d/a/b/e/a;)V

    return-void
.end method

.method public final e()Z
    .locals 6

    const-string v0, "GmsClient"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lc/d/a/b/e/p/b$k;->g:Landroid/os/IBinder;

    const-string v3, "null reference"

    .line 1
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-interface {v2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lc/d/a/b/e/p/b$k;->h:Lc/d/a/b/e/p/b;

    invoke-virtual {v3}, Lc/d/a/b/e/p/b;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lc/d/a/b/e/p/b$k;->h:Lc/d/a/b/e/p/b;

    invoke-virtual {v3}, Lc/d/a/b/e/p/b;->C()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x22

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "service descriptor mismatch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " vs. "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lc/d/a/b/e/p/b$k;->h:Lc/d/a/b/e/p/b;

    iget-object v2, p0, Lc/d/a/b/e/p/b$k;->g:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Lc/d/a/b/e/p/b;->w(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lc/d/a/b/e/p/b$k;->h:Lc/d/a/b/e/p/b;

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-static {v2, v3, v4, v0}, Lc/d/a/b/e/p/b;->K(Lc/d/a/b/e/p/b;IILandroid/os/IInterface;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lc/d/a/b/e/p/b$k;->h:Lc/d/a/b/e/p/b;

    const/4 v3, 0x3

    invoke-static {v2, v3, v4, v0}, Lc/d/a/b/e/p/b;->K(Lc/d/a/b/e/p/b;IILandroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lc/d/a/b/e/p/b$k;->h:Lc/d/a/b/e/p/b;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lc/d/a/b/e/p/b;->x:Lc/d/a/b/e/a;

    .line 4
    iget-object v0, v0, Lc/d/a/b/e/p/b;->s:Lc/d/a/b/e/p/b$a;

    if-eqz v0, :cond_2

    .line 5
    check-cast v0, Lc/d/a/b/e/p/b0;

    .line 6
    iget-object v0, v0, Lc/d/a/b/e/p/b0;->a:Lc/d/a/b/e/m/m/f;

    invoke-interface {v0, v1}, Lc/d/a/b/e/m/m/f;->onConnected(Landroid/os/Bundle;)V

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v1

    :catch_0
    const-string v2, "service probably died"

    .line 7
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
