.class public Lc/d/a/b/k/g;
.super Landroidx/fragment/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/k/g$b;,
        Lc/d/a/b/k/g$a;
    }
.end annotation


# instance fields
.field public final c:Lc/d/a/b/k/g$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lc/d/a/b/k/g$b;

    invoke-direct {v0, p0}, Lc/d/a/b/k/g$b;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lc/d/a/b/k/g;->c:Lc/d/a/b/k/g$b;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-class v0, Lc/d/a/b/k/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iget-object v0, p0, Lc/d/a/b/k/g;->c:Lc/d/a/b/k/g$b;

    .line 1
    iput-object p1, v0, Lc/d/a/b/k/g$b;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Lc/d/a/b/k/g$b;->d()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lc/d/a/b/k/g;->c:Lc/d/a/b/k/g$b;

    .line 1
    new-instance v1, Lc/d/a/b/f/h;

    invoke-direct {v1, v0, p1}, Lc/d/a/b/f/h;-><init>(Lc/d/a/b/f/a;Landroid/os/Bundle;)V

    invoke-virtual {v0, p1, v1}, Lc/d/a/b/f/a;->c(Landroid/os/Bundle;Lc/d/a/b/f/a$a;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    iget-object v6, p0, Lc/d/a/b/k/g;->c:Lc/d/a/b/k/g$b;

    .line 1
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v8, Lc/d/a/b/f/k;

    move-object v0, v8

    move-object v1, v6

    move-object v2, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lc/d/a/b/f/k;-><init>(Lc/d/a/b/f/a;Landroid/widget/FrameLayout;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    invoke-virtual {v6, p3, v8}, Lc/d/a/b/f/a;->c(Landroid/os/Bundle;Lc/d/a/b/f/a$a;)V

    iget-object p1, v6, Lc/d/a/b/f/a;->a:Lc/d/a/b/f/c;

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lc/d/a/b/e/d;->c:Ljava/lang/Object;

    sget-object p1, Lc/d/a/b/e/d;->d:Lc/d/a/b/e/d;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p3}, Lc/d/a/b/e/d;->d(Landroid/content/Context;)I

    move-result v0

    invoke-static {p3, v0}, Lc/d/a/b/e/p/z;->e(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v0}, Lc/d/a/b/e/p/z;->f(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v0, v1}, Lc/d/a/b/e/d;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v1, 0x1020019

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lc/d/a/b/f/j;

    invoke-direct {v1, p3, p1}, Lc/d/a/b/f/j;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    :cond_0
    invoke-virtual {v7, p2}, Landroid/view/View;->setClickable(Z)V

    return-object v7
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lc/d/a/b/k/g;->c:Lc/d/a/b/k/g$b;

    .line 1
    iget-object v1, v0, Lc/d/a/b/f/a;->a:Lc/d/a/b/f/c;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lc/d/a/b/f/c;->f()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc/d/a/b/f/a;->b(I)V

    .line 2
    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    iget-object v0, p0, Lc/d/a/b/k/g;->c:Lc/d/a/b/k/g$b;

    .line 1
    iget-object v1, v0, Lc/d/a/b/f/a;->a:Lc/d/a/b/f/c;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lc/d/a/b/f/c;->m()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lc/d/a/b/f/a;->b(I)V

    .line 2
    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    iget-object v1, p0, Lc/d/a/b/k/g;->c:Lc/d/a/b/k/g$b;

    .line 1
    iput-object p1, v1, Lc/d/a/b/k/g$b;->g:Landroid/app/Activity;

    invoke-virtual {v1}, Lc/d/a/b/k/g$b;->d()V

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/maps/GoogleMapOptions;->v(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object p2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "MapOptions"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p2, p0, Lc/d/a/b/k/g;->c:Lc/d/a/b/k/g$b;

    .line 3
    new-instance v2, Lc/d/a/b/f/i;

    invoke-direct {v2, p2, p1, v1, p3}, Lc/d/a/b/f/i;-><init>(Lc/d/a/b/f/a;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {p2, p3, v2}, Lc/d/a/b/f/a;->c(Landroid/os/Bundle;Lc/d/a/b/f/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p1
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Lc/d/a/b/k/g;->c:Lc/d/a/b/k/g$b;

    .line 1
    iget-object v0, v0, Lc/d/a/b/f/a;->a:Lc/d/a/b/f/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc/d/a/b/f/c;->onLowMemory()V

    .line 2
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onLowMemory()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lc/d/a/b/k/g;->c:Lc/d/a/b/k/g$b;

    .line 1
    iget-object v1, v0, Lc/d/a/b/f/a;->a:Lc/d/a/b/f/c;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lc/d/a/b/f/c;->c()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lc/d/a/b/f/a;->b(I)V

    .line 2
    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lc/d/a/b/k/g;->c:Lc/d/a/b/k/g$b;

    .line 1
    new-instance v1, Lc/d/a/b/f/l;

    invoke-direct {v1, v0}, Lc/d/a/b/f/l;-><init>(Lc/d/a/b/f/a;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lc/d/a/b/f/a;->c(Landroid/os/Bundle;Lc/d/a/b/f/a$a;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-class v0, Lc/d/a/b/k/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lc/d/a/b/k/g;->c:Lc/d/a/b/k/g$b;

    .line 1
    iget-object v1, v0, Lc/d/a/b/f/a;->a:Lc/d/a/b/f/c;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lc/d/a/b/f/c;->d(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lc/d/a/b/f/a;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-object v0, p0, Lc/d/a/b/k/g;->c:Lc/d/a/b/k/g$b;

    .line 1
    new-instance v1, Lc/d/a/b/f/m;

    invoke-direct {v1, v0}, Lc/d/a/b/f/m;-><init>(Lc/d/a/b/f/a;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lc/d/a/b/f/a;->c(Landroid/os/Bundle;Lc/d/a/b/f/a$a;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lc/d/a/b/k/g;->c:Lc/d/a/b/k/g$b;

    .line 1
    iget-object v1, v0, Lc/d/a/b/f/a;->a:Lc/d/a/b/f/c;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lc/d/a/b/f/c;->a()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lc/d/a/b/f/a;->b(I)V

    .line 2
    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
