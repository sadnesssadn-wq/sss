.class public final Lc/d/a/b/h/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static b:Lc/d/a/b/h/c;


# instance fields
.field public final a:Lc/d/a/b/h/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/d/a/b/h/c;

    invoke-direct {v0}, Lc/d/a/b/h/c;-><init>()V

    const-class v1, Lc/d/a/b/h/c;

    monitor-enter v1

    :try_start_0
    sput-object v0, Lc/d/a/b/h/c;->b:Lc/d/a/b/h/c;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/d/a/b/h/b;

    invoke-direct {v0}, Lc/d/a/b/h/b;-><init>()V

    iput-object v0, p0, Lc/d/a/b/h/c;->a:Lc/d/a/b/h/b;

    return-void
.end method
