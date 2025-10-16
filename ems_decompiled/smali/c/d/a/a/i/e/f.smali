.class public final Lc/d/a/a/i/e/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/b/n/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/d/b/n/e<",
        "Lc/d/a/a/i/e/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lc/d/a/a/i/e/f;

.field public static final b:Lc/d/b/n/d;

.field public static final c:Lc/d/b/n/d;

.field public static final d:Lc/d/b/n/d;

.field public static final e:Lc/d/b/n/d;

.field public static final f:Lc/d/b/n/d;

.field public static final g:Lc/d/b/n/d;

.field public static final h:Lc/d/b/n/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/a/a/i/e/f;

    invoke-direct {v0}, Lc/d/a/a/i/e/f;-><init>()V

    sput-object v0, Lc/d/a/a/i/e/f;->a:Lc/d/a/a/i/e/f;

    const-string v0, "requestTimeMs"

    invoke-static {v0}, Lc/d/b/n/d;->a(Ljava/lang/String;)Lc/d/b/n/d;

    move-result-object v0

    sput-object v0, Lc/d/a/a/i/e/f;->b:Lc/d/b/n/d;

    const-string v0, "requestUptimeMs"

    invoke-static {v0}, Lc/d/b/n/d;->a(Ljava/lang/String;)Lc/d/b/n/d;

    move-result-object v0

    sput-object v0, Lc/d/a/a/i/e/f;->c:Lc/d/b/n/d;

    const-string v0, "clientInfo"

    invoke-static {v0}, Lc/d/b/n/d;->a(Ljava/lang/String;)Lc/d/b/n/d;

    move-result-object v0

    sput-object v0, Lc/d/a/a/i/e/f;->d:Lc/d/b/n/d;

    const-string v0, "logSource"

    invoke-static {v0}, Lc/d/b/n/d;->a(Ljava/lang/String;)Lc/d/b/n/d;

    move-result-object v0

    sput-object v0, Lc/d/a/a/i/e/f;->e:Lc/d/b/n/d;

    const-string v0, "logSourceName"

    invoke-static {v0}, Lc/d/b/n/d;->a(Ljava/lang/String;)Lc/d/b/n/d;

    move-result-object v0

    sput-object v0, Lc/d/a/a/i/e/f;->f:Lc/d/b/n/d;

    const-string v0, "logEvent"

    invoke-static {v0}, Lc/d/b/n/d;->a(Ljava/lang/String;)Lc/d/b/n/d;

    move-result-object v0

    sput-object v0, Lc/d/a/a/i/e/f;->g:Lc/d/b/n/d;

    const-string v0, "qosTier"

    invoke-static {v0}, Lc/d/b/n/d;->a(Ljava/lang/String;)Lc/d/b/n/d;

    move-result-object v0

    sput-object v0, Lc/d/a/a/i/e/f;->h:Lc/d/b/n/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lc/d/a/a/i/e/r;

    check-cast p2, Lc/d/b/n/f;

    .line 1
    sget-object v0, Lc/d/a/a/i/e/f;->b:Lc/d/b/n/d;

    invoke-virtual {p1}, Lc/d/a/a/i/e/r;->f()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lc/d/b/n/f;->a(Lc/d/b/n/d;J)Lc/d/b/n/f;

    sget-object v0, Lc/d/a/a/i/e/f;->c:Lc/d/b/n/d;

    invoke-virtual {p1}, Lc/d/a/a/i/e/r;->g()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lc/d/b/n/f;->a(Lc/d/b/n/d;J)Lc/d/b/n/f;

    sget-object v0, Lc/d/a/a/i/e/f;->d:Lc/d/b/n/d;

    invoke-virtual {p1}, Lc/d/a/a/i/e/r;->a()Lc/d/a/a/i/e/p;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lc/d/b/n/f;->e(Lc/d/b/n/d;Ljava/lang/Object;)Lc/d/b/n/f;

    sget-object v0, Lc/d/a/a/i/e/f;->e:Lc/d/b/n/d;

    invoke-virtual {p1}, Lc/d/a/a/i/e/r;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lc/d/b/n/f;->e(Lc/d/b/n/d;Ljava/lang/Object;)Lc/d/b/n/f;

    sget-object v0, Lc/d/a/a/i/e/f;->f:Lc/d/b/n/d;

    invoke-virtual {p1}, Lc/d/a/a/i/e/r;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lc/d/b/n/f;->e(Lc/d/b/n/d;Ljava/lang/Object;)Lc/d/b/n/f;

    sget-object v0, Lc/d/a/a/i/e/f;->g:Lc/d/b/n/d;

    invoke-virtual {p1}, Lc/d/a/a/i/e/r;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lc/d/b/n/f;->e(Lc/d/b/n/d;Ljava/lang/Object;)Lc/d/b/n/f;

    sget-object v0, Lc/d/a/a/i/e/f;->h:Lc/d/b/n/d;

    invoke-virtual {p1}, Lc/d/a/a/i/e/r;->e()Lc/d/a/a/i/e/u;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lc/d/b/n/f;->e(Lc/d/b/n/d;Ljava/lang/Object;)Lc/d/b/n/f;

    return-void
.end method
