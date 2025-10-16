.class public Lc/d/a/c/j0/h;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Lb/i/g/l/a;
.implements Lc/d/a/c/j0/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/c/j0/h$b;
    }
.end annotation


# static fields
.field public static final y:Ljava/lang/String;

.field public static final z:Landroid/graphics/Paint;


# instance fields
.field public c:Lc/d/a/c/j0/h$b;

.field public final d:[Lc/d/a/c/j0/o$f;

.field public final e:[Lc/d/a/c/j0/o$f;

.field public final f:Ljava/util/BitSet;

.field public g:Z

.field public final h:Landroid/graphics/Matrix;

.field public final i:Landroid/graphics/Path;

.field public final j:Landroid/graphics/Path;

.field public final k:Landroid/graphics/RectF;

.field public final l:Landroid/graphics/RectF;

.field public final m:Landroid/graphics/Region;

.field public final n:Landroid/graphics/Region;

.field public o:Lc/d/a/c/j0/l;

.field public final p:Landroid/graphics/Paint;

.field public final q:Landroid/graphics/Paint;

.field public final r:Lc/d/a/c/i0/a;

.field public final s:Lc/d/a/c/j0/m$b;

.field public final t:Lc/d/a/c/j0/m;

.field public u:Landroid/graphics/PorterDuffColorFilter;

.field public v:Landroid/graphics/PorterDuffColorFilter;

.field public final w:Landroid/graphics/RectF;

.field public x:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lc/d/a/c/j0/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/d/a/c/j0/h;->y:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lc/d/a/c/j0/h;->z:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lc/d/a/c/j0/l;

    invoke-direct {v0}, Lc/d/a/c/j0/l;-><init>()V

    invoke-direct {p0, v0}, Lc/d/a/c/j0/h;-><init>(Lc/d/a/c/j0/l;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 1
    new-instance v0, Lc/d/a/c/j0/a;

    const/4 v1, 0x0

    int-to-float v1, v1

    invoke-direct {v0, v1}, Lc/d/a/c/j0/a;-><init>(F)V

    invoke-static {p1, p2, p3, p4, v0}, Lc/d/a/c/j0/l;->b(Landroid/content/Context;Landroid/util/AttributeSet;IILc/d/a/c/j0/c;)Lc/d/a/c/j0/l$b;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lc/d/a/c/j0/l$b;->a()Lc/d/a/c/j0/l;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/d/a/c/j0/h;-><init>(Lc/d/a/c/j0/l;)V

    return-void
.end method

.method public constructor <init>(Lc/d/a/c/j0/h$b;)V
    .locals 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lc/d/a/c/j0/o$f;

    iput-object v1, p0, Lc/d/a/c/j0/h;->d:[Lc/d/a/c/j0/o$f;

    new-array v0, v0, [Lc/d/a/c/j0/o$f;

    iput-object v0, p0, Lc/d/a/c/j0/h;->e:[Lc/d/a/c/j0/o$f;

    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lc/d/a/c/j0/h;->f:Ljava/util/BitSet;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc/d/a/c/j0/h;->h:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lc/d/a/c/j0/h;->i:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lc/d/a/c/j0/h;->j:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc/d/a/c/j0/h;->k:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc/d/a/c/j0/h;->l:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lc/d/a/c/j0/h;->m:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lc/d/a/c/j0/h;->n:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lc/d/a/c/j0/h;->p:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lc/d/a/c/j0/h;->q:Landroid/graphics/Paint;

    new-instance v3, Lc/d/a/c/i0/a;

    invoke-direct {v3}, Lc/d/a/c/i0/a;-><init>()V

    iput-object v3, p0, Lc/d/a/c/j0/h;->r:Lc/d/a/c/i0/a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 3
    sget-object v3, Lc/d/a/c/j0/m$a;->a:Lc/d/a/c/j0/m;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v3, Lc/d/a/c/j0/m;

    invoke-direct {v3}, Lc/d/a/c/j0/m;-><init>()V

    :goto_0
    iput-object v3, p0, Lc/d/a/c/j0/h;->t:Lc/d/a/c/j0/m;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lc/d/a/c/j0/h;->w:Landroid/graphics/RectF;

    iput-boolean v1, p0, Lc/d/a/c/j0/h;->x:Z

    iput-object p1, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p1, Lc/d/a/c/j0/h;->z:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p0}, Lc/d/a/c/j0/h;->B()Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/d/a/c/j0/h;->A([I)Z

    new-instance p1, Lc/d/a/c/j0/h$a;

    invoke-direct {p1, p0}, Lc/d/a/c/j0/h$a;-><init>(Lc/d/a/c/j0/h;)V

    iput-object p1, p0, Lc/d/a/c/j0/h;->s:Lc/d/a/c/j0/m$b;

    return-void
.end method

.method public constructor <init>(Lc/d/a/c/j0/l;)V
    .locals 2

    new-instance v0, Lc/d/a/c/j0/h$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lc/d/a/c/j0/h$b;-><init>(Lc/d/a/c/j0/l;Lc/d/a/c/z/a;)V

    invoke-direct {p0, v0}, Lc/d/a/c/j0/h;-><init>(Lc/d/a/c/j0/h$b;)V

    return-void
.end method


# virtual methods
.method public final A([I)Z
    .locals 4

    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget-object v0, v0, Lc/d/a/c/j0/h$b;->d:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/c/j0/h;->p:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v2, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget-object v2, v2, Lc/d/a/c/j0/h$b;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lc/d/a/c/j0/h;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget-object v2, v2, Lc/d/a/c/j0/h$b;->e:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc/d/a/c/j0/h;->q:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    iget-object v3, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget-object v3, v3, Lc/d/a/c/j0/h$b;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eq v2, p1, :cond_1

    iget-object v0, p0, Lc/d/a/c/j0/h;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method public final B()Z
    .locals 7

    iget-object v0, p0, Lc/d/a/c/j0/h;->u:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lc/d/a/c/j0/h;->v:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget-object v3, v2, Lc/d/a/c/j0/h$b;->g:Landroid/content/res/ColorStateList;

    iget-object v2, v2, Lc/d/a/c/j0/h$b;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Lc/d/a/c/j0/h;->p:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v2, v4, v5}, Lc/d/a/c/j0/h;->d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Lc/d/a/c/j0/h;->u:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget-object v3, v2, Lc/d/a/c/j0/h$b;->f:Landroid/content/res/ColorStateList;

    iget-object v2, v2, Lc/d/a/c/j0/h$b;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Lc/d/a/c/j0/h;->q:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v2, v4, v6}, Lc/d/a/c/j0/h;->d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Lc/d/a/c/j0/h;->v:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget-boolean v3, v2, Lc/d/a/c/j0/h$b;->u:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc/d/a/c/j0/h;->r:Lc/d/a/c/i0/a;

    iget-object v2, v2, Lc/d/a/c/j0/h$b;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v3, v2}, Lc/d/a/c/i0/a;->a(I)V

    :cond_0
    iget-object v2, p0, Lc/d/a/c/j0/h;->u:Landroid/graphics/PorterDuffColorFilter;

    .line 1
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lc/d/a/c/j0/h;->v:Landroid/graphics/PorterDuffColorFilter;

    .line 3
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :cond_2
    :goto_0
    return v5
.end method

.method public final C()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget v1, v0, Lc/d/a/c/j0/h$b;->o:F

    .line 2
    iget v2, v0, Lc/d/a/c/j0/h$b;->p:F

    add-float/2addr v1, v2

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v2, v2, v1

    float-to-double v2, v2

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, Lc/d/a/c/j0/h$b;->r:I

    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v1, v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lc/d/a/c/j0/h$b;->s:I

    invoke-virtual {p0}, Lc/d/a/c/j0/h;->B()Z

    .line 4
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final b(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lc/d/a/c/j0/h;->c(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget v0, v0, Lc/d/a/c/j0/h$b;->j:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/c/j0/h;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lc/d/a/c/j0/h;->h:Landroid/graphics/Matrix;

    iget-object v1, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget v1, v1, Lc/d/a/c/j0/h$b;->j:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v3

    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object p1, p0, Lc/d/a/c/j0/h;->h:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object p1, p0, Lc/d/a/c/j0/h;->w:Landroid/graphics/RectF;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method public final c(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6

    iget-object v0, p0, Lc/d/a/c/j0/h;->t:Lc/d/a/c/j0/m;

    iget-object v1, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget-object v2, v1, Lc/d/a/c/j0/h$b;->a:Lc/d/a/c/j0/l;

    iget v3, v1, Lc/d/a/c/j0/h$b;->k:F

    iget-object v4, p0, Lc/d/a/c/j0/h;->s:Lc/d/a/c/j0/m$b;

    move-object v1, v2

    move v2, v3

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lc/d/a/c/j0/m;->b(Lc/d/a/c/j0/l;FLandroid/graphics/RectF;Lc/d/a/c/j0/m$b;Landroid/graphics/Path;)V

    return-void
.end method

.method public final d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eqz p4, :cond_1

    invoke-virtual {p0, p1}, Lc/d/a/c/j0/h;->e(I)I

    move-result p1

    :cond_1
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p3, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 2
    invoke-virtual {p3}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lc/d/a/c/j0/h;->e(I)I

    move-result p2

    if-eq p2, p1, :cond_3

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    move-object p3, p1

    :goto_2
    return-object p3
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lc/d/a/c/j0/h;->p:Landroid/graphics/Paint;

    iget-object v1, p0, Lc/d/a/c/j0/h;->u:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lc/d/a/c/j0/h;->p:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, p0, Lc/d/a/c/j0/h;->p:Landroid/graphics/Paint;

    iget-object v2, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget v2, v2, Lc/d/a/c/j0/h$b;->m:I

    ushr-int/lit8 v3, v2, 0x7

    add-int/2addr v2, v3

    mul-int v2, v2, v0

    ushr-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lc/d/a/c/j0/h;->q:Landroid/graphics/Paint;

    iget-object v2, p0, Lc/d/a/c/j0/h;->v:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, p0, Lc/d/a/c/j0/h;->q:Landroid/graphics/Paint;

    iget-object v2, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget v2, v2, Lc/d/a/c/j0/h$b;->l:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lc/d/a/c/j0/h;->q:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    iget-object v2, p0, Lc/d/a/c/j0/h;->q:Landroid/graphics/Paint;

    iget-object v3, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget v3, v3, Lc/d/a/c/j0/h$b;->m:I

    ushr-int/lit8 v4, v3, 0x7

    add-int/2addr v3, v4

    mul-int v3, v3, v1

    ushr-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v2, p0, Lc/d/a/c/j0/h;->g:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 1
    invoke-virtual {p0}, Lc/d/a/c/j0/h;->k()F

    move-result v2

    neg-float v2, v2

    .line 2
    iget-object v4, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget-object v4, v4, Lc/d/a/c/j0/h$b;->a:Lc/d/a/c/j0/l;

    .line 3
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v5, Lc/d/a/c/j0/l$b;

    invoke-direct {v5, v4}, Lc/d/a/c/j0/l$b;-><init>(Lc/d/a/c/j0/l;)V

    .line 5
    iget-object v6, v4, Lc/d/a/c/j0/l;->e:Lc/d/a/c/j0/c;

    .line 6
    instance-of v7, v6, Lc/d/a/c/j0/j;

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v7, Lc/d/a/c/j0/b;

    invoke-direct {v7, v2, v6}, Lc/d/a/c/j0/b;-><init>(FLc/d/a/c/j0/c;)V

    move-object v6, v7

    .line 7
    :goto_0
    iput-object v6, v5, Lc/d/a/c/j0/l$b;->e:Lc/d/a/c/j0/c;

    .line 8
    iget-object v6, v4, Lc/d/a/c/j0/l;->f:Lc/d/a/c/j0/c;

    .line 9
    instance-of v7, v6, Lc/d/a/c/j0/j;

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    new-instance v7, Lc/d/a/c/j0/b;

    invoke-direct {v7, v2, v6}, Lc/d/a/c/j0/b;-><init>(FLc/d/a/c/j0/c;)V

    move-object v6, v7

    .line 10
    :goto_1
    iput-object v6, v5, Lc/d/a/c/j0/l$b;->f:Lc/d/a/c/j0/c;

    .line 11
    iget-object v6, v4, Lc/d/a/c/j0/l;->h:Lc/d/a/c/j0/c;

    .line 12
    instance-of v7, v6, Lc/d/a/c/j0/j;

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    new-instance v7, Lc/d/a/c/j0/b;

    invoke-direct {v7, v2, v6}, Lc/d/a/c/j0/b;-><init>(FLc/d/a/c/j0/c;)V

    move-object v6, v7

    .line 13
    :goto_2
    iput-object v6, v5, Lc/d/a/c/j0/l$b;->h:Lc/d/a/c/j0/c;

    .line 14
    iget-object v4, v4, Lc/d/a/c/j0/l;->g:Lc/d/a/c/j0/c;

    .line 15
    instance-of v6, v4, Lc/d/a/c/j0/j;

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    new-instance v6, Lc/d/a/c/j0/b;

    invoke-direct {v6, v2, v4}, Lc/d/a/c/j0/b;-><init>(FLc/d/a/c/j0/c;)V

    move-object v4, v6

    .line 16
    :goto_3
    iput-object v4, v5, Lc/d/a/c/j0/l$b;->g:Lc/d/a/c/j0/c;

    .line 17
    invoke-virtual {v5}, Lc/d/a/c/j0/l$b;->a()Lc/d/a/c/j0/l;

    move-result-object v2

    .line 18
    iput-object v2, p0, Lc/d/a/c/j0/h;->o:Lc/d/a/c/j0/l;

    iget-object v4, p0, Lc/d/a/c/j0/h;->t:Lc/d/a/c/j0/m;

    iget-object v5, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget v5, v5, Lc/d/a/c/j0/h$b;->k:F

    .line 19
    iget-object v6, p0, Lc/d/a/c/j0/h;->l:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lc/d/a/c/j0/h;->h()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lc/d/a/c/j0/h;->k()F

    move-result v6

    iget-object v7, p0, Lc/d/a/c/j0/h;->l:Landroid/graphics/RectF;

    invoke-virtual {v7, v6, v6}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v6, p0, Lc/d/a/c/j0/h;->l:Landroid/graphics/RectF;

    .line 20
    iget-object v7, p0, Lc/d/a/c/j0/h;->j:Landroid/graphics/Path;

    invoke-virtual {v4, v2, v5, v6, v7}, Lc/d/a/c/j0/m;->a(Lc/d/a/c/j0/l;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 21
    invoke-virtual {p0}, Lc/d/a/c/j0/h;->h()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v4, p0, Lc/d/a/c/j0/h;->i:Landroid/graphics/Path;

    invoke-virtual {p0, v2, v4}, Lc/d/a/c/j0/h;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iput-boolean v3, p0, Lc/d/a/c/j0/h;->g:Z

    .line 22
    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v4, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget v5, v4, Lc/d/a/c/j0/h$b;->q:I

    const/16 v6, 0x15

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v5, v8, :cond_8

    iget v4, v4, Lc/d/a/c/j0/h$b;->r:I

    if-lez v4, :cond_8

    if-eq v5, v7, :cond_7

    if-lt v2, v6, :cond_6

    .line 23
    invoke-virtual {p0}, Lc/d/a/c/j0/h;->o()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lc/d/a/c/j0/h;->i:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->isConvex()Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x1d

    if-ge v2, v4, :cond_5

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v4, 0x1

    :goto_5
    if-eqz v4, :cond_8

    :cond_7
    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    :goto_6
    if-nez v4, :cond_9

    goto/16 :goto_8

    .line 24
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 25
    invoke-virtual {p0}, Lc/d/a/c/j0/h;->i()I

    move-result v4

    invoke-virtual {p0}, Lc/d/a/c/j0/h;->j()I

    move-result v5

    if-ge v2, v6, :cond_a

    iget-boolean v2, p0, Lc/d/a/c/j0/h;->x:Z

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v6, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget v6, v6, Lc/d/a/c/j0/h$b;->r:I

    neg-int v6, v6

    invoke-virtual {v2, v6, v6}, Landroid/graphics/Rect;->inset(II)V

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    sget-object v6, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_a
    int-to-float v2, v4

    int-to-float v4, v5

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 26
    iget-boolean v2, p0, Lc/d/a/c/j0/h;->x:Z

    if-nez v2, :cond_b

    invoke-virtual {p0, p1}, Lc/d/a/c/j0/h;->f(Landroid/graphics/Canvas;)V

    goto :goto_7

    :cond_b
    iget-object v2, p0, Lc/d/a/c/j0/h;->w:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    iget-object v4, p0, Lc/d/a/c/j0/h;->w:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    if-ltz v2, :cond_10

    if-ltz v4, :cond_10

    iget-object v5, p0, Lc/d/a/c/j0/h;->w:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget v6, v6, Lc/d/a/c/j0/h$b;->r:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    add-int/2addr v6, v2

    iget-object v5, p0, Lc/d/a/c/j0/h;->w:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    iget-object v9, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget v9, v9, Lc/d/a/c/j0/h$b;->r:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v5

    add-int/2addr v9, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v9, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget v9, v9, Lc/d/a/c/j0/h$b;->r:I

    sub-int/2addr v7, v9

    sub-int/2addr v7, v2

    int-to-float v2, v7

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget v9, v9, Lc/d/a/c/j0/h$b;->r:I

    sub-int/2addr v7, v9

    sub-int/2addr v7, v4

    int-to-float v4, v7

    neg-float v7, v2

    neg-float v9, v4

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, v6}, Lc/d/a/c/j0/h;->f(Landroid/graphics/Canvas;)V

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v2, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :goto_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 27
    :goto_8
    iget-object v2, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget-object v4, v2, Lc/d/a/c/j0/h$b;->v:Landroid/graphics/Paint$Style;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v4, v5, :cond_c

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    if-ne v4, v5, :cond_d

    :cond_c
    const/4 v3, 0x1

    :cond_d
    if-eqz v3, :cond_e

    .line 28
    iget-object v6, p0, Lc/d/a/c/j0/h;->p:Landroid/graphics/Paint;

    iget-object v7, p0, Lc/d/a/c/j0/h;->i:Landroid/graphics/Path;

    iget-object v8, v2, Lc/d/a/c/j0/h$b;->a:Lc/d/a/c/j0/l;

    invoke-virtual {p0}, Lc/d/a/c/j0/h;->h()Landroid/graphics/RectF;

    move-result-object v9

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lc/d/a/c/j0/h;->g(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lc/d/a/c/j0/l;Landroid/graphics/RectF;)V

    .line 29
    :cond_e
    invoke-virtual {p0}, Lc/d/a/c/j0/h;->m()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 30
    iget-object v5, p0, Lc/d/a/c/j0/h;->q:Landroid/graphics/Paint;

    iget-object v6, p0, Lc/d/a/c/j0/h;->j:Landroid/graphics/Path;

    iget-object v7, p0, Lc/d/a/c/j0/h;->o:Lc/d/a/c/j0/l;

    .line 31
    iget-object v2, p0, Lc/d/a/c/j0/h;->l:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lc/d/a/c/j0/h;->h()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lc/d/a/c/j0/h;->k()F

    move-result v2

    iget-object v3, p0, Lc/d/a/c/j0/h;->l:Landroid/graphics/RectF;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v8, p0, Lc/d/a/c/j0/h;->l:Landroid/graphics/RectF;

    move-object v3, p0

    move-object v4, p1

    .line 32
    invoke-virtual/range {v3 .. v8}, Lc/d/a/c/j0/h;->g(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lc/d/a/c/j0/l;Landroid/graphics/RectF;)V

    .line 33
    :cond_f
    iget-object p1, p0, Lc/d/a/c/j0/h;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lc/d/a/c/j0/h;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    .line 34
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid shadow bounds. Check that the treatments result in a valid path."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget v1, v0, Lc/d/a/c/j0/h$b;->o:F

    .line 2
    iget v2, v0, Lc/d/a/c/j0/h$b;->p:F

    add-float/2addr v1, v2

    .line 3
    iget v2, v0, Lc/d/a/c/j0/h$b;->n:F

    add-float/2addr v1, v2

    .line 4
    iget-object v0, v0, Lc/d/a/c/j0/h$b;->b:Lc/d/a/c/z/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, v1}, Lc/d/a/c/z/a;->a(IF)I

    move-result p1

    :cond_0
    return p1
.end method

.method public final f(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lc/d/a/c/j0/h;->f:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lc/d/a/c/j0/h;->y:Ljava/lang/String;

    const-string v1, "Compatibility shadow requested but can\'t be drawn for all operations in this shape."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget v0, v0, Lc/d/a/c/j0/h$b;->s:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/d/a/c/j0/h;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lc/d/a/c/j0/h;->r:Lc/d/a/c/i0/a;

    .line 1
    iget-object v1, v1, Lc/d/a/c/i0/a;->a:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lc/d/a/c/j0/h;->d:[Lc/d/a/c/j0/o$f;

    aget-object v1, v1, v0

    iget-object v2, p0, Lc/d/a/c/j0/h;->r:Lc/d/a/c/i0/a;

    iget-object v3, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget v3, v3, Lc/d/a/c/j0/h$b;->r:I

    .line 3
    sget-object v4, Lc/d/a/c/j0/o$f;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4, v2, v3, p1}, Lc/d/a/c/j0/o$f;->a(Landroid/graphics/Matrix;Lc/d/a/c/i0/a;ILandroid/graphics/Canvas;)V

    .line 4
    iget-object v1, p0, Lc/d/a/c/j0/h;->e:[Lc/d/a/c/j0/o$f;

    aget-object v1, v1, v0

    iget-object v2, p0, Lc/d/a/c/j0/h;->r:Lc/d/a/c/i0/a;

    iget-object v3, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget v3, v3, Lc/d/a/c/j0/h$b;->r:I

    .line 5
    invoke-virtual {v1, v4, v2, v3, p1}, Lc/d/a/c/j0/o$f;->a(Landroid/graphics/Matrix;Lc/d/a/c/i0/a;ILandroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iget-boolean v0, p0, Lc/d/a/c/j0/h;->x:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lc/d/a/c/j0/h;->i()I

    move-result v0

    invoke-virtual {p0}, Lc/d/a/c/j0/h;->j()I

    move-result v1

    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lc/d/a/c/j0/h;->i:Landroid/graphics/Path;

    sget-object v3, Lc/d/a/c/j0/h;->z:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    return-void
.end method

.method public final g(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lc/d/a/c/j0/l;Landroid/graphics/RectF;)V
    .locals 1

    invoke-virtual {p4, p5}, Lc/d/a/c/j0/l;->d(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1
    iget-object p3, p4, Lc/d/a/c/j0/l;->f:Lc/d/a/c/j0/c;

    .line 2
    invoke-interface {p3, p5}, Lc/d/a/c/j0/c;->a(Landroid/graphics/RectF;)F

    move-result p3

    iget-object p4, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget p4, p4, Lc/d/a/c/j0/h$b;->k:F

    mul-float p3, p3, p4

    invoke-virtual {p1, p5, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget v0, v0, Lc/d/a/c/j0/h$b;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lc/d/a/c/j0/h;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lc/d/a/c/j0/h;->l()F

    move-result v0

    iget-object v1, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget v1, v1, Lc/d/a/c/j0/h$b;->k:F

    mul-float v0, v0, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lc/d/a/c/j0/h;->h()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lc/d/a/c/j0/h;->i:Landroid/graphics/Path;

    invoke-virtual {p0, v0, v1}, Lc/d/a/c/j0/h;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object v0, p0, Lc/d/a/c/j0/h;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    :cond_2
    :try_start_0
    iget-object v0, p0, Lc/d/a/c/j0/h;->i:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget-object v0, v0, Lc/d/a/c/j0/h$b;->i:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lc/d/a/c/j0/h;->m:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Lc/d/a/c/j0/h;->h()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lc/d/a/c/j0/h;->i:Landroid/graphics/Path;

    invoke-virtual {p0, v0, v1}, Lc/d/a/c/j0/h;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object v0, p0, Lc/d/a/c/j0/h;->n:Landroid/graphics/Region;

    iget-object v1, p0, Lc/d/a/c/j0/h;->i:Landroid/graphics/Path;

    iget-object v2, p0, Lc/d/a/c/j0/h;->m:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    iget-object v0, p0, Lc/d/a/c/j0/h;->m:Landroid/graphics/Region;

    iget-object v1, p0, Lc/d/a/c/j0/h;->n:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    iget-object v0, p0, Lc/d/a/c/j0/h;->m:Landroid/graphics/Region;

    return-object v0
.end method

.method public h()Landroid/graphics/RectF;
    .locals 2

    iget-object v0, p0, Lc/d/a/c/j0/h;->k:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lc/d/a/c/j0/h;->k:Landroid/graphics/RectF;

    return-object v0
.end method

.method public i()I
    .locals 5

    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget v1, v0, Lc/d/a/c/j0/h$b;->s:I

    int-to-double v1, v1

    iget v0, v0, Lc/d/a/c/j0/h$b;->t:I

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    double-to-int v0, v3

    return v0
.end method

.method public invalidateSelf()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/d/a/c/j0/h;->g:Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget-object v0, v0, Lc/d/a/c/j0/h$b;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget-object v0, v0, Lc/d/a/c/j0/h$b;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget-object v0, v0, Lc/d/a/c/j0/h$b;->e:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget-object v0, v0, Lc/d/a/c/j0/h$b;->d:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public j()I
    .locals 5

    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget v1, v0, Lc/d/a/c/j0/h$b;->s:I

    int-to-double v1, v1

    iget v0, v0, Lc/d/a/c/j0/h$b;->t:I

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    double-to-int v0, v3

    return v0
.end method

.method public final k()F
    .locals 2

    invoke-virtual {p0}, Lc/d/a/c/j0/h;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/c/j0/h;->q:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public l()F
    .locals 2

    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget-object v0, v0, Lc/d/a/c/j0/h$b;->a:Lc/d/a/c/j0/l;

    .line 1
    iget-object v0, v0, Lc/d/a/c/j0/l;->e:Lc/d/a/c/j0/c;

    .line 2
    invoke-virtual {p0}, Lc/d/a/c/j0/h;->h()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/d/a/c/j0/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public final m()Z
    .locals 2

    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget-object v0, v0, Lc/d/a/c/j0/h$b;->v:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lc/d/a/c/j0/h;->q:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lc/d/a/c/j0/h$b;

    iget-object v1, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    invoke-direct {v0, v1}, Lc/d/a/c/j0/h$b;-><init>(Lc/d/a/c/j0/h$b;)V

    iput-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    return-object p0
.end method

.method public n(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    new-instance v1, Lc/d/a/c/z/a;

    invoke-direct {v1, p1}, Lc/d/a/c/z/a;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lc/d/a/c/j0/h$b;->b:Lc/d/a/c/z/a;

    invoke-virtual {p0}, Lc/d/a/c/j0/h;->C()V

    return-void
.end method

.method public o()Z
    .locals 2

    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget-object v0, v0, Lc/d/a/c/j0/h$b;->a:Lc/d/a/c/j0/l;

    invoke-virtual {p0}, Lc/d/a/c/j0/h;->h()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/d/a/c/j0/l;->d(Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/d/a/c/j0/h;->g:Z

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lc/d/a/c/j0/h;->A([I)Z

    move-result p1

    invoke-virtual {p0}, Lc/d/a/c/j0/h;->B()Z

    move-result v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lc/d/a/c/j0/h;->invalidateSelf()V

    :cond_2
    return p1
.end method

.method public p(F)V
    .locals 2

    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget v1, v0, Lc/d/a/c/j0/h$b;->o:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lc/d/a/c/j0/h$b;->o:F

    invoke-virtual {p0}, Lc/d/a/c/j0/h;->C()V

    :cond_0
    return-void
.end method

.method public q(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget-object v1, v0, Lc/d/a/c/j0/h$b;->d:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lc/d/a/c/j0/h$b;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/d/a/c/j0/h;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public r(F)V
    .locals 2

    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget v1, v0, Lc/d/a/c/j0/h$b;->k:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lc/d/a/c/j0/h$b;->k:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/d/a/c/j0/h;->g:Z

    invoke-virtual {p0}, Lc/d/a/c/j0/h;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public s(Landroid/graphics/Paint$Style;)V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iput-object p1, v0, Lc/d/a/c/j0/h$b;->v:Landroid/graphics/Paint$Style;

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 2

    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget v1, v0, Lc/d/a/c/j0/h$b;->m:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lc/d/a/c/j0/h$b;->m:I

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iput-object p1, v0, Lc/d/a/c/j0/h$b;->c:Landroid/graphics/ColorFilter;

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setShapeAppearanceModel(Lc/d/a/c/j0/l;)V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iput-object p1, v0, Lc/d/a/c/j0/h$b;->a:Lc/d/a/c/j0/l;

    invoke-virtual {p0}, Lc/d/a/c/j0/h;->invalidateSelf()V

    return-void
.end method

.method public setTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/d/a/c/j0/h;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iput-object p1, v0, Lc/d/a/c/j0/h$b;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lc/d/a/c/j0/h;->B()Z

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget-object v1, v0, Lc/d/a/c/j0/h$b;->h:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lc/d/a/c/j0/h$b;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Lc/d/a/c/j0/h;->B()Z

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public t(I)V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/j0/h;->r:Lc/d/a/c/i0/a;

    invoke-virtual {v0, p1}, Lc/d/a/c/i0/a;->a(I)V

    iget-object p1, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lc/d/a/c/j0/h$b;->u:Z

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public u(I)V
    .locals 2

    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget v1, v0, Lc/d/a/c/j0/h$b;->t:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lc/d/a/c/j0/h$b;->t:I

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public v(I)V
    .locals 2

    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget v1, v0, Lc/d/a/c/j0/h$b;->q:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lc/d/a/c/j0/h$b;->q:I

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public w(FI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iput p1, v0, Lc/d/a/c/j0/h$b;->l:F

    invoke-virtual {p0}, Lc/d/a/c/j0/h;->invalidateSelf()V

    .line 2
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/d/a/c/j0/h;->y(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public x(FLandroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iput p1, v0, Lc/d/a/c/j0/h$b;->l:F

    invoke-virtual {p0}, Lc/d/a/c/j0/h;->invalidateSelf()V

    .line 2
    invoke-virtual {p0, p2}, Lc/d/a/c/j0/h;->y(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public y(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget-object v1, v0, Lc/d/a/c/j0/h$b;->e:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lc/d/a/c/j0/h$b;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/d/a/c/j0/h;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public z(F)V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iput p1, v0, Lc/d/a/c/j0/h$b;->l:F

    invoke-virtual {p0}, Lc/d/a/c/j0/h;->invalidateSelf()V

    return-void
.end method
