.class public Lc/d/a/c/b0/k$a;
.super Lc/d/a/c/j0/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/c/b0/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lc/d/a/c/j0/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/d/a/c/j0/h;-><init>(Lc/d/a/c/j0/l;)V

    return-void
.end method


# virtual methods
.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
