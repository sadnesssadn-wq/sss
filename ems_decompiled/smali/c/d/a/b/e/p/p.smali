.class public final Lc/d/a/b/e/p/p;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static b:Lc/d/a/b/e/p/p;

.field public static final c:Lc/d/a/b/e/p/q;


# instance fields
.field public a:Lc/d/a/b/e/p/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v6, Lc/d/a/b/e/p/q;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lc/d/a/b/e/p/q;-><init>(IZZII)V

    sput-object v6, Lc/d/a/b/e/p/p;->c:Lc/d/a/b/e/p/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lc/d/a/b/e/p/p;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    const-class v0, Lc/d/a/b/e/p/p;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/d/a/b/e/p/p;->b:Lc/d/a/b/e/p/p;

    if-nez v1, :cond_0

    new-instance v1, Lc/d/a/b/e/p/p;

    invoke-direct {v1}, Lc/d/a/b/e/p/p;-><init>()V

    sput-object v1, Lc/d/a/b/e/p/p;->b:Lc/d/a/b/e/p/p;

    :cond_0
    sget-object v1, Lc/d/a/b/e/p/p;->b:Lc/d/a/b/e/p/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
