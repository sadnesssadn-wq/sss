.class public Lc/d/a/b/e/m/m/u;
.super Lc/d/a/b/e/m/e;
.source ""


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lc/d/a/b/e/m/e;-><init>()V

    iput-object p1, p0, Lc/d/a/b/e/m/m/u;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lc/d/a/b/e/m/m/u;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lc/d/a/b/e/m/m/u;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
