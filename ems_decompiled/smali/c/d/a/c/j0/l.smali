.class public Lc/d/a/c/j0/l;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/c/j0/l$b;
    }
.end annotation


# static fields
.field public static final m:Lc/d/a/c/j0/c;


# instance fields
.field public a:Lc/d/a/c/j0/d;

.field public b:Lc/d/a/c/j0/d;

.field public c:Lc/d/a/c/j0/d;

.field public d:Lc/d/a/c/j0/d;

.field public e:Lc/d/a/c/j0/c;

.field public f:Lc/d/a/c/j0/c;

.field public g:Lc/d/a/c/j0/c;

.field public h:Lc/d/a/c/j0/c;

.field public i:Lc/d/a/c/j0/f;

.field public j:Lc/d/a/c/j0/f;

.field public k:Lc/d/a/c/j0/f;

.field public l:Lc/d/a/c/j0/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/d/a/c/j0/j;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lc/d/a/c/j0/j;-><init>(F)V

    sput-object v0, Lc/d/a/c/j0/l;->m:Lc/d/a/c/j0/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance v0, Lc/d/a/c/j0/k;

    invoke-direct {v0}, Lc/d/a/c/j0/k;-><init>()V

    .line 2
    iput-object v0, p0, Lc/d/a/c/j0/l;->a:Lc/d/a/c/j0/d;

    .line 3
    new-instance v0, Lc/d/a/c/j0/k;

    invoke-direct {v0}, Lc/d/a/c/j0/k;-><init>()V

    .line 4
    iput-object v0, p0, Lc/d/a/c/j0/l;->b:Lc/d/a/c/j0/d;

    .line 5
    new-instance v0, Lc/d/a/c/j0/k;

    invoke-direct {v0}, Lc/d/a/c/j0/k;-><init>()V

    .line 6
    iput-object v0, p0, Lc/d/a/c/j0/l;->c:Lc/d/a/c/j0/d;

    .line 7
    new-instance v0, Lc/d/a/c/j0/k;

    invoke-direct {v0}, Lc/d/a/c/j0/k;-><init>()V

    .line 8
    iput-object v0, p0, Lc/d/a/c/j0/l;->d:Lc/d/a/c/j0/d;

    new-instance v0, Lc/d/a/c/j0/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/d/a/c/j0/a;-><init>(F)V

    iput-object v0, p0, Lc/d/a/c/j0/l;->e:Lc/d/a/c/j0/c;

    new-instance v0, Lc/d/a/c/j0/a;

    invoke-direct {v0, v1}, Lc/d/a/c/j0/a;-><init>(F)V

    iput-object v0, p0, Lc/d/a/c/j0/l;->f:Lc/d/a/c/j0/c;

    new-instance v0, Lc/d/a/c/j0/a;

    invoke-direct {v0, v1}, Lc/d/a/c/j0/a;-><init>(F)V

    iput-object v0, p0, Lc/d/a/c/j0/l;->g:Lc/d/a/c/j0/c;

    new-instance v0, Lc/d/a/c/j0/a;

    invoke-direct {v0, v1}, Lc/d/a/c/j0/a;-><init>(F)V

    iput-object v0, p0, Lc/d/a/c/j0/l;->h:Lc/d/a/c/j0/c;

    .line 9
    new-instance v0, Lc/d/a/c/j0/f;

    invoke-direct {v0}, Lc/d/a/c/j0/f;-><init>()V

    .line 10
    iput-object v0, p0, Lc/d/a/c/j0/l;->i:Lc/d/a/c/j0/f;

    .line 11
    new-instance v0, Lc/d/a/c/j0/f;

    invoke-direct {v0}, Lc/d/a/c/j0/f;-><init>()V

    .line 12
    iput-object v0, p0, Lc/d/a/c/j0/l;->j:Lc/d/a/c/j0/f;

    .line 13
    new-instance v0, Lc/d/a/c/j0/f;

    invoke-direct {v0}, Lc/d/a/c/j0/f;-><init>()V

    .line 14
    iput-object v0, p0, Lc/d/a/c/j0/l;->k:Lc/d/a/c/j0/f;

    .line 15
    new-instance v0, Lc/d/a/c/j0/f;

    invoke-direct {v0}, Lc/d/a/c/j0/f;-><init>()V

    .line 16
    iput-object v0, p0, Lc/d/a/c/j0/l;->l:Lc/d/a/c/j0/f;

    return-void
