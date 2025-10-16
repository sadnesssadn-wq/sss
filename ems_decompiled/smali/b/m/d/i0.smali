.class public abstract Lb/m/d/i0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/m/d/i0$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/m/d/i0$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:I

.field public k:Ljava/lang/CharSequence;

.field public l:I

.field public m:Ljava/lang/CharSequence;

.field public n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:Z


# direct methods
.method public constructor <init>(Lb/m/d/u;Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/m/d/i0;->a:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/m/d/i0;->h:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/m/d/i0;->p:Z

    return-void
.end method


# virtual methods
.method public b(ILandroidx/fragment/app/Fragment;)Lb/m/d/i0;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lb/m/d/i0;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public c(Lb/m/d/i0$a;)V
    .locals 1

    iget-object v0, p0, Lb/m/d/i0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lb/m/d/i0;->b:I

    iput v0, p1, Lb/m/d/i0$a;->c:I

    iget v0, p0, Lb/m/d/i0;->c:I

    iput v0, p1, Lb/m/d/i0$a;->d:I

    iget v0, p0, Lb/m/d/i0;->d:I

    iput v0, p1, Lb/m/d/i0$a;->e:I

    iget v0, p0, Lb/m/d/i0;->e:I

    iput v0, p1, Lb/m/d/i0$a;->f:I

    return-void
.end method

.method public d(Ljava/lang/String;)Lb/m/d/i0;
    .locals 1

    iget-boolean v0, p0, Lb/m/d/i0;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/m/d/i0;->g:Z

    iput-object p1, p0, Lb/m/d/i0;->i:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract e()I
.end method

.method public abstract f()V
.end method

.method public abstract g(Landroidx/fragment/app/Fragment;)Lb/m/d/i0;
.end method

.method public abstract h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
.end method

.method public abstract i(Landroidx/fragment/app/Fragment;)Lb/m/d/i0;
.end method

.method public j(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Lb/m/d/i0;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Lb/m/d/i0;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must use non-zero containerViewId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract k(Landroidx/fragment/app/Fragment;Lb/o/f$b;)Lb/m/d/i0;
.end method
