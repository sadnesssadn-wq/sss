.class public Lb/m/d/m$c;
.super Lb/m/d/v;
.source ""

# interfaces
.implements Lb/o/d0;
.implements Lb/a/c;
.implements Lb/a/e/d;
.implements Lb/m/d/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/m/d/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/m/d/v<",
        "Lb/m/d/m;",
        ">;",
        "Lb/o/d0;",
        "Lb/a/c;",
        "Lb/a/e/d;",
        "Lb/m/d/c0;"
    }
.end annotation


# instance fields
.field public final synthetic g:Lb/m/d/m;


# direct methods
.method public constructor <init>(Lb/m/d/m;)V
    .locals 0

    iput-object p1, p0, Lb/m/d/m$c;->g:Lb/m/d/m;

    invoke-direct {p0, p1}, Lb/m/d/v;-><init>(Lb/m/d/m;)V

    return-void
.end method


# virtual methods
.method public a(Lb/m/d/y;Landroidx/fragment/app/Fragment;)V
    .locals 0

    iget-object p1, p0, Lb/m/d/m$c;->g:Lb/m/d/m;

    invoke-virtual {p1, p2}, Lb/m/d/m;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public b(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lb/m/d/m$c;->g:Lb/m/d/m;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lb/m/d/m$c;->g:Lb/m/d/m;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object p2, p0, Lb/m/d/m$c;->g:Lb/m/d/m;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3, p4}, Lb/m/d/m;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/m/d/m$c;->g:Lb/m/d/m;

    return-object v0
.end method

.method public f()Landroid/view/LayoutInflater;
    .locals 2

    iget-object v0, p0, Lb/m/d/m$c;->g:Lb/m/d/m;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lb/m/d/m$c;->g:Lb/m/d/m;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public g(Landroidx/fragment/app/Fragment;)Z
    .locals 0

    iget-object p1, p0, Lb/m/d/m$c;->g:Lb/m/d/m;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;
    .locals 1

    iget-object v0, p0, Lb/m/d/m$c;->g:Lb/m/d/m;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object v0

    return-object v0
.end method

.method public getLifecycle()Lb/o/f;
    .locals 1

    iget-object v0, p0, Lb/m/d/m$c;->g:Lb/m/d/m;

    iget-object v0, v0, Lb/m/d/m;->mFragmentLifecycleRegistry:Lb/o/k;

    return-object v0
.end method

.method public getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;
    .locals 1

    iget-object v0, p0, Lb/m/d/m$c;->g:Lb/m/d/m;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public getViewModelStore()Lb/o/c0;
    .locals 1

    iget-object v0, p0, Lb/m/d/m$c;->g:Lb/m/d/m;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getViewModelStore()Lb/o/c0;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lb/m/d/m$c;->g:Lb/m/d/m;

    invoke-static {v0, p1}, Lb/i/e/a;->g(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lb/m/d/m$c;->g:Lb/m/d/m;

    invoke-virtual {v0}, Lb/m/d/m;->supportInvalidateOptionsMenu()V

    return-void
.end method
