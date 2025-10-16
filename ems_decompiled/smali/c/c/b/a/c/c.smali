.class public Lc/c/b/a/c/c;
.super Lc/c/b/a/c/b;
.source ""


# instance fields
.field public f:Ljava/lang/String;

.field public g:Landroid/graphics/Paint$Align;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lc/c/b/a/c/b;-><init>()V

    const-string v0, "Description Label"

    iput-object v0, p0, Lc/c/b/a/c/c;->f:Ljava/lang/String;

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lc/c/b/a/c/c;->g:Landroid/graphics/Paint$Align;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lc/c/b/a/k/i;->d(F)F

    move-result v0

    iput v0, p0, Lc/c/b/a/c/b;->d:F

    return-void
.end method