.end method

.method public constructor <init>(Lc/d/a/c/j0/l$b;Lc/d/a/c/j0/l$a;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iget-object p2, p1, Lc/d/a/c/j0/l$b;->a:Lc/d/a/c/j0/d;

    .line 19
    iput-object p2, p0, Lc/d/a/c/j0/l;->a:Lc/d/a/c/j0/d;

    .line 20
    iget-object p2, p1, Lc/d/a/c/j0/l$b;->b:Lc/d/a/c/j0/d;

    .line 21
    iput-object p2, p0, Lc/d/a/c/j0/l;->b:Lc/d/a/c/j0/d;

    .line 22
    iget-object p2, p1, Lc/d/a/c/j0/l$b;->c:Lc/d/a/c/j0/d;

    .line 23
    iput-object p2, p0, Lc/d/a/c/j0/l;->c:Lc/d/a/c/j0/d;

    .line 24
    iget-object p2, p1, Lc/d/a/c/j0/l$b;->d:Lc/d/a/c/j0/d;

    .line 25
    iput-object p2, p0, Lc/d/a/c/j0/l;->d:Lc/d/a/c/j0/d;

    .line 26
    iget-object p2, p1, Lc/d/a/c/j0/l$b;->e:Lc/d/a/c/j0/c;

    .line 27
    iput-object p2, p0, Lc/d/a/c/j0/l;->e:Lc/d/a/c/j0/c;

    .line 28
    iget-object p2, p1, Lc/d/a/c/j0/l$b;->f:Lc/d/a/c/j0/c;

    .line 29
    iput-object p2, p0, Lc/d/a/c/j0/l;->f:Lc/d/a/c/j0/c;

    .line 30
    iget-object p2, p1, Lc/d/a/c/j0/l$b;->g:Lc/d/a/c/j0/c;

    .line 31
    iput-object p2, p0, Lc/d/a/c/j0/l;->g:Lc/d/a/c/j0/c;

    .line 32
    iget-object p2, p1, Lc/d/a/c/j0/l$b;->h:Lc/d/a/c/j0/c;

    .line 33
    iput-object p2, p0, Lc/d/a/c/j0/l;->h:Lc/d/a/c/j0/c;

    .line 34
    iget-object p2, p1, Lc/d/a/c/j0/l$b;->i:Lc/d/a/c/j0/f;

    .line 35
    iput-object p2, p0, Lc/d/a/c/j0/l;->i:Lc/d/a/c/j0/f;

    .line 36
    iget-object p2, p1, Lc/d/a/c/j0/l$b;->j:Lc/d/a/c/j0/f;

    .line 37
    iput-object p2, p0, Lc/d/a/c/j0/l;->j:Lc/d/a/c/j0/f;

    .line 38
    iget-object p2, p1, Lc/d/a/c/j0/l$b;->k:Lc/d/a/c/j0/f;

    .line 39
    iput-object p2, p0, Lc/d/a/c/j0/l;->k:Lc/d/a/c/j0/f;

    .line 40
    iget-object p1, p1, Lc/d/a/c/j0/l$b;->l:Lc/d/a/c/j0/f;

    .line 41
    iput-object p1, p0, Lc/d/a/c/j0/l;->l:Lc/d/a/c/j0/f;

    return-void
.end method

.method public static a(Landroid/content/Context;IILc/d/a/c/j0/c;)Lc/d/a/c/j0/l$b;
    .locals 6

    if-eqz p2, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move p1, p2

    move-object p0, v0

    :cond_0
    sget-object p2, Lc/d/a/c/l;->ShapeAppearance:[I

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    :try_start_0
    sget p1, Lc/d/a/c/l;->ShapeAppearance_cornerFamily:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    sget p2, Lc/d/a/c/l;->ShapeAppearance_cornerFamilyTopLeft:I

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    sget v0, Lc/d/a/c/l;->ShapeAppearance_cornerFamilyTopRight:I

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget v1, Lc/d/a/c/l;->ShapeAppearance_cornerFamilyBottomRight:I

    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget v2, Lc/d/a/c/l;->ShapeAppearance_cornerFamilyBottomLeft:I

    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    sget v2, Lc/d/a/c/l;->ShapeAppearance_cornerSize:I

    invoke-static {p0, v2, p3}, Lc/d/a/c/j0/l;->c(Landroid/content/res/TypedArray;ILc/d/a/c/j0/c;)Lc/d/a/c/j0/c;

    move-result-object p3

    sget v2, Lc/d/a/c/l;->ShapeAppearance_cornerSizeTopLeft:I

    invoke-static {p0, v2, p3}, Lc/d/a/c/j0/l;->c(Landroid/content/res/TypedArray;ILc/d/a/c/j0/c;)Lc/d/a/c/j0/c;

    move-result-object v2

    sget v3, Lc/d/a/c/l;->ShapeAppearance_cornerSizeTopRight:I

    invoke-static {p0, v3, p3}, Lc/d/a/c/j0/l;->c(Landroid/content/res/TypedArray;ILc/d/a/c/j0/c;)Lc/d/a/c/j0/c;

    move-result-object v3

    sget v4, Lc/d/a/c/l;->ShapeAppearance_cornerSizeBottomRight:I

    invoke-static {p0, v4, p3}, Lc/d/a/c/j0/l;->c(Landroid/content/res/TypedArray;ILc/d/a/c/j0/c;)Lc/d/a/c/j0/c;

    move-result-object v4

    sget v5, Lc/d/a/c/l;->ShapeAppearance_cornerSizeBottomLeft:I

    invoke-static {p0, v5, p3}, Lc/d/a/c/j0/l;->c(Landroid/content/res/TypedArray;ILc/d/a/c/j0/c;)Lc/d/a/c/j0/c;

    move-result-object p3

    new-instance v5, Lc/d/a/c/j0/l$b;

    invoke-direct {v5}, Lc/d/a/c/j0/l$b;-><init>()V

    .line 1
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->u(I)Lc/d/a/c/j0/d;

    move-result-object p2

    .line 2
    iput-object p2, v5, Lc/d/a/c/j0/l$b;->a:Lc/d/a/c/j0/d;

    invoke-static {p2}, Lc/d/a/c/j0/l$b;->b(Lc/d/a/c/j0/d;)F

    .line 3
    iput-object v2, v5, Lc/d/a/c/j0/l$b;->e:Lc/d/a/c/j0/c;

    .line 4
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->u(I)Lc/d/a/c/j0/d;

    move-result-object p2

    .line 5
    iput-object p2, v5, Lc/d/a/c/j0/l$b;->b:Lc/d/a/c/j0/d;

    invoke-static {p2}, Lc/d/a/c/j0/l$b;->b(Lc/d/a/c/j0/d;)F

    .line 6
    iput-object v3, v5, Lc/d/a/c/j0/l$b;->f:Lc/d/a/c/j0/c;

    .line 7
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->u(I)Lc/d/a/c/j0/d;

    move-result-object p2

    .line 8
    iput-object p2, v5, Lc/d/a/c/j0/l$b;->c:Lc/d/a/c/j0/d;

    invoke-static {p2}, Lc/d/a/c/j0/l$b;->b(Lc/d/a/c/j0/d;)F

    .line 9
    iput-object v4, v5, Lc/d/a/c/j0/l$b;->g:Lc/d/a/c/j0/c;

    .line 10
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->u(I)Lc/d/a/c/j0/d;

    move-result-object p1

    .line 11
    iput-object p1, v5, Lc/d/a/c/j0/l$b;->d:Lc/d/a/c/j0/d;

    invoke-static {p1}, Lc/d/a/c/j0/l$b;->b(Lc/d/a/c/j0/d;)F

    .line 12
    iput-object p3, v5, Lc/d/a/c/j0/l$b;->h:Lc/d/a/c/j0/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v5

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public static b(Landroid/content/Context;Landroid/util/AttributeSet;IILc/d/a/c/j0/c;)Lc/d/a/c/j0/l$b;
    .locals 1

    sget-object v0, Lc/d/a/c/l;->MaterialShape:[I

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lc/d/a/c/l;->MaterialShape_shapeAppearance:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    sget v0, Lc/d/a/c/l;->MaterialShape_shapeAppearanceOverlay:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p0, p2, p3, p4}, Lc/d/a/c/j0/l;->a(Landroid/content/Context;IILc/d/a/c/j0/c;)Lc/d/a/c/j0/l$b;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/res/TypedArray;ILc/d/a/c/j0/c;)Lc/d/a/c/j0/c;
    .locals 2

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    new-instance p2, Lc/d/a/c/j0/a;

    iget p1, p1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p2, p0}, Lc/d/a/c/j0/a;-><init>(F)V

    return-object p2

    :cond_1
    const/4 p0, 0x6

    if-ne v0, p0, :cond_2

    new-instance p0, Lc/d/a/c/j0/j;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    invoke-direct {p0, p1}, Lc/d/a/c/j0/j;-><init>(F)V

    return-object p0

    :cond_2
    return-object p2
