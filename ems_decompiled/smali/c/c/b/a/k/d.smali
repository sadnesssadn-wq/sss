.class public Lc/c/b/a/k/d;
.super Lc/c/b/a/k/f$a;
.source ""


# static fields
.field public static d:Lc/c/b/a/k/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/b/a/k/f<",
            "Lc/c/b/a/k/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:D

.field public c:D


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lc/c/b/a/k/d;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lc/c/b/a/k/d;-><init>(DD)V

    const/16 v1, 0x40

    invoke-static {v1, v0}, Lc/c/b/a/k/f;->a(ILc/c/b/a/k/f$a;)Lc/c/b/a/k/f;

    move-result-object v0

    sput-object v0, Lc/c/b/a/k/d;->d:Lc/c/b/a/k/f;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lc/c/b/a/k/f;->e(F)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Lc/c/b/a/k/f$a;-><init>()V

    iput-wide p1, p0, Lc/c/b/a/k/d;->b:D

    iput-wide p3, p0, Lc/c/b/a/k/d;->c:D

    return-void
.end method

.method public static b(DD)Lc/c/b/a/k/d;
    .locals 1

    sget-object v0, Lc/c/b/a/k/d;->d:Lc/c/b/a/k/f;

    invoke-virtual {v0}, Lc/c/b/a/k/f;->b()Lc/c/b/a/k/f$a;

    move-result-object v0

    check-cast v0, Lc/c/b/a/k/d;

    iput-wide p0, v0, Lc/c/b/a/k/d;->b:D

    iput-wide p2, v0, Lc/c/b/a/k/d;->c:D

    return-object v0
.end method


# virtual methods
.method public a()Lc/c/b/a/k/f$a;
    .locals 3

    new-instance v0, Lc/c/b/a/k/d;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lc/c/b/a/k/d;-><init>(DD)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "MPPointD, x: "

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lc/c/b/a/k/d;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lc/c/b/a/k/d;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
