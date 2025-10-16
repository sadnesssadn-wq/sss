.class public final Lc/d/a/a/i/e/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/b/n/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/d/b/n/e<",
        "Lc/d/a/a/i/e/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lc/d/a/a/i/e/e;

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

    new-instance v0, Lc/d/a/a/i/e/e;

    invoke-direct {v0}, Lc/d/a/a/i/e/e;-><init>()V

    sput-object v0, Lc/d/a/a/i/e/e;->a:Lc/d/a/a/i/e/e;

    const-string v0, "eventTimeMs"

    invoke-static {v0}, Lc/d/b/n/d;->a(Ljava/lang/String;)Lc/d/b/n/d;

    move-result-object v0

    sput-object v0, Lc/d/a/a/i/e/e;->b:Lc/d/b/n/d;

    const-string v0, "eventCode"

    invoke-static {v0}, Lc/d/b/n/d;->a(Ljava/lang/String;)Lc/d/b/n/d;

    move-result-object v0

    sput-object v0, Lc/d/a/a/i/e/e;->c:Lc/d/b/n/d;

    const-string v0, "eventUptimeMs"

    invoke-static {v0}, Lc/d/b/n/d;->a(Ljava/lang/String;)Lc/d/b/n/d;

    move-result-object v0

    sput-object v0, Lc/d/a/a/i/e/e;->d:Lc/d/b/n/d;

    const-string v0, "sourceExtension"

    invoke-static {v0}, Lc/d/b/n/d;->a(Ljava/lang/String;)Lc/d/b/n/d;

    move-result-object v0

    sput-object v0, Lc/d/a/a/i/e/e;->e:Lc/d/b/n/d;

    const-string v0, "sourceExtensionJsonProto3"

    invoke-static {v0}, Lc/d/b/n/d;->a(Ljava/lang/String;)Lc/d/b/n/d;

    move-result-object v0

    sput-object v0, Lc/d/a/a/i/e/e;->f:Lc/d/b/n/d;

    const-string v0, "timezoneOffsetSeconds"

    invoke-static {v0}, Lc/d/b/n/d;->a(Ljava/lang/String;)Lc/d/b/n/d;

    move-result-object v0

    sput-object v0, Lc/d/a/a/i/e/e;->g:Lc/d/b/n/d;

    const-string v0, "networkConnectionInfo"

    invoke-static {v0}, Lc/d/b/n/d;->a(Ljava/lang/String;)Lc/d/b/n/d;

    move-result-object v0

    sput-object v0, Lc/d/a/a/i/e/e;->h:Lc/d/b/n/d;

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

    check-cast p1, Lc/d/a/a/i/e/q;

    check-cast p2, Lc/d/b/n/f;

    .line 1
    sget-object v0, Lc/d/a/a/i/e/e;->b:Lc/d/b/n/d;

    invoke-virtual {p1}, Lc/d/a/a/i/e/q;->b()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lc/d/b/n/f;->a(Lc/d/b/n/d;J)Lc/d/b/n/f;

    sget-object v0, Lc/d/a/a/i/e/e;->c:Lc/d/b/n/d;

    invoke-virtual {p1}, Lc/d/a/a/i/e/q;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lc/d/b/n/f;->e(Lc/d/b/n/d;Ljava/lang/Object;)Lc/d/b/n/f;

    sget-object v0, Lc/d/a/a/i/e/e;->d:Lc/d/b/n/d;

    invoke-virtual {p1}, Lc/d/a/a/i/e/q;->c()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lc/d/b/n/f;->a(Lc/d/b/n/d;J)Lc/d/b/n/f;

    sget-object v0, Lc/d/a/a/i/e/e;->e:Lc/d/b/n/d;

    invoke-virtual {p1}, Lc/d/a/a/i/e/q;->e()[B

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lc/d/b/n/f;->e(Lc/d/b/n/d;Ljava/lang/Object;)Lc/d/b/n/f;

    sget-object v0, Lc/d/a/a/i/e/e;->f:Lc/d/b/n/d;

    invoke-virtual {p1}, Lc/d/a/a/i/e/q;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lc/d/b/n/f;->e(Lc/d/b/n/d;Ljava/lang/Object;)Lc/d/b/n/f;

    sget-object v0, Lc/d/a/a/i/e/e;->g:Lc/d/b/n/d;

    invoke-virtual {p1}, Lc/d/a/a/i/e/q;->g()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lc/d/b/n/f;->a(Lc/d/b/n/d;J)Lc/d/b/n/f;

    sget-object v0, Lc/d/a/a/i/e/e;->h:Lc/d/b/n/d;

    invoke-virtual {p1}, Lc/d/a/a/i/e/q;->d()Lc/d/a/a/i/e/t;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lc/d/b/n/f;->e(Lc/d/b/n/d;Ljava/lang/Object;)Lc/d/b/n/f;

    return-void
.end method
