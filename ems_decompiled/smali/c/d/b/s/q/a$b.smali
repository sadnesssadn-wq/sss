.class public final Lc/d/b/s/q/a$b;
.super Lc/d/b/s/q/d$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/b/s/q/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lc/d/b/s/q/c$a;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/Long;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/d/b/s/q/d$a;-><init>()V

    return-void
.end method

.method public constructor <init>(Lc/d/b/s/q/d;Lc/d/b/s/q/a$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc/d/b/s/q/d$a;-><init>()V

    check-cast p1, Lc/d/b/s/q/a;

    .line 2
    iget-object p2, p1, Lc/d/b/s/q/a;->b:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lc/d/b/s/q/a$b;->a:Ljava/lang/String;

    .line 4
    iget-object p2, p1, Lc/d/b/s/q/a;->c:Lc/d/b/s/q/c$a;

    .line 5
    iput-object p2, p0, Lc/d/b/s/q/a$b;->b:Lc/d/b/s/q/c$a;

    .line 6
    iget-object p2, p1, Lc/d/b/s/q/a;->d:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lc/d/b/s/q/a$b;->c:Ljava/lang/String;

    .line 8
    iget-object p2, p1, Lc/d/b/s/q/a;->e:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lc/d/b/s/q/a$b;->d:Ljava/lang/String;

    .line 10
    iget-wide v0, p1, Lc/d/b/s/q/a;->f:J

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lc/d/b/s/q/a$b;->e:Ljava/lang/Long;

    .line 12
    iget-wide v0, p1, Lc/d/b/s/q/a;->g:J

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lc/d/b/s/q/a$b;->f:Ljava/lang/Long;

    .line 14
    iget-object p1, p1, Lc/d/b/s/q/a;->h:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lc/d/b/s/q/a$b;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lc/d/b/s/q/d;
    .locals 13

    iget-object v0, p0, Lc/d/b/s/q/a$b;->b:Lc/d/b/s/q/c$a;

    if-nez v0, :cond_0

    const-string v0, " registrationStatus"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lc/d/b/s/q/a$b;->e:Ljava/lang/Long;

    if-nez v1, :cond_1

    const-string v1, " expiresInSecs"

    invoke-static {v0, v1}, Lc/a/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lc/d/b/s/q/a$b;->f:Ljava/lang/Long;

    if-nez v1, :cond_2

    const-string v1, " tokenCreationEpochInSecs"

    invoke-static {v0, v1}, Lc/a/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lc/d/b/s/q/a;

    iget-object v3, p0, Lc/d/b/s/q/a$b;->a:Ljava/lang/String;

    iget-object v4, p0, Lc/d/b/s/q/a$b;->b:Lc/d/b/s/q/c$a;

    iget-object v5, p0, Lc/d/b/s/q/a$b;->c:Ljava/lang/String;

    iget-object v6, p0, Lc/d/b/s/q/a$b;->d:Ljava/lang/String;

    iget-object v1, p0, Lc/d/b/s/q/a$b;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v1, p0, Lc/d/b/s/q/a$b;->f:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v11, p0, Lc/d/b/s/q/a$b;->g:Ljava/lang/String;

    const/4 v12, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lc/d/b/s/q/a;-><init>(Ljava/lang/String;Lc/d/b/s/q/c$a;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Lc/d/b/s/q/a$a;)V

    return-object v0

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Lc/a/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(Lc/d/b/s/q/c$a;)Lc/d/b/s/q/d$a;
    .locals 1

    const-string v0, "Null registrationStatus"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lc/d/b/s/q/a$b;->b:Lc/d/b/s/q/c$a;

    return-object p0
.end method

.method public c(J)Lc/d/b/s/q/d$a;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lc/d/b/s/q/a$b;->e:Ljava/lang/Long;

    return-object p0
.end method

.method public d(J)Lc/d/b/s/q/d$a;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lc/d/b/s/q/a$b;->f:Ljava/lang/Long;

    return-object p0
.end method
