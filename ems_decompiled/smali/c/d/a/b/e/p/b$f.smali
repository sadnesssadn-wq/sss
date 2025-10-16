.class public abstract Lc/d/a/b/e/p/b$f;
.super Lc/d/a/b/e/p/b$h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/e/p/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/e/p/b$h<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:I

.field public final e:Landroid/os/Bundle;

.field public final synthetic f:Lc/d/a/b/e/p/b;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/p/b;ILandroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lc/d/a/b/e/p/b$f;->f:Lc/d/a/b/e/p/b;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lc/d/a/b/e/p/b$h;-><init>(Lc/d/a/b/e/p/b;Ljava/lang/Object;)V

    iput p2, p0, Lc/d/a/b/e/p/b$f;->d:I

    iput-object p3, p0, Lc/d/a/b/e/p/b$f;->e:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    .line 1
    iget p1, p0, Lc/d/a/b/e/p/b$f;->d:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lc/d/a/b/e/p/b$f;->e()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lc/d/a/b/e/p/b$f;->f:Lc/d/a/b/e/p/b;

    .line 2
    invoke-virtual {p1, v0, v1}, Lc/d/a/b/e/p/b;->I(ILandroid/os/IInterface;)V

    .line 3
    new-instance p1, Lc/d/a/b/e/a;

    const/16 v0, 0x8

    invoke-direct {p1, v0, v1}, Lc/d/a/b/e/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lc/d/a/b/e/p/b$f;->d(Lc/d/a/b/e/a;)V

    return-void

    :cond_0
    iget-object p1, p0, Lc/d/a/b/e/p/b$f;->f:Lc/d/a/b/e/p/b;

    .line 4
    invoke-virtual {p1, v0, v1}, Lc/d/a/b/e/p/b;->I(ILandroid/os/IInterface;)V

    .line 5
    iget-object p1, p0, Lc/d/a/b/e/p/b$f;->e:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    const-string v0, "pendingIntent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/app/PendingIntent;

    :cond_1
    new-instance p1, Lc/d/a/b/e/a;

    iget v0, p0, Lc/d/a/b/e/p/b$f;->d:I

    invoke-direct {p1, v0, v1}, Lc/d/a/b/e/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lc/d/a/b/e/p/b$f;->d(Lc/d/a/b/e/a;)V

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public abstract d(Lc/d/a/b/e/a;)V
.end method

.method public abstract e()Z
.end method
