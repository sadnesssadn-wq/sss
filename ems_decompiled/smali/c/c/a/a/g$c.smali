.class public Lc/c/a/a/g$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:Landroid/graphics/RectF;

.field public d:I

.field public e:Z

.field public f:I

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Lc/c/a/a/g;FFLandroid/graphics/RectF;IZIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, Lc/c/a/a/g$c;->d:I

    iput p2, p0, Lc/c/a/a/g$c;->a:F

    iput p3, p0, Lc/c/a/a/g$c;->b:F

    iput-object p4, p0, Lc/c/a/a/g$c;->c:Landroid/graphics/RectF;

    iput-boolean p6, p0, Lc/c/a/a/g$c;->e:Z

    iput p7, p0, Lc/c/a/a/g$c;->f:I

    iput-boolean p8, p0, Lc/c/a/a/g$c;->g:Z

    iput-boolean p9, p0, Lc/c/a/a/g$c;->h:Z

    return-void
.end method
