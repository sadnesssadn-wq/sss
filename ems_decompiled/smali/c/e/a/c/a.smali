.class public final Lc/e/a/c/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lc/e/a/b/m/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0xd33

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    aget v0, v0, v2

    const/16 v1, 0x800

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Lc/e/a/b/m/e;

    invoke-direct {v1, v0, v0}, Lc/e/a/b/m/e;-><init>(II)V

    sput-object v1, Lc/e/a/c/a;->a:Lc/e/a/b/m/e;

    return-void
.end method
