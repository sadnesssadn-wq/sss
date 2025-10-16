.class public abstract Lc/c/b/a/d/g;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public c:F

.field public d:Ljava/lang/Object;

.field public e:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc/c/b/a/d/g;->c:F

    const/4 v0, 0x0

    iput-object v0, p0, Lc/c/b/a/d/g;->d:Ljava/lang/Object;

    iput-object v0, p0, Lc/c/b/a/d/g;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc/c/b/a/d/g;->c:F

    const/4 v0, 0x0

    iput-object v0, p0, Lc/c/b/a/d/g;->d:Ljava/lang/Object;

    iput-object v0, p0, Lc/c/b/a/d/g;->e:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lc/c/b/a/d/g;->c:F

    return-void
.end method

.method public constructor <init>(FLandroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc/c/b/a/d/g;->c:F

    const/4 v0, 0x0

    iput-object v0, p0, Lc/c/b/a/d/g;->d:Ljava/lang/Object;

    iput-object v0, p0, Lc/c/b/a/d/g;->e:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lc/c/b/a/d/g;->c:F

    .line 2
    iput-object p2, p0, Lc/c/b/a/d/g;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lc/c/b/a/d/g;->c:F

    return v0
.end method
