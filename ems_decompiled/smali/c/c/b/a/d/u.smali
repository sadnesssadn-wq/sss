.class public Lc/c/b/a/d/u;
.super Lc/c/b/a/d/o;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# instance fields
.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(FLjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p3}, Lc/c/b/a/d/o;-><init>(FFLandroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Lc/c/b/a/d/u;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "DEPRECATED"

    const-string v1, "Pie entries do not have x values"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1
    iget v0, p0, Lc/c/b/a/d/o;->f:F

    return v0
.end method
