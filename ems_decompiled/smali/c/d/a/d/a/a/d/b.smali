.class public final Lc/d/a/d/a/a/d/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/d/a/a/d/c;


# static fields
.field public static final c:Ljava/lang/Object;


# instance fields
.field public volatile a:Lc/d/a/d/a/a/d/c;

.field public volatile b:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/d/a/d/a/a/d/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc/d/a/d/a/a/d/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lc/d/a/d/a/a/d/b;->c:Ljava/lang/Object;

    iput-object v0, p0, Lc/d/a/d/a/a/d/b;->b:Ljava/lang/Object;

    iput-object p1, p0, Lc/d/a/d/a/a/d/b;->a:Lc/d/a/d/a/a/d/c;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lc/d/a/d/a/a/d/b;->b:Ljava/lang/Object;

    sget-object v1, Lc/d/a/d/a/a/d/b;->c:Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/d/a/d/a/a/d/b;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lc/d/a/d/a/a/d/b;->a:Lc/d/a/d/a/a/d/c;

    invoke-interface {v0}, Lc/d/a/d/a/a/d/c;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lc/d/a/d/a/a/d/b;->b:Ljava/lang/Object;

    if-eq v2, v1, :cond_1

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scoped provider was invoked recursively returning different results: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " & "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". This is likely due to a circular dependency."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iput-object v0, p0, Lc/d/a/d/a/a/d/b;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lc/d/a/d/a/a/d/b;->a:Lc/d/a/d/a/a/d/c;

    :cond_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_1
    return-object v0
.end method
