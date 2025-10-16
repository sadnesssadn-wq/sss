.class public Lc/d/a/b/i/n/f1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/i/n/f1$a;
    }
.end annotation


# static fields
.field public static volatile b:Lc/d/a/b/i/n/f1;

.field public static volatile c:Lc/d/a/b/i/n/f1;

.field public static final d:Lc/d/a/b/i/n/f1;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/d/a/b/i/n/f1$a;",
            "Lc/d/a/b/i/n/t1$d<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/d/a/b/i/n/f1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lc/d/a/b/i/n/f1;-><init>(Z)V

    sput-object v0, Lc/d/a/b/i/n/f1;->d:Lc/d/a/b/i/n/f1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/d/a/b/i/n/f1;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lc/d/a/b/i/n/f1;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Lc/d/a/b/i/n/f1;
    .locals 2

    sget-object v0, Lc/d/a/b/i/n/f1;->b:Lc/d/a/b/i/n/f1;

    if-nez v0, :cond_1

    const-class v1, Lc/d/a/b/i/n/f1;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc/d/a/b/i/n/f1;->b:Lc/d/a/b/i/n/f1;

    if-nez v0, :cond_0

    sget-object v0, Lc/d/a/b/i/n/f1;->d:Lc/d/a/b/i/n/f1;

    sput-object v0, Lc/d/a/b/i/n/f1;->b:Lc/d/a/b/i/n/f1;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method
