.class public abstract Lc/c/b/a/e/e;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/c/b/a/d/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget p1, p1, Lc/c/b/a/d/g;->c:F

    .line 2
    invoke-virtual {p0, p1}, Lc/c/b/a/e/e;->b(F)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract b(F)Ljava/lang/String;
.end method

.method public c(FLc/c/b/a/d/u;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lc/c/b/a/e/e;->b(F)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
