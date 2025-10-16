.class public Lc/d/a/a/j/t/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/a/j/t/e;


# static fields
.field public static final f:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lc/d/a/a/j/t/h/s;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lc/d/a/a/j/q/e;

.field public final d:Lc/d/a/a/j/t/i/s;

.field public final e:Lc/d/a/a/j/u/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lc/d/a/a/j/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lc/d/a/a/j/t/c;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lc/d/a/a/j/q/e;Lc/d/a/a/j/t/h/s;Lc/d/a/a/j/t/i/s;Lc/d/a/a/j/u/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/a/j/t/c;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lc/d/a/a/j/t/c;->c:Lc/d/a/a/j/q/e;

    iput-object p3, p0, Lc/d/a/a/j/t/c;->a:Lc/d/a/a/j/t/h/s;

    iput-object p4, p0, Lc/d/a/a/j/t/c;->d:Lc/d/a/a/j/t/i/s;

    iput-object p5, p0, Lc/d/a/a/j/t/c;->e:Lc/d/a/a/j/u/b;

    return-void
.end method


# virtual methods
.method public a(Lc/d/a/a/j/j;Lc/d/a/a/j/g;Lc/d/a/a/h;)V
    .locals 2

    iget-object v0, p0, Lc/d/a/a/j/t/c;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lc/d/a/a/j/t/a;

    invoke-direct {v1, p0, p1, p3, p2}, Lc/d/a/a/j/t/a;-><init>(Lc/d/a/a/j/t/c;Lc/d/a/a/j/j;Lc/d/a/a/h;Lc/d/a/a/j/g;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
