.class public abstract Lb/m/d/d0;
.super Lb/x/a/a;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Lb/m/d/y;

.field public final b:I

.field public c:Lb/m/d/i0;

.field public d:Landroidx/fragment/app/Fragment;

.field public e:Z


# direct methods
.method public constructor <init>(Lb/m/d/y;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lb/x/a/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/m/d/d0;->c:Lb/m/d/i0;

    iput-object v0, p0, Lb/m/d/d0;->d:Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Lb/m/d/d0;->a:Lb/m/d/y;

    const/4 p1, 0x0

    iput p1, p0, Lb/m/d/d0;->b:I

    return-void
.end method

.method public constructor <init>(Lb/m/d/y;I)V
    .locals 1

    invoke-direct {p0}, Lb/x/a/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/m/d/d0;->c:Lb/m/d/i0;

    iput-object v0, p0, Lb/m/d/d0;->d:Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Lb/m/d/d0;->a:Lb/m/d/y;

    iput p2, p0, Lb/m/d/d0;->b:I

    return-void
.end method

.method public static a(IJ)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Landroidx/fragment/app/Fragment;

    iget-object p1, p0, Lb/m/d/d0;->c:Lb/m/d/i0;

    if-nez p1, :cond_0

    iget-object p1, p0, Lb/m/d/d0;->a:Lb/m/d/y;

    .line 1
    new-instance p2, Lb/m/d/a;

    invoke-direct {p2, p1}, Lb/m/d/a;-><init>(Lb/m/d/y;)V

    .line 2
    iput-object p2, p0, Lb/m/d/d0;->c:Lb/m/d/i0;

    :cond_0
    iget-object p1, p0, Lb/m/d/d0;->c:Lb/m/d/i0;

    invoke-virtual {p1, p3}, Lb/m/d/i0;->g(Landroidx/fragment/app/Fragment;)Lb/m/d/i0;

    iget-object p1, p0, Lb/m/d/d0;->d:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lb/m/d/d0;->d:Landroidx/fragment/app/Fragment;

    :cond_1
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 2

    iget-object p1, p0, Lb/m/d/d0;->c:Lb/m/d/i0;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lb/m/d/d0;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lb/m/d/d0;->e:Z

    invoke-virtual {p1}, Lb/m/d/i0;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lb/m/d/d0;->e:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lb/m/d/d0;->e:Z

    throw p1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lb/m/d/d0;->c:Lb/m/d/i0;

    :cond_1
    return-void
.end method

.method public abstract getItem(I)Landroidx/fragment/app/Fragment;
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lb/m/d/d0;->c:Lb/m/d/i0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/m/d/d0;->a:Lb/m/d/y;

    .line 1
    new-instance v1, Lb/m/d/a;

    invoke-direct {v1, v0}, Lb/m/d/a;-><init>(Lb/m/d/y;)V

    .line 2
    iput-object v1, p0, Lb/m/d/d0;->c:Lb/m/d/i0;

    :cond_0
    int-to-long v0, p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-static {v2, v0, v1}, Lb/m/d/d0;->a(IJ)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lb/m/d/d0;->a:Lb/m/d/y;

    invoke-virtual {v3, v2}, Lb/m/d/y;->I(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object p1, p0, Lb/m/d/d0;->c:Lb/m/d/i0;

    .line 3
    new-instance p2, Lb/m/d/i0$a;

    const/4 v0, 0x7

    invoke-direct {p2, v0, v2}, Lb/m/d/i0$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p1, p2}, Lb/m/d/i0;->c(Lb/m/d/i0$a;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, p2}, Lb/m/d/d0;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    iget-object p2, p0, Lb/m/d/d0;->c:Lb/m/d/i0;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-static {p1, v0, v1}, Lb/m/d/d0;->a(IJ)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p2, v4, v2, p1, v3}, Lb/m/d/i0;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 6
    :goto_0
    iget-object p1, p0, Lb/m/d/d0;->d:Landroidx/fragment/app/Fragment;

    if-eq v2, p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    iget p2, p0, Lb/m/d/d0;->b:I

    if-ne p2, v3, :cond_2

    iget-object p1, p0, Lb/m/d/d0;->c:Lb/m/d/i0;

    sget-object p2, Lb/o/f$b;->f:Lb/o/f$b;

    invoke-virtual {p1, v2, p2}, Lb/m/d/i0;->k(Landroidx/fragment/app/Fragment;Lb/o/f$b;)Lb/m/d/i0;

    goto :goto_1

    :cond_2
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_3
    :goto_1
    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    check-cast p3, Landroidx/fragment/app/Fragment;

    iget-object p1, p0, Lb/m/d/d0;->d:Landroidx/fragment/app/Fragment;

    if-eq p3, p1, :cond_5

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    iget p1, p0, Lb/m/d/d0;->b:I

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lb/m/d/d0;->c:Lb/m/d/i0;

    if-nez p1, :cond_0

    iget-object p1, p0, Lb/m/d/d0;->a:Lb/m/d/y;

    .line 1
    new-instance v0, Lb/m/d/a;

    invoke-direct {v0, p1}, Lb/m/d/a;-><init>(Lb/m/d/y;)V

    .line 2
    iput-object v0, p0, Lb/m/d/d0;->c:Lb/m/d/i0;

    :cond_0
    iget-object p1, p0, Lb/m/d/d0;->c:Lb/m/d/i0;

    iget-object v0, p0, Lb/m/d/d0;->d:Landroidx/fragment/app/Fragment;

    sget-object v1, Lb/o/f$b;->f:Lb/o/f$b;

    invoke-virtual {p1, v0, v1}, Lb/m/d/i0;->k(Landroidx/fragment/app/Fragment;Lb/o/f$b;)Lb/m/d/i0;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lb/m/d/d0;->d:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_2
    :goto_0
    invoke-virtual {p3, p2}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    iget p1, p0, Lb/m/d/d0;->b:I

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lb/m/d/d0;->c:Lb/m/d/i0;

    if-nez p1, :cond_3

    iget-object p1, p0, Lb/m/d/d0;->a:Lb/m/d/y;

    .line 3
    new-instance p2, Lb/m/d/a;

    invoke-direct {p2, p1}, Lb/m/d/a;-><init>(Lb/m/d/y;)V

    .line 4
    iput-object p2, p0, Lb/m/d/d0;->c:Lb/m/d/i0;

    :cond_3
    iget-object p1, p0, Lb/m/d/d0;->c:Lb/m/d/i0;

    sget-object p2, Lb/o/f$b;->g:Lb/o/f$b;

    invoke-virtual {p1, p3, p2}, Lb/m/d/i0;->k(Landroidx/fragment/app/Fragment;Lb/o/f$b;)Lb/m/d/i0;

    goto :goto_1

    :cond_4
    invoke-virtual {p3, p2}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :goto_1
    iput-object p3, p0, Lb/m/d/d0;->d:Landroidx/fragment/app/Fragment;

    :cond_5
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewPager with adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " requires a view id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
