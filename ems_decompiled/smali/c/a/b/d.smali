.class public Lc/a/b/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/b/n;


# instance fields
.field public a:I

.field public b:I

.field public final c:I

.field public final d:F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x9c4

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lc/a/b/d;-><init>(IIF)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lc/a/b/d;->a:I

    iput p2, p0, Lc/a/b/d;->c:I

    iput p3, p0, Lc/a/b/d;->d:F

    return-void
.end method
