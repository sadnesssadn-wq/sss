.class public final Lc/d/a/b/f/b$a$a;
.super Lc/d/a/b/i/g/b;
.source ""

# interfaces
.implements Lc/d/a/b/f/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/f/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.dynamic.IObjectWrapper"

    invoke-direct {p0, p1, v0}, Lc/d/a/b/i/g/b;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method
