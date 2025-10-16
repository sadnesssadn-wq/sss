.class public final Lc/d/a/a/j/c$b;
.super Lc/d/a/a/j/j$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/a/j/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:[B

.field public c:Lc/d/a/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/d/a/a/j/j$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lc/d/a/a/j/j;
    .locals 5

    iget-object v0, p0, Lc/d/a/a/j/c$b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, " backendName"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lc/d/a/a/j/c$b;->c:Lc/d/a/a/d;

    if-nez v1, :cond_1

    const-string v1, " priority"

    invoke-static {v0, v1}, Lc/a/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lc/d/a/a/j/c;

    iget-object v1, p0, Lc/d/a/a/j/c$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lc/d/a/a/j/c$b;->b:[B

    iget-object v3, p0, Lc/d/a/a/j/c$b;->c:Lc/d/a/a/d;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lc/d/a/a/j/c;-><init>(Ljava/lang/String;[BLc/d/a/a/d;Lc/d/a/a/j/c$a;)V

    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Lc/a/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(Ljava/lang/String;)Lc/d/a/a/j/j$a;
    .locals 1

    const-string v0, "Null backendName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lc/d/a/a/j/c$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c(Lc/d/a/a/d;)Lc/d/a/a/j/j$a;
    .locals 1

    const-string v0, "Null priority"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lc/d/a/a/j/c$b;->c:Lc/d/a/a/d;

    return-object p0
.end method