.end method


# virtual methods
.method public d(Landroid/graphics/RectF;)Z
    .locals 5

    const-class v0, Lc/d/a/c/j0/f;

    iget-object v1, p0, Lc/d/a/c/j0/l;->l:Lc/d/a/c/j0/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/d/a/c/j0/l;->j:Lc/d/a/c/j0/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/d/a/c/j0/l;->i:Lc/d/a/c/j0/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/d/a/c/j0/l;->k:Lc/d/a/c/j0/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lc/d/a/c/j0/l;->e:Lc/d/a/c/j0/c;

    invoke-interface {v1, p1}, Lc/d/a/c/j0/c;->a(Landroid/graphics/RectF;)F

    move-result v1

    iget-object v4, p0, Lc/d/a/c/j0/l;->f:Lc/d/a/c/j0/c;

    invoke-interface {v4, p1}, Lc/d/a/c/j0/c;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Lc/d/a/c/j0/l;->h:Lc/d/a/c/j0/c;

    invoke-interface {v4, p1}, Lc/d/a/c/j0/c;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Lc/d/a/c/j0/l;->g:Lc/d/a/c/j0/c;

    invoke-interface {v4, p1}, Lc/d/a/c/j0/c;->a(Landroid/graphics/RectF;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iget-object v1, p0, Lc/d/a/c/j0/l;->b:Lc/d/a/c/j0/d;

    instance-of v1, v1, Lc/d/a/c/j0/k;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/d/a/c/j0/l;->a:Lc/d/a/c/j0/d;

    instance-of v1, v1, Lc/d/a/c/j0/k;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/d/a/c/j0/l;->c:Lc/d/a/c/j0/d;

    instance-of v1, v1, Lc/d/a/c/j0/k;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/d/a/c/j0/l;->d:Lc/d/a/c/j0/d;

    instance-of v1, v1, Lc/d/a/c/j0/k;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    return v2
.end method

.method public e(F)Lc/d/a/c/j0/l;
    .locals 1

    .line 1
    new-instance v0, Lc/d/a/c/j0/l$b;

    invoke-direct {v0, p0}, Lc/d/a/c/j0/l$b;-><init>(Lc/d/a/c/j0/l;)V

    .line 2
    invoke-virtual {v0, p1}, Lc/d/a/c/j0/l$b;->c(F)Lc/d/a/c/j0/l$b;

    invoke-virtual {v0}, Lc/d/a/c/j0/l$b;->a()Lc/d/a/c/j0/l;

    move-result-object p1

    return-object p1
.end method
