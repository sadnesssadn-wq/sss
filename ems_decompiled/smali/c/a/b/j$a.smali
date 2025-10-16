.class public Lc/a/b/j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/a/b/j;->finish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J

.field public final synthetic e:Lc/a/b/j;


# direct methods
.method public constructor <init>(Lc/a/b/j;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lc/a/b/j$a;->e:Lc/a/b/j;

    iput-object p2, p0, Lc/a/b/j$a;->c:Ljava/lang/String;

    iput-wide p3, p0, Lc/a/b/j$a;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lc/a/b/j$a;->e:Lc/a/b/j;

    invoke-static {v0}, Lc/a/b/j;->access$000(Lc/a/b/j;)Lc/a/b/o$a;

    move-result-object v0

    iget-object v1, p0, Lc/a/b/j$a;->c:Ljava/lang/String;

    iget-wide v2, p0, Lc/a/b/j$a;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lc/a/b/o$a;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lc/a/b/j$a;->e:Lc/a/b/j;

    invoke-static {v0}, Lc/a/b/j;->access$000(Lc/a/b/j;)Lc/a/b/o$a;

    move-result-object v0

    iget-object v1, p0, Lc/a/b/j$a;->e:Lc/a/b/j;

    invoke-virtual {v1}, Lc/a/b/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/a/b/o$a;->b(Ljava/lang/String;)V

    return-void
.end method
