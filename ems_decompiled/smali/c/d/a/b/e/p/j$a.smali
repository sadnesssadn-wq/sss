.class public abstract Lc/d/a/b/e/p/j$a;
.super Lc/d/a/b/i/g/a;
.source ""

# interfaces
.implements Lc/d/a/b/e/p/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/e/p/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/e/p/j$a$a;
    }
.end annotation


# direct methods
.method public static i0(Landroid/os/IBinder;)Lc/d/a/b/e/p/j;
    .locals 2
    .param p0    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.IAccountAccessor"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lc/d/a/b/e/p/j;

    if-eqz v1, :cond_1

    check-cast v0, Lc/d/a/b/e/p/j;

    return-object v0

    :cond_1
    new-instance v0, Lc/d/a/b/e/p/j$a$a;

    invoke-direct {v0, p0}, Lc/d/a/b/e/p/j$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
