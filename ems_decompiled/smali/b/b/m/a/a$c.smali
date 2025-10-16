.class public Lb/b/m/a/a$c;
.super Lb/b/m/a/d$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/m/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public K:Lb/f/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/f/e<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public L:Lb/f/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/f/i<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/b/m/a/a$c;Lb/b/m/a/a;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lb/b/m/a/d$a;-><init>(Lb/b/m/a/d$a;Lb/b/m/a/d;Landroid/content/res/Resources;)V

    if-eqz p1, :cond_0

    iget-object p2, p1, Lb/b/m/a/a$c;->K:Lb/f/e;

    iput-object p2, p0, Lb/b/m/a/a$c;->K:Lb/f/e;

    iget-object p1, p1, Lb/b/m/a/a$c;->L:Lb/f/i;

    goto :goto_0

    :cond_0
    new-instance p1, Lb/f/e;

    invoke-direct {p1}, Lb/f/e;-><init>()V

    iput-object p1, p0, Lb/b/m/a/a$c;->K:Lb/f/e;

    new-instance p1, Lb/f/i;

    invoke-direct {p1}, Lb/f/i;-><init>()V

    :goto_0
    iput-object p1, p0, Lb/b/m/a/a$c;->L:Lb/f/i;

    return-void
.end method

.method public static h(II)J
    .locals 2

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    or-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public e()V
    .locals 1

    iget-object v0, p0, Lb/b/m/a/a$c;->K:Lb/f/e;

    invoke-virtual {v0}, Lb/f/e;->c()Lb/f/e;

    move-result-object v0

    iput-object v0, p0, Lb/b/m/a/a$c;->K:Lb/f/e;

    iget-object v0, p0, Lb/b/m/a/a$c;->L:Lb/f/i;

    invoke-virtual {v0}, Lb/f/i;->b()Lb/f/i;

    move-result-object v0

    iput-object v0, p0, Lb/b/m/a/a$c;->L:Lb/f/i;

    return-void
.end method

.method public i(I)I
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lb/b/m/a/a$c;->L:Lb/f/i;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lb/f/i;->d(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lb/b/m/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/b/m/a/a;-><init>(Lb/b/m/a/a$c;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lb/b/m/a/a;

    invoke-direct {v0, p0, p1}, Lb/b/m/a/a;-><init>(Lb/b/m/a/a$c;Landroid/content/res/Resources;)V

    return-object v0
.end method
